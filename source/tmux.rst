.. _tmux:

====
Tmux
====

.. highlight:: console

Resources
=========

- `Project homepage <https://tmux.github.io/>`_

Guides
------

- `The Tao of tmux <https://leanpub.com/the-tao-of-tmux>`_ -
  eBook guide based on tmux primitives: servers, sessions, windows, panes
- Daniel Miessler: `A tmux Primer <https://danielmiessler.com/study/tmux/>`_


Session Managers
----------------

- `tmuxp <https://tmuxp.readthedocs.io/>`_
- `tmuxinator <https://github.com/tmuxinator/tmuxinator>`_



Commands
========

.. list-table::
    :header-rows: 1
    :widths: auto

    * - Action
      - Command
      - Alias

    * - List key bindings
      - :kbd:`list-keys`
      - :kbd:`lsk`

    * - Select session / window / pane
      - :kbd:`choose-tree -u`
      -

    * - List sessions
      - :kbd:`list-sessions`
      - :kbd:`ls`

    * - Attach to session X
      - :kbd:`attach-session -t X`
      - :kbd:`attach -t X`

    * - Detach from current session
      - :kbd:`detach-session`
      - :kbd:`detach`

    * - Kill current session
      - :kbd:`kill-session`
      -

    * - Enable synchronized input to all panes in current window
      - :kbd:`set-window-option synchronize-panes on`
      - :kbd:`setw synchronize-panes on`

    * - Disable synchronized input to all panes in current window
      - :kbd:`set-window-option synchronize-panes off`
      - :kbd:`setw synchronize-panes off`
