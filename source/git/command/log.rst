
=======
git log
=======

.. highlight:: console

.. include:: ../substitute.rst

- `Documentation <https://git-scm.com/docs/git-diff>`_

  - `Generating patch text with -p`_

Selecting Commits
=================

Commits between |tag-v1| and |head|::

    $ git log v1.0..HEAD

Diff between |tag-v1| and |head| in `patch format <Generating patch text with -p_>`_::

    $ git log v1.0..HEAD -p



Formatting Output
=================

Parent hashes + commit hash::

    $ git log --format="%P %H"
    $ git log --format="%P %H" | xargs -r -L1 git diff   # Diff every commit against its parent(s)



.. _Generating patch text with -p: https://git-scm.com/docs/diff-generate-patch/
