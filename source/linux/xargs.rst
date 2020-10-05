
=====
xargs
=====

.. highlight:: console

.. note::

    Always use ``-r``

Run a separate command for each item::

    $ env | xargs -r -L1 echo

Read input from ``find``::

    $ find -print0 | xargs -r -0 file

Invoke a shell command::

    $ find -print0 | xargs -r -0 bash -c 'file $@' _

Invoke a separate shell command for each item::

    $ find -print0 | xargs -r -0 -L1 bash -c 'file $1' _

Options
=======

-0, --null
  Input items are terminated by a null character instead of whitespace, quotes and backslash are not special

-L max-lines
  Use at most max-lines input lines per command

-r, --no-run-if-empty
  Don't run command if there aren't any input lines
