
============
systemd-cgls
============

.. highlight:: console

- `Documentation <https://www.freedesktop.org/software/systemd/man/systemd-cgls.html>`_

::

    $ systemd-cgls
    Control group /:
    -.slice
    ├─init.scope
    │ └─1 /sbin/init
    ├─system.slice
    │ ├─mdadm.service
    │ │ └─2133 /sbin/mdadm --monitor --pid-file /run/mdadm/monitor.pid --daemonis...
    │ ├─dbus.service
    │ │ └─2066 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidf...
    │ ├─rpc-statd.service

::

    $ systemd-cgls /system.slice/dbus.service
    Control group /system.slice/dbus.service:
    └─2219 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation
