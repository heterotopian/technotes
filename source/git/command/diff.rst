
========
git diff
========

.. highlight:: console

.. include:: ../substitute.rst

- `Documentation <https://git-scm.com/docs/git-diff>`_

  - `Generating patch text with -p <https://git-scm.com/docs/diff-generate-patch/>`_

Diff |head-1| and |head|::

    $ git diff HEAD^ HEAD
    $ git diff HEAD^..HEAD
    $ git diff @^ @
    $ git diff @^..@

Diff ``file.txt`` from |head-1| and |head|::

    $ git diff HEAD^ HEAD -- file.txt
    $ git diff HEAD^..HEAD -- file.txt
    $ git diff @^ @ -- file.txt
    $ git diff @^..@ -- file.txt

Just changes (no context, no diff markers)::

    $ git diff --unified=0 --color-words | grep -P -v "^[\x03-\x1F]\[(1|36)m"
