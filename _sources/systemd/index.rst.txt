.. include:: <isoamsa.txt>

.. _systemd:

=======
Systemd
=======

.. highlight:: console

Documentation
=============

- `Project homepage <https://www.freedesktop.org/wiki/Software/systemd/>`_

:systemd:`Manpages <systemd.index>`
-----------------------------------

- :systemd:`Directives <systemd.directives>`
- :systemd:`Unit configuration <systemd.unit>`

  - .. rubric:: Mapping of unit properties to their inverses

    Unit settings that create a relationship with a second unit usually show up in properties of both units, for example in systemctl show output.
    In some cases the name of the property is the same as the name of the configuration setting, but not always.
    This table lists the properties that are shown on two units which are connected through some dependency, and shows which property on "source" unit corresponds to which property on the "target" unit.

    ========================= =====================
    Forward property          Reverse property
    ========================= =====================
    ``Before=``               ``After=``
    ``After=``                ``Before=``
    ``Requires=``             ``RequiredBy=``
    ``Wants=``                ``WantedBy=``
    ``PartOf=``               ``ConsistsOf=``
    ``BindsTo=``              ``BoundBy=``
    ``Requisite=``            ``RequisiteOf=``
    ``Triggers=``             ``TriggeredBy=``
    ``Conflicts=``            ``ConflictedBy=``
    ``PropagatesReloadTo=``   ``ReloadPropagatedFrom=``
    ``ReloadPropagatedFrom=`` ``PropagatesReloadTo=``
    ``Following=``            n/a
    ========================= =====================

- :systemd:`Execution environment configuration <systemd.exec>`

  - .. rubric:: Environment Variables in Spawned Processes

    Processes started by the service manager are executed with an environment variable block assembled from multiple sources.
    Processes started by the system service manager generally do not inherit environment variables set for the service manager itself (but this may be altered via PassEnvironment=), but processes started by the user service manager instances generally do inherit all environment variables set for the service manager itself.

    For each invoked process the list of environment variables set is compiled from the following sources:

    - Variables globally configured for the service manager, using the ``DefaultEnvironment=`` setting in **systemd-system.conf(5)**, the kernel command line option ``systemd.setenv=`` understood by **systemd(1)**, or via **systemctl(1)** ``set-environment`` verb.

    - Variables defined by the service manager itself (see the list below).

    - Variables set in the service manager's own environment variable block (subject to ``PassEnvironment=`` for the system service manager).

    - Variables set via ``Environment=`` in the unit file.

    - Variables read from files specified via ``EnvironmentFile=`` in the unit file.

    - Variables set by any PAM modules in case ``PAMName=`` is in effect, cf. **pam_env(8)**.

    If the same environment variable is set by multiple of these sources, the later source — according to the order of the list above — wins.
    Note that as the final step all variables listed in ``UnsetEnvironment=`` are removed from the compiled environment variable list, immediately before it is passed to the executed process.

    The general philosophy is to expose a small curated list of environment variables to processes.
    Services started by the system manager (PID 1) will be started, without additional service-specific configuration, with just a few environment variables.
    The user manager inherits environment variables as any other system service, but in addition may receive additional environment variables from PAM, and, typically, additional imported variables when the user starts a graphical session.
    It is recommended to keep the environment blocks in both the system and user managers lean.
    Importing all variables inherited by the graphical session or by one of the user shells is strongly discouraged.

    Hint: ``systemd-run -P env`` and ``systemd-run --user -P env`` print the effective system and user service environment blocks.

  - .. rubric:: Environment Variables Set or Propagated by the Service Manager

    The following environment variables are propagated by the service manager or generated internally for each invoked process:

    :envvar:`PATH`
      Colon-separated list of directories to use when launching executables.
      systemd uses a fixed value of ``/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin`` in the system manager.
      When compiled for systems with "unmerged /usr/" (``/bin`` is not a symlink to ``/usr/bin``), ``:/sbin:/bin`` is appended.
      In case of the user manager, a different path may be configured by the distribution.
      It is recommended to not rely on the order of entries, and have only one program with a given name in :envvar:`PATH`.

    :envvar:`LANG`
      Locale. Can be set in ``locale.conf(5)`` or on the kernel command line (see ``systemd(1)`` and ``kernel-command-line(7)``).

    :envvar:`USER`, :envvar:`LOGNAME`, :envvar:`HOME`, :envvar:`SHELL`
      User name (twice), home directory, and the login shell.
      The variables are set for the units that have ``User=`` set, which includes user systemd instances.
      See **passwd(5)**.

    :envvar:`INVOCATION_ID`
      Contains a randomized, unique 128bit ID identifying each runtime cycle of the unit, formatted as 32 character hexadecimal string.
      A new ID is assigned each time the unit changes from an inactive state into an activating or active state, and may be used to identify this specific runtime cycle, in particular in data stored offline, such as the journal.
      The same ID is passed to all processes run as part of the unit.

    :envvar:`XDG_RUNTIME_DIR`
      The directory to use for runtime objects (such as IPC objects) and volatile state.
      Set for all services run by the user systemd instance, as well as any system services that use ``PAMName=`` with a PAM stack that includes **pam_systemd**.
      See below and **pam_systemd(8)** for more information.

    :envvar:`RUNTIME_DIRECTORY`, :envvar:`STATE_DIRECTORY`, :envvar:`CACHE_DIRECTORY`, :envvar:`LOGS_DIRECTORY`, :envvar:`CONFIGURATION_DIRECTORY`
      Absolute paths to the directories defined with ``RuntimeDirectory=``, ``StateDirectory=``, ``CacheDirectory=``, ``LogsDirectory=``, and ``ConfigurationDirectory=`` when those settings are used.

    :envvar:`CREDENTIALS_DIRECTORY`
      An absolute path to the per-unit directory with credentials configured via ``LoadCredential=``/``SetCredential=``.
      The directory is marked read-only and is placed in unswappable memory (if supported and permitted), and is only accessible to the UID associated with the unit via ``User=`` or ``DynamicUser=`` (and the superuser).

    :envvar:`MAINPID`
      The PID of the unit's main process if it is known.
      This is only set for control processes as invoked by ``ExecReload=`` and similar.

    :envvar:`MANAGERPID`
      The PID of the user systemd instance, set for processes spawned by it.

    :envvar:`LISTEN_FDS`, :envvar:`LISTEN_PID`, :envvar:`LISTEN_FDNAMES`
      Information about file descriptors passed to a service for socket activation.
      See **sd_listen_fds(3)**.

    :envvar:`NOTIFY_SOCKET`
      The socket ``sd_notify()`` talks to.
      See **sd_notify(3)**.

    :envvar:`WATCHDOG_PID`, :envvar:`WATCHDOG_USEC`
      Information about watchdog keep-alive notifications.
      See **sd_watchdog_enabled(3)**.

    :envvar:`SYSTEMD_EXEC_PID`
      The PID of the unit process (e.g. process invoked by ``ExecStart=``).
      The child process can use this information to determine whether the process is directly invoked by the service manager or indirectly as a child of another process by comparing this value with the current PID (as similar to the scheme used in **sd_listen_fds(3)** with :envvar:`LISTEN_PID` and :envvar:`LISTEN_FDS`).

    :envvar:`TERM`
      Terminal type, set only for units connected to a terminal (``StandardInput=tty``, ``StandardOutput=tty``, or ``StandardError=tty``).
      See **termcap(5)**.

    :envvar:`LOG_NAMESPACE`
      Contains the name of the selected logging namespace when the ``LogNamespace=`` service setting is used.

    :envvar:`JOURNAL_STREAM`
      If the standard output or standard error output of the executed processes are connected to the journal (for example, by setting ``StandardError=journal``) :envvar:`JOURNAL_STREAM` contains the device and inode numbers of the connection file descriptor, formatted in decimal, separated by a colon (":").
      This permits invoked processes to safely detect whether their standard output or standard error output are connected to the journal.
      The device and inode numbers of the file descriptors should be compared with the values set in the environment variable to determine whether the process output is still connected to the journal.
      Note that it is generally not sufficient to only check whether :envvar:`JOURNAL_STREAM` is set at all as services might invoke external processes replacing their standard output or standard error output, without unsetting the environment variable.

      If both standard output and standard error of the executed processes are connected to the journal via a stream socket, this environment variable will contain information about the standard error stream, as that's usually the preferred destination for log data. (Note that typically the same stream is used for both standard output and standard error, hence very likely the environment variable contains device and inode information matching both stream file descriptors.)

      This environment variable is primarily useful to allow services to optionally upgrade their used log protocol to the native journal protocol (using **sd_journal_print(3)** and other functions) if their standard output or standard error output is connected to the journal anyway, thus enabling delivery of structured metadata along with logged messages.

    :envvar:`SERVICE_RESULT`
      Only defined for the service unit type, this environment variable is passed to all ``ExecStop=`` and ``ExecStopPost=`` processes, and encodes the service "result".
      Currently, the following values are defined:

      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | Value             | Meaning                                                                                                                                                                  |
      +===================+==========================================================================================================================================================================+
      | "success"         | The service ran successfully and exited cleanly.                                                                                                                         |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "protocol"        | A protocol violation occurred: the service did not take the steps required by its unit configuration (specifically what is configured in its Type= setting).             |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "timeout"         | One of the steps timed out.                                                                                                                                              |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "exit-code"       | Service process exited with a non-zero exit code; see $EXIT_CODE below for the actual exit code returned.                                                                |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "signal"          | A service process was terminated abnormally by a signal, without dumping core. See $EXIT_CODE below for the actual signal causing the termination.                       |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "core-dump"       | A service process terminated abnormally with a signal and dumped core. See $EXIT_CODE below for the signal causing the termination.                                      |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "watchdog"        | Watchdog keep-alive ping was enabled for the service, but the deadline was missed.                                                                                       |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "start-limit-hit" | A start limit was defined for the unit and it was hit, causing the unit to fail to start. See systemd.unit(5)'s StartLimitIntervalSec= and StartLimitBurst= for details. |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
      | "resources"       | A catch-all condition in case a system operation failed.                                                                                                                 |
      +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

      This environment variable is useful to monitor failure or successful termination of a service.
      Even though this variable is available in both ``ExecStop=`` and ``ExecStopPost=``, it is usually a better choice to place monitoring tools in the latter, as the former is only invoked for services that managed to start up correctly, and the latter covers both services that failed during their start-up and those which failed during their runtime.

    :envvar:`EXIT_CODE`, :envvar:`EXIT_STATUS`
      Only defined for the service unit type, these environment variables are passed to all ``ExecStop=``, ``ExecStopPost=`` processes and contain exit status/code information of the main process of the service.
      For the precise definition of the exit code and status, see **wait(2)**.
      :envvar:`EXIT_CODE` is one of "exited", "killed", "dumped".
      :envvar:`EXIT_STATUS` contains the numeric exit code formatted as string if :envvar:`EXIT_CODE` is "exited", and the signal name in all other cases.
      Note that these environment variables are only set if the service manager succeeded to start and identify the main process of the service.

      Summary of possible service result variable values:

      +--------------------+-------------------------------+-------------------------------+
      | $SERVICE_RESULT    | $EXIT_CODE                    | $EXIT_STATUS                  |
      +====================+===============================+===============================+
      | "success"          | "killed"                      | "HUP", "INT", "TERM", "PIPE"  |
      +--------------------+-------------------------------+-------------------------------+
      | "exited"           | "0"                           |                               |
      +--------------------+-------------------------------+-------------------------------+
      | "protocol"         | not set                       | not set                       |
      +--------------------+-------------------------------+-------------------------------+
      | "exited"           | "0"                           |                               |
      +--------------------+-------------------------------+-------------------------------+
      | "timeout"          | "killed"                      | "TERM", "KILL"                |
      +--------------------+-------------------------------+-------------------------------+
      | "exited"           | "0", "1", "2", "3", …, "255"  |                               |
      +--------------------+-------------------------------+-------------------------------+
      | "exit-code"        | "exited"                      | "1", "2", "3", …, "255"       |
      +--------------------+-------------------------------+-------------------------------+
      | "signal"           | "killed"                      | "HUP", "INT", "KILL", …       |
      +--------------------+-------------------------------+-------------------------------+
      | "core-dump"        | "dumped"                      | "ABRT", "SEGV", "QUIT", …     |
      +--------------------+-------------------------------+-------------------------------+
      | "watchdog"         | "dumped"                      | "ABRT"                        |
      +--------------------+-------------------------------+-------------------------------+
      | "killed"           | "TERM", "KILL"                |                               |
      +--------------------+-------------------------------+-------------------------------+
      | "exited"           | "0", "1", "2", "3", …, "255"  |                               |
      +--------------------+-------------------------------+-------------------------------+
      | "exec-condition"   | "exited"                      | "1", "2", "3", "4", …, "254"  |
      +--------------------+-------------------------------+-------------------------------+
      | "oom-kill"         | "killed"                      | "TERM", "KILL"                |
      +--------------------+-------------------------------+-------------------------------+
      | "start-limit-hit"  | not set                       | not set                       |
      +--------------------+-------------------------------+-------------------------------+
      | "resources"        | any of the above              | any of the above              |
      +--------------------+-------------------------------+-------------------------------+

      Note: the process may be also terminated by a signal not sent by systemd.
      In particular the process may send an arbitrary signal to itself in a handler for any of the non-maskable signals.
      Nevertheless, in the "timeout" and "watchdog" rows above only the signals that systemd sends have been included.
      Moreover, using ``SuccessExitStatus=`` additional exit statuses may be declared to indicate clean termination, which is not reflected by this table.

    :envvar:`PIDFILE`
      The path to the configured PID file, in case the process is forked off on behalf of a service that uses the ``PIDFile=`` setting, see **systemd.service(5)** for details. Service code may use this environment variable to automatically generate a PID file at the location configured in the unit file. This field is set to an absolute path in the file system.

    For system services, when ``PAMName=`` is enabled and **pam_systemd** is part of the selected PAM stack, additional environment variables defined by systemd may be set for services.
    Specifically, these are :envvar:`XDG_SEAT`, :envvar:`XDG_VTNR`, see **pam_systemd(8)** for details.




Examples
========

.. todo::

    Improve or remove this section

Process |xrArr| Service |xrArr| CGroup::

    $ pgrep -u cstevens -f gnome-terminal
    187072

::

    $ systemctl status 187072
    ● user@641738498.service - User Manager for UID 641738498
         Loaded: loaded (/lib/systemd/system/user@.service; static; vendor preset: enabled)
        Drop-In: /lib/systemd/system/user@.service.d
                 └─timeout.conf
         Active: active (running) since Tue 2021-10-26 08:48:31 EDT; 3 weeks 0 days ago
           Docs: man:user@.service(5)
       Main PID: 185899 (systemd)
         Status: "Startup finished in 1.054s."
          Tasks: 320
         Memory: 2.5G
         CGroup: /user.slice/user-641738498.slice/user@641738498.service
                 ├─apps.slice
                 │ └─apps-org.gnome.Terminal.slice
                 │   ├─gnome-terminal-server.service
                 │   │ └─187072 /usr/libexec/gnome-terminal-server
                 │   └─vte-spawn-3ebe7ad4-9463-4b7d-b374-cb53b8058dbf.scope
                 │     ├─   4089 -bash
                 │     ├─   4503 ssh -X bos-rndapp04

::

    $ systemctl show user@641738498.service -p ControlGroup
    ControlGroup=/user.slice/user-641738498.slice/user@641738498.service



Commands
========

.. toctree::
    :maxdepth: 1
    :glob:

    command/*



Controllers
===========

.. toctree::
    :maxdepth: 1
    :glob:

    controller/*
