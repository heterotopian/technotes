
==========
journalctl
==========

.. highlight:: console

:systemd:`journalctl`

General
=======

Perform tab completion on field names::

    $ journalctl _<TAB>
    _AUDIT_FIELD_APPARMOR=        _AUDIT_FIELD_REQUESTED_MASK=  _CAP_EFFECTIVE=               _MACHINE_ID=                  _SYSTEMD_INVOCATION_ID=       _TRANSPORT=
    _AUDIT_FIELD_DENIED_MASK=     _AUDIT_ID=                    _CMDLINE=                     _PID=                         _SYSTEMD_OWNER_UID=           _UID=
    _AUDIT_FIELD_INFO=            _AUDIT_LOGINUID=              _COMM=                        _SELINUX_CONTEXT=             _SYSTEMD_SESSION=
    _AUDIT_FIELD_NAME=            _AUDIT_SESSION=               _EXE=                         _SOURCE_MONOTONIC_TIMESTAMP=  _SYSTEMD_SLICE=
    _AUDIT_FIELD_OPERATION=       _AUDIT_TYPE=                  _FSUID=                       _SOURCE_REALTIME_TIMESTAMP=   _SYSTEMD_UNIT=
    _AUDIT_FIELD_OUID=            _AUDIT_TYPE_NAME=             _GID=                         _STREAM_ID=                   _SYSTEMD_USER_SLICE=
    _AUDIT_FIELD_PROFILE=         _BOOT_ID=                     _HOSTNAME=                    _SYSTEMD_CGROUP=              _SYSTEMD_USER_UNIT=

.. note::

    Not automatically enabled for all users (superusers, service accounts).
    To enable::

        $ source /usr/share/bash-completion/completions/journalctl



Selecting Messages
==================

Since datetime::

    $ journalctl --since='2010-01-01 08:00:00'

Until datetime::

    $ journalctl --until='2010-01-01 08:00:00'

Filter on field value::

    $ journalctl _UID=12345



Output Formatting
=================

Show timestamps with microsecond precision::

    $ journalctl -o short-precise

Format messages as JSON::

    $ journalctl -o json

.. seealso::

    `Supported output formats <https://www.freedesktop.org/software/systemd/man/journalctl.html#-o>`_

    |short|
    |short-full|
    |short-iso|
    |short-iso-precise|
    |short-precise|
    |short-monotonic|
    |short-unix|
    |verbose|
    |export|
    |json|
    |json-pretty|
    |json-sse|
    |json-seq|
    |cat|
    |with-unit|



Options
=======

-o, --output
    Specify output format.

--no-full, --full, -l
    Ellipsize fields when they do not fit in available columns.
    The default is to show full fields, allowing them to wrap or be truncated by the pager, if one is used.

--no-pager
    Do not pipe output into a pager.



.. |short|             replace:: ``short``
.. |short-full|        replace:: ``short-full``
.. |short-iso|         replace:: ``short-iso``
.. |short-iso-precise| replace:: ``short-iso-precise``
.. |short-precise|     replace:: ``short-precise``
.. |short-monotonic|   replace:: ``short-monotonic``
.. |short-unix|        replace:: ``short-unix``
.. |verbose|           replace:: ``verbose``
.. |export|            replace:: ``export``
.. |json|              replace:: ``json``
.. |json-pretty|       replace:: ``json-pretty``
.. |json-sse|          replace:: ``json-sse``
.. |json-seq|          replace:: ``json-seq``
.. |cat|               replace:: ``cat``
.. |with-unit|         replace:: ``with-unit``
