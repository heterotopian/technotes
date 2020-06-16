
===========
``git log``
===========

.. highlight:: console

.. include:: ../substitute.rst

- `Documentation <https://git-scm.com/docs/git-diff>`_

  - `Generating patch text with -p <https://git-scm.com/docs/diff-generate-patch/>`_

Commits between |tag-v1| and |head|::

    $ git log v1.0..HEAD

Diff between |tag-v1| and |head|::

    $ git log v1.0..HEAD -p
