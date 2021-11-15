
========
git push
========

.. highlight:: console

.. include:: ../substitute.rst

- `Documentation <https://git-scm.com/docs/git-push>`_

Push tags to |origin|::

    $ git push origin --tags

Delete |branch-foo| from |origin|::

    $ git push origin --delete foo
    $ git push origin :foo

Delete |tag-v1| from |origin|::

    $ git push origin --delete refs/tags/v1.0
    $ git push origin :refs/tags/v1.0
