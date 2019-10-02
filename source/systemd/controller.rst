.. _systemd_controller:

===========
Controllers
===========

.. highlight:: console

`busctl <https://www.freedesktop.org/software/systemd/man/busctl.html>`_
========================================================================


`journalctl <https://www.freedesktop.org/software/systemd/man/journalctl.html>`_
================================================================================

Supports tab completion on field names::

    $ journalctl _G<TAB>

Customizing Output
------------------

Fit output to terminal::

    $ journalctl --no-full

Disable pager::

    $ journalctl --no-pager


`Output Format <https://www.freedesktop.org/software/systemd/man/journalctl.html#-o>`_
--------------------------------------------------------------------------------------

::

    $ journalctl -o FORMAT

Options:
    ``short``
    ``short-full``
    ``short-iso``
    ``short-iso-precise``
    ``short-precise``
    ``short-monotonic``
    ``short-unix``
    ``verbose``
    ``export``
    ``json``
    ``json-pretty``
    ``json-sse``
    ``json-seq``
    ``cat``
    ``with-unit``


`localectl <https://www.freedesktop.org/software/systemd/man/localectl.html>`_
==============================================================================


`loginctl <https://www.freedesktop.org/software/systemd/man/loginctl.html>`_
============================================================================


`machinectl <https://www.freedesktop.org/software/systemd/man/machinectl.html>`_
================================================================================


`timedatectl <https://www.freedesktop.org/software/systemd/man/timedatectl.html>`_
==================================================================================


`systemctl <http://0pointer.de/public/systemd-man/systemctl.html>`_
===================================================================

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
