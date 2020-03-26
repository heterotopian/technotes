
==========
journalctl
==========

.. highlight:: console

- `Documentation <https://www.freedesktop.org/software/systemd/man/journalctl.html>`_


Supports tab completion on field names::

    $ journalctl _G<TAB>

Selecting Messages
==================

Since/before date::

    $ journalctl --since='2010-01-01 08:00:00'
    $ journalctl --until='2010-01-01 08:00:00'



Formatting Output
=================

Fit output to terminal::

    $ journalctl --no-full

Disable pager::

    $ journalctl --no-pager


Format::

    $ journalctl -o FORMAT

`Options <https://www.freedesktop.org/software/systemd/man/journalctl.html#-o>`_
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
