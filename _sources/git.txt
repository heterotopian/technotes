.. _git:

===
Git
===

.. highlight:: console


General
=======

- `Project homepage <https://git-scm.com>`_

  - `Reference manual <https://git-scm.com/docs>`_ -
    Git man pages

    - `ls-files <https://git-scm.com/docs/git-ls-files>`_
    - `ls-tree <https://git-scm.com/docs/git-ls-tree>`_

  - `Pro Git <https://git-scm.com/book/en/v2>`_ -
    eBook by Scott Chacon (Source: `progit/progit2 <https://github.com/progit/progit2>`_)

    - `Rebasing <https://git-scm.com/book/en/v2/Git-Branching-Rebasing>`_

- Cheetsheats

  - `PDF cheatsheet <https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf>`_ by GitHub
  - `Interactive HTML cheatsheet <http://ndpsoftware.com/git-cheatsheet.html>`_




Commands
========

Listing files
-------------

Working tree
~~~~~~~~~~~~

- List cached files under cwd ::

    $ git ls-files -c

- List untracked files under cwd ::

    $ git ls-files -o

- List cached files under ``foo/bar`` ::

    $ git ls-files -c foo/bar


Indexed trees
~~~~~~~~~~~~~

- List files in tree identified by |v1.0| tag at the top level ::

    $ git ls-tree --name-only tags/v1.0

- List files in tree identified by |v1.0| tag at all levels ::

    $ git ls-tree --name-only tags/v1.0 -r

- List files in tree identified by |v1.0| tag in path ``foo/bar`` at all levels ::

    $ git ls-tree --name-only tags/v1.0 foo/bar -r



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

commit-ish
    Any object that leads to a commit, e.g.:
    a commit, a tag pointing to a commit, a tag pointing to a tag ... pointing to a commit.
    (`Source <https://git-scm.com/docs/gitglossary#gitglossary-aiddefcommit-ishacommit-ishalsocommittish>`_)

tree-ish
    Any object that contains a list of file names and modes along with refs to the associated blob and/or tree objects.
    Equivalent to a directory.
    (`Source <https://git-scm.com/docs/gitglossary#gitglossary-aiddeftree-ishatree-ishalsotreeish>`_)




Resources
=========

- `GitHub Flow <https://guides.github.com/introduction/flow/>`_ -
  A lightweight, branch-based workflow that supports teams and projects where deployments are made regularly
- `Changing author info <https://help.github.com/articles/changing-author-info/>`_ -
  Script for updating any commits with matching user/email fields




.. |HEAD| replace:: ``HEAD``
.. |master| replace:: ``master``
.. |v1.0| replace:: ``v1.0``
