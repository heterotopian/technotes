
============
Command Line
============

.. highlight:: console

Export installed packages & themes to ``~/dotfiles/home/.atom_installed``::

    $ apm list --installed --bare > ~/dotfiles/home/.atom_installed

Install packages & themes from ``~/.atom_installed``::

    $ apm install --packages-file ~/.atom_installed
