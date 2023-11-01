
=====
watch
=====

.. highlight:: console

Execute a program periodically and display its output.

.. warning::

    Shell aliases are difficult to use with ``watch``, steer clear.

Simple command::

    $ watch wc -l foo/\*

Use bash in command::

    $ watch -x bash -cl "find foo/ -exec wc -l {} \;"



Options
=======

-d, --differences

    Highlight the differences between successive updates.
    Option will read optional argument that changes highlight to be permanent, allowing to see what has changed at least once since first iteration.

-g, --chgexit

    Exit when the output of command changes.

-n, --interval seconds

    Specify update interval.
    The command will not allow quicker than 0.1 second interval, in which the smaller values are converted.
    Both ``.`` and ``,`` work for any locales.
    The :envvar:`WATCH_INTERVAL` environment can be used to persistently set a non-default interval (following the same rules and formatting).

-x, --exec

    Pass command to ``exec`` instead of ``sh -c`` which reduces the need to use extra quoting to get the desired effect.
