.. _tmux:

====
Tmux
====

.. highlight:: console

- `Project homepage <https://tmux.github.io/>`_

Commands
========

.. list-table::
    :header-rows: 1

    * - Command
      - Alias
    * - :kbd:`list-sessions`
      - :kbd:`ls`
    * - :kbd:`list-keys`
      - :kbd:`lsk`
    * - :kbd:`choose-tree`
      -
    * - :kbd:`kill-session`
      -
    * - :kbd:`set-window-option`
      - :kbd:`setw`


Guides
======

- `The Tao of tmux <https://leanpub.com/the-tao-of-tmux>`_ -
  eBook guide based on tmux primitives: servers, sessions, windows, panes
- Daniel Miessler: `A tmux Primer <https://danielmiessler.com/study/tmux/>`_


Session Managers
================

- `tmuxp <https://tmuxp.readthedocs.io/>`_
- `tmuxinator <https://github.com/tmuxinator/tmuxinator>`_


Synchronize Panes
=================

::

    setw synchronize-panes on

::

    setw synchronize-panes off
