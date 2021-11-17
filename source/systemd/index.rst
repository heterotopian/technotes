.. include:: <isoamsa.txt>

.. _systemd:

=======
Systemd
=======

.. highlight:: console

Documentation
=============

- `Project homepage <https://www.freedesktop.org/wiki/Software/systemd/>`_

- :systemd:`Manpages <systemd.index>`

  - :systemd:`Directives <systemd.directives>`
  - :systemd:`Unit configuration <systemd.unit>`

    - Mapping of unit properties to their inverses

  - :systemd:`Execution environment configuration <systemd.exec>`

    - Environment varialbes in spawned processes



Examples
========

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
    controller/*
