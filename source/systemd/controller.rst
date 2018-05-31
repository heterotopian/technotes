.. _systemd_controller:

Controlers
==========

`busctl <https://www.freedesktop.org/software/systemd/man/busctl.html>`_
------------------------------------------------------------------------


`journalctl <https://www.freedesktop.org/software/systemd/man/journalctl.html>`_
--------------------------------------------------------------------------------


`localectl <https://www.freedesktop.org/software/systemd/man/localectl.html>`_
------------------------------------------------------------------------------


`loginctl <https://www.freedesktop.org/software/systemd/man/loginctl.html>`_
----------------------------------------------------------------------------


`machinectl <https://www.freedesktop.org/software/systemd/man/machinectl.html>`_
--------------------------------------------------------------------------------


`timedatectl <https://www.freedesktop.org/software/systemd/man/timedatectl.html>`_
----------------------------------------------------------------------------------


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
