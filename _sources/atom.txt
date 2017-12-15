.. _atom:

===========
Atom Editor
===========

.. highlight:: console

.. contents::
    :local:
    :depth: 1

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

Export/Import
-------------

- Export installed packages & themes to ``~/.atom_installed``::

    $ apm list --installed --bare > ~/.atom_installed

- Install packages & themes from ``~/.atom_installed``::

    $ apm install --packages-file ~/.atom_installed


Commands
========

See `command palette <http://flight-manual.atom.io/getting-started/sections/atom-basics/#command-palette>`_ in the Atom Flight Manual


Discussion
==========

Ctrl-Tab Order
--------------

https://github.com/atom/atom/issues/11650


Resources
=========

- `Atom Flight Manual <http://flight-manual.atom.io/>`_
- `AtomThemes.io <http://atomthemes.io/>`_
