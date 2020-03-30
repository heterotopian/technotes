
========
``diff``
========

.. highlight:: console

- `Documentation <https://git-scm.com/docs/git-diff>`_

Only changes (no context, no diff markers)::

    $ git diff --unified=0 --color-words | grep -P -v "^[\x03-\x1F]"
