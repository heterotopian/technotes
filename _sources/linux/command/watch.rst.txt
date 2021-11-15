
=====
watch
=====

.. highlight:: console

Execute a program periodically, showing output fullscreen.

Simple command::

    $ watch wc -l foo/\*

Use bash in command::

    $ watch -x bash -cl "find foo/ -exec wc -l {} \;"



Options
=======

-d, --differences
  Highlight the differences between successive updates.
  Option will read optional argument that changes highlight to be permanent, allowing to see what has  changed  at  least  once since first iteration.

-g, --chgexit
  Exit when the output of command changes.

-x, --exec
  Pass command to exec(2) instead of sh -c which reduces the need to use extra quoting to get the desired effect.
