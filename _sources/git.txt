.. _git:

===
Git
===

.. highlight:: console

Commands
========

- List all files under source control on |master| ::

    $ git ls-tree -r --name-only master

- Create local branch tracking ``origin/branch`` ::

    $ git checkout --track origin/branch


Diffing
-------

- Diff |HEAD| and commit before |HEAD| ::

    $ git diff HEAD^ HEAD
    $ git diff HEAD^..HEAD
    $ git diff @^ @
    $ git diff @^..@
    $ git show

- Diff |master| and current branch::

    $ git log master..HEAD -p

- Diff ``file.rst`` from |HEAD| and commit before |HEAD| ::

    $ git diff @:file.rst @^1:file.rst


Terms
=====

@
    Shorthand for |HEAD|
    (`release notes <https://github.com/git/git/blob/v1.8.5/Documentation/RelNotes/1.8.5.txt#L100-101>`_)

tree-ish
    Any identifier that leads to a (sub)directory tree
    (`specifying revisions <https://www.kernel.org/pub/software/scm/git/docs/gitrevisions.html#_specifying_revisions>`_)


.. |HEAD| replace:: ``HEAD``
.. |master| replace:: ``master``
