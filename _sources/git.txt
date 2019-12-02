.. _git:

===
Git
===

.. highlight:: console

`Documentation <https://git-scm.com/docs>`_
===========================================

- Commands:

  - `ls-files <https://git-scm.com/docs/git-ls-files>`_
  - `ls-tree <https://git-scm.com/docs/git-ls-tree>`_

- `Pro Git <https://git-scm.com/book/en/v2>`_ -
  second edition by Scott Chacon and Ben Straub
  (`source <https://github.com/progit/progit2>`_)

  - `Rebasing <https://git-scm.com/book/en/v2/Git-Branching-Rebasing>`_

- `Specifying revisions <https://mirrors.edge.kernel.org/pub/software/scm/git/docs/gitrevisions.html#_specifying_revisions>`_



Resources
=========

- `What are commit-ish and tree-ish in Git? <https://stackoverflow.com/questions/23303549/what-are-commit-ish-and-tree-ish-in-git>`_
- `Keeping a fork up to date <https://philna.sh/blog/2018/08/21/git-commands-to-keep-a-fork-up-to-date/>`_
- `Changing author info <https://help.github.com/articles/changing-author-info/>`_ -
  Script for updating any commits with matching user/email fields

Cheat sheets
------------

- GitHub: `Git cheat sheet <https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf>`_
- `Git command visualizer <http://ndpsoftware.com/git-cheatsheet.html>`_ -
  Groups commands by subject


Workflows
---------

- `GitHub Flow <https://guides.github.com/introduction/flow/>`_ -
  A lightweight, branch-based workflow that supports teams and projects where deployments are made regularly


Humor
-----

- `Git man page generator <https://git-man-page-generator.lokaltog.net/>`_ -
  Generate fake documentation



Terms
=====

@
    Shorthand for |HEAD|
    (`Release notes <https://github.com/git/git/blob/v1.8.5/Documentation/RelNotes/1.8.5.txt#L100-101>`_)

commit-ish
    Any object that leads to a commit, e.g.:
    a commit, a tag pointing to a commit, a tag pointing to a tag ... pointing to a commit.
    (`Source <https://git-scm.com/docs/gitglossary#gitglossary-aiddefcommit-ishacommit-ishalsocommittish>`_)

tree-ish
    Any object that contains a list of file names and modes along with refs to the associated blob and/or tree objects.
    Equivalent to a directory.
    (`Source <https://git-scm.com/docs/gitglossary#gitglossary-aiddeftree-ishatree-ishalsotreeish>`_)



Commands
========

Commits
-------

Commits between |HEAD| and commit before |HEAD|::

    $ git log @^..@

Commits between |HEAD| and |v1.0| tag::

    $ git log v1.0..@

Diff |HEAD| and commit before |HEAD|::

    $ git diff HEAD^ HEAD
    $ git diff HEAD^..HEAD
    $ git diff @^ @
    $ git diff @^..@
    $ git show

Diff |master| and current branch::

    $ git log master..HEAD -p

Diff ``file.rst`` from |HEAD| and commit before |HEAD|::

    $ git diff @:file.rst @^1:file.rst


Tags
----

Delete local tag::

    $ git tag -d TAGNAME

Push deleted tag to |origin|::

    $ git push origin :refs/tags/TAGNAME


Working tree
------------

Cached files::

    $ git ls-files

Cached files under ``foo/bar``::

    $ git ls-files foo/bar

Untracked files::

    $ git ls-files -o


Indexed trees
-------------

Files in tree identified by |v1.0| tag at the top level::

    $ git ls-tree --name-only tags/v1.0

Files in tree identified by |v1.0| tag at all levels::

    $ git ls-tree --name-only tags/v1.0 -r

Files in tree identified by |v1.0| tag in path ``foo/bar`` at all levels::

    $ git ls-tree --name-only tags/v1.0 foo/bar -r



.. |HEAD| replace:: ``HEAD``
.. |master| replace:: ``master``
.. |origin| replace:: ``origin``
.. |v1.0| replace:: ``v1.0``
