.. _git:

===
Git
===

.. highlight:: console


General
=======



Commands
========

- List all files under source control on |master| ::

    $ git ls-tree -r --name-only master

- Create local branch tracking ``origin/branch`` ::

    $ git checkout --track origin/branch


Diffing
-------

- |HEAD| and commit before |HEAD| ::

    $ git diff HEAD^ HEAD
    $ git diff HEAD^..HEAD
    $ git diff @^ @
    $ git diff @^..@
    $ git show

- |master| and current branch::

    $ git log master..HEAD -p

- ``file.rst`` from |HEAD| and commit before |HEAD| ::

    $ git diff @:file.rst @^1:file.rst



Terms
=====

@
    Shorthand for |HEAD|
    (`release notes <https://github.com/git/git/blob/v1.8.5/Documentation/RelNotes/1.8.5.txt#L100-101>`_)

tree-ish
    Any identifier that leads to a (sub)directory tree
    (`specifying revisions <https://www.kernel.org/pub/software/scm/git/docs/gitrevisions.html#_specifying_revisions>`_)



Resources
=========

- `GitHub Flow <https://guides.github.com/introduction/flow/>`_ -
  A lightweight, branch-based workflow that supports teams and projects where deployments are made regularly
- `Pro Git <https://git-scm.com/book/en/v2>`_ -
  eBook by Scott Chacon.
  Content maintained in `progit/progit2 <https://github.com/progit/progit2>`_.

  - `Rebasing <https://git-scm.com/book/en/v2/Git-Branching-Rebasing>`_



.. |HEAD| replace:: ``HEAD``
.. |master| replace:: ``master``
