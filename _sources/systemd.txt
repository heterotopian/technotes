.. _systemd:

=======
systemd
=======

General
=======

- `Project homepage <https://www.freedesktop.org/wiki/Software/systemd/>`_

`Manpages <http://0pointer.de/public/systemd-man/>`_
====================================================

- `systemd.directives <http://0pointer.de/public/systemd-man/systemd.directives.html>`_ -
  Index of configuration directives
- `systemd-socket-proxyd <http://0pointer.de/public/systemd-man/systemd-socket-proxyd.html>`_ -
  Bidirectionally proxy local sockets to another (possibly remote) socket.



Controlers
==========

`busctl <https://www.freedesktop.org/software/systemd/man/busctl.html>`_
------------------------------------------------------------------------


`systemctl <http://0pointer.de/public/systemd-man/systemctl.html>`_
-------------------------------------------------------------------

- List active units::

    $ systemctl list-units

- List loaded units::

    $ systemctl list-units -a

- List active service units::

    $ systemctl list-units -t service

- List unit files::

    $ systemctl list-unit-files


journalctl
----------


loginctl
--------


machinectl
----------


timedatectl
-----------


localectl
---------
