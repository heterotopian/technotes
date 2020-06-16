
================
``git ls-files``
================

.. highlight:: console

.. include:: ../substitute.rst

- `Documentation <https://git-scm.com/docs/git-ls-files>`_

Cached files::

    $ git ls-files

Cached files under ``foo/bar``::

    $ git ls-files foo/bar

Untracked files::

    $ git ls-files -o

Untracked files that are ignored::

    $ git ls-files -o -i --exclude-standard
