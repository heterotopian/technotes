.. _git:

===
Git
===

.. highlight:: console

Resources
=========

- `What are commit-ish and tree-ish in Git? <https://stackoverflow.com/questions/23303549/what-are-commit-ish-and-tree-ish-in-git>`_
- `Keeping a fork up to date <https://philna.sh/blog/2018/08/21/git-commands-to-keep-a-fork-up-to-date/>`_
- `Changing author info <https://help.github.com/articles/changing-author-info/>`_ -
  Script for updating any commits with matching user/email fields
- `Git man page generator <https://git-man-page-generator.lokaltog.net/>`_ -
  Generate fake documentation (humor)
- Workflows

  - `GitHub Flow <https://guides.github.com/introduction/flow/>`_ -
    A lightweight, branch-based workflow that supports teams and projects where deployments are made regularly

Documentation
-------------

- `Homepage <https://git-scm.com/docs>`_
- `Pro Git <https://git-scm.com/book/en/v2>`_ -
  second edition by Scott Chacon and Ben Straub
  (`source <https://github.com/progit/progit2>`_)

  - `Rebasing <https://git-scm.com/book/en/v2/Git-Branching-Rebasing>`_

- `Specifying revisions <https://mirrors.edge.kernel.org/pub/software/scm/git/docs/gitrevisions.html#_specifying_revisions>`_

Cheat Sheets
------------

- GitHub: `Git cheat sheet <https://education.github.com/git-cheat-sheet-education.pdf>`_
- `Git command visualizer <http://ndpsoftware.com/git-cheatsheet.html>`_ -
  Groups commands by subject



Glossary
========

.. include:: substitute.rst

`Documentation <https://git-scm.com/docs/gitglossary>`_

@
    Alias for |head|
    (`release notes <https://github.com/git/git/blob/v1.8.5/Documentation/RelNotes/1.8.5.txt#L100-L101>`_)

:git-glossary:`commit-ish <aiddefcommit-ishacommit-ishalsocommittish>`
    Any object that leads to a commit, e.g.: a commit, a tag pointing to a commit, a tag pointing to a tag ... pointing to a commit.

:git-glossary:`tree-ish <aiddeftree-ishatree-ishalsotreeish>`
    Any object that contains a list of file names and modes along with refs to the associated blob and/or tree objects.
    Equivalent to a directory.



Commands
=======

.. toctree::
    :maxdepth: 1
    :glob:

    command/*
