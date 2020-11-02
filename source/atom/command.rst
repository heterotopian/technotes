
============
Command Line
============

.. highlight:: console

Export installed packages & themes to ``~/dotfiles/home/.atom_installed``::

    $ apm list --installed --bare > ~/dotfiles/src/.atom/packages.list

Install packages & themes from ``~/.atom_installed``::

    $ apm install --packages-file ~/dotfiles/src/.atom/packages.list
