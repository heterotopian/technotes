
=====
xargs
=====

.. highlight:: console

.. note::

    Always use ``-r`` for easier handling of empty input

Read input from ``find``::

    $ find -print0 | xargs -r -0 file

Invoke a shell command::

    $ find -print0 | xargs -r -0 bash -c 'file $@' _

Run a separate command for each **argument**::

    $ env | xargs -r -n1 echo

Run a separate command for each **input line**::

    $ git log --format="%P %H" | xargs -r -L1 git diff



Options
=======

-0, --null
  Input items are terminated by a null character instead of whitespace, quotes and backslash are not special

--delimiter=delim, -d delim
  Input items are terminated by the specified character

-L max-lines
  Use at most max-lines (non-blank) input lines per command

-n max-args, --max-args=max-args
  Use at most max-args arguments per command

-r, --no-run-if-empty
  Only run command if there are non-blank input lines
