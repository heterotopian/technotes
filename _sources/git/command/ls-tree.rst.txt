
===============
``git ls-tree``
===============

.. highlight:: console

.. include:: ../substitute.rst

- `Documentation <https://git-scm.com/docs/git-ls-tree>`_

Files in tree identified by |tag-v1| at the top level::

    $ git ls-tree --name-only tags/v1.0

Files in tree identified by |tag-v1| at all levels::

    $ git ls-tree --name-only tags/v1.0 -r

Files in tree identified by |tag-v1| in path ``foo/bar`` at all levels::

    $ git ls-tree --name-only tags/v1.0 foo/bar -r
