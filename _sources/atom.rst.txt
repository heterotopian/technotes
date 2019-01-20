.. _atom:

====
Atom
====

.. highlight:: console

`Documentation <https://atom.io/docs>`_
=======================================

- `Atom Flight Manual <http://flight-manual.atom.io/>`_ - Official user guide

  - `Command palette <http://flight-manual.atom.io/getting-started/sections/atom-basics/#command-palette>`_

- `API docs <https://atom.io/docs/api/>`_



Shortcuts
=========

.. list-table::
    :header-rows: 1

    * - Action
      - Keys

    * - Open command palette
      - :kbd:`Ctrl-Shift-P`

    * - Open settings
      - :kbd:`Ctrl-,`

    * - Toggle tree view visibility
      - :kbd:`Ctrl-\\`

    * - Toggle focus on tree view
      - :kbd:`Alt-\\`

    * - Reveal active file in tree view
      - :kbd:`Ctrl-Shift-\\`

    * - Close current tab
      - :kbd:`Ctrl-W Esc`

    * - Open fuzzy finder
      - :kbd:`Ctrl-P`

    * - Toggle keybinding resolver panel
      - :kbd:`Ctrl-.`

    * - Toggle Developer Tools
      - :kbd:`Ctrl-Shift-I`

    * - Open grammar selector
      - :kbd:`Ctrl-Shift-L`



Commands
========

Editor
------

- `Log Cursor Scope <https://github.com/atom/atom/pull/4973>`_



Command line
============

- Export installed packages & themes to ``~/dotfiles/home/.atom_installed``::

    $ apm list --installed --bare > ~/dotfiles/home/.atom_installed

- Install packages & themes from ``~/.atom_installed``::

    $ apm install --packages-file ~/.atom_installed



Packages
========

toggler
-------

- `Package homepage <https://atom.io/packages/toggler>`_


vim-mode-plus
-------------

- `Package homepage <https://atom.io/packages/vim-mode-plus>`_
- `Commands <https://github.com/t9md/atom-vim-mode-plus/wiki/Commands>`_

sync-settings
-------------

- `Package homepage <https://atom.io/packages/sync-settings>`_



Resources
=========

- `AtomThemes.io <http://atomthemes.io/>`_
- `Atom Packages Directory <http://atom-packages.directory/>`_
- Discussion

  - `Ctrl-Tab order <https://github.com/atom/atom/issues/11650>`_
