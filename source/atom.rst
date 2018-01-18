.. _atom:

====
Atom
====

.. highlight:: console

General
=======

- `Command palette <http://flight-manual.atom.io/getting-started/sections/atom-basics/#command-palette>`_



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
      - :kbd:`Alt-Shift-\\`

    * - Close current tab
      - :kbd:`Ctrl-W Esc`

    * - Open fuzzy finder
      - :kbd:`Ctrl-P`

    * - Toggle keybinding resolver panel
      - :kbd:`Ctrl-.`

    * - Toggle Developer Tools
      - :kbd:`Ctrl-Shift-I`



Command Line
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



Documentation
=============

- `Atom Flight Manual <http://flight-manual.atom.io/>`_
- `API docs <https://atom.io/docs/api/>`_



Resources
=========

- `AtomThemes.io <http://atomthemes.io/>`_
- `Atom Packages Directory <http://atom-packages.directory/>`_
- Discussion

  - `Ctrl-Tab order <https://github.com/atom/atom/issues/11650>`_
