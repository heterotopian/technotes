
=========
systemctl
=========

.. highlight:: console

:systemd:`systemctl`

General
=======

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


Environment
===========
