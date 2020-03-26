
===========
systemd-run
===========

- `Documentation <https://www.freedesktop.org/software/systemd/man/systemd-run.html>`_

::

    $ systemd-run echo yes
    Running as unit run-rd639c9dc8b974744bc1b88ff8319cb47.service.

::

    $ systemd-run --scope echo yes
    Running scope as unit run-r56133a46ffdf44a0b416864461fc7ee0.scope.
    yes
