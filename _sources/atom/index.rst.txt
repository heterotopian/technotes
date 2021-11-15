.. _atom:

====
Atom
====

.. highlight:: console

Resources
=========

- `Project homepage <https://atom.io/>`_
- `User guide <http://flight-manual.atom.io/>`_
- `API Reference <https://atom.io/docs/api/>`_
- Discussion

  - `Ctrl-Tab order <https://github.com/atom/atom/issues/11650>`_



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
    * - Select larger syntax node
      - :kbd:`Alt-Up`
    * - Select smaller syntax node
      - :kbd:`Alt-Down`



Command Palette
===============

`Documentation <http://flight-manual.atom.io/getting-started/sections/atom-basics/#command-palette>`_

- Actions

  - `log-cursor-scope <https://github.com/atom/atom/pull/4973>`_



Command Line
============

Export installed packages & themes to ``~/dotfiles/home/.atom_installed``::

    $ apm list --installed --bare > ~/dotfiles/src/.atom/packages.list

Install packages & themes from ``~/.atom_installed``::

    $ apm install --packages-file ~/dotfiles/src/.atom/packages.list



Packages
========

`Package directory <https://atom.io/packages>`_ (official) and
`atom-packages.directory <https://github.com/bastilian/atom-packages.directory>`_ (community)

- :atom-package:`git-plus`

  - Provides ``[branch-name]`` decoration in tree view

- :atom-package:`toggler`

- :atom-package:`vim-mode-plus`

  - `AdvancedTopicTutorial <https://github.com/t9md/atom-vim-mode-plus/wiki/AdvancedTopicTutorial>`_
  - `Use persistent selection <https://github.com/t9md/atom-vim-mode-plus/wiki/AdvancedTopicTutorial#7-use-persistent-selection>`_



Themes
======

`Theme directory <https://atom.io/themes>`_ (official) and
`Atom Theme Gallery <https://enrmarc.github.io/atom-theme-gallery/>`_ (community)

- User Interface

  - `one-light-ui <https://github.com/atom/atom/tree/master/packages/one-light-ui>`_
    (`original <https://github.com/atom/one-light-ui>`_)

- Syntax

  - `github-syntax <https://atom.io/themes/github-syntax>`_



Customization
=============

Stack open file tabs vertically (`source <https://gist.github.com/jasesmith/4b4a5ab6445ed8ce7c23791041c31408>`_):

.. code-block:: less
    :caption: style.less
    :force:

    @tab-border: rgba(24, 26, 31, 0.2);

    atom-workspace-axis.vertical atom-pane {
      flex-direction: row;

      .tab-bar {

        &:not(:empty) {
          box-shadow: inset -1px 0 0 @tab-border;
          resize: horizontal;
          height: auto;
          display: block;
          padding-right: 1px;
          padding-bottom: 3em;
          min-width: 14em;

          &::after {
            content: '';
            position: absolute;
            bottom: 1px;
            right: 1px;
            width: 0;
            height: 0;
            border: 0.7em solid transparent;
            border-color: transparent @ui-site-color-2 @ui-site-color-2 transparent;
            box-shadow: 1px 1px 0 0 @tab-border;
          }
        }

        .tab {
          display: block;
          border: none;
        }

        .tab,
        .tab.active {
          flex: none;
          width: auto;
          max-width: none;
          box-shadow: inset 0 -1px 0 0 @tab-border;
        }

        .tab .title {
          text-align: left;
        }
      }
