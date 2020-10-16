.. _tmux:

====
Tmux
====

.. highlight:: tmux

Resources
=========

- `Project homepage <https://tmux.github.io/>`_

Guides
------

- The Tao of tmux:
  `eBook <https://leanpub.com/the-tao-of-tmux>`_,
  :twitter:`Twitter <TheTaoOfTmux>`
- Daniel Miessler: `A tmux Primer <https://danielmiessler.com/study/tmux/>`_


Session Managers
----------------

- `tmuxp <https://tmuxp.readthedocs.io/>`_
- `tmuxinator <https://github.com/tmuxinator/tmuxinator>`_



Commands
========

.. list-table:: General
    :header-rows: 1
    :widths: auto

    * - Action
      - Command
      - Alias

    * - List key bindings
      - :kbd:`list-keys`
      - :kbd:`lsk`

    * - Set server option
      - :kbd:`set-option -s option value`
      - :kbd:`set -s option value`

    * - Set session option
      - :kbd:`set-option option value`
      - :kbd:`set option value`

    * - Set window option
      - :kbd:`set-window-option option value`
      - :kbd:`setw option value`

    * - Select session / window interactively
      - :kbd:`choose-tree -u`
      -


.. list-table:: Clients
    :header-rows: 1
    :widths: auto

    * - Action
      - Command
      - Alias

    * - List clients
      - :kbd:`list-clients`
      - :kbd:`lsc`

    * - Detach client from session
      - :kbd:`detach-client [ -s target-session ]`
      - :kbd:`detach [ -s target-session ]`


.. list-table:: Sessions
    :header-rows: 1
    :widths: auto

    * - Action
      - Command
      - Alias

    * - List sessions
      - :kbd:`list-sessions`
      - :kbd:`ls`

    * - Attach to session
      - :kbd:`attach-session -t target-session`
      - :kbd:`attach -t target-session`

    * - Kill current session
      - :kbd:`kill-session`
      -



Options
=======

Server
------


Session
-------


Window
------

Synchronize input::

    setw synchronize-panes on
    setw synchronize-panes off
