.. _atom:

===========
Atom Editor
===========

.. highlight:: console


Shortcuts
=========

.. list-table::
    :header-rows: 1

    * - Action
      - Keys

    * - Open command palette
      - ``Ctrl-Shift-P``

    * - Open settings
      - ``Ctrl-,``

    * - Toggle tree view visibility
      - ``Ctrl-\``

    * - Toggle tree view focus
      - ``Alt-\``

    * - Close current tab
      - ``Ctrl-W Esc``

    * - Open fuzzy finder
      - ``Ctrl-P``

    * - Toggle keybinding resolver panel
      - ``Ctrl-.``

    * - Toggle Developer Tools
      - ``Ctrl-Shift-I``


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
