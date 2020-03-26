
=========
systemctl
=========

.. highlight:: console

- `Documentation <http://0pointer.de/public/systemd-man/systemctl.html>`_

List active units::

    $ systemctl list-units

List loaded units::

    $ systemctl list-units -a

List active service units::

    $ systemctl list-units -t service

List unit files::

    $ systemctl list-unit-files

Check if unit is running::

    $ systemctl is-active unit
