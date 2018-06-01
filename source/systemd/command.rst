.. _systemd_command:

Commands
========

`systemd-cgls <https://www.freedesktop.org/software/systemd/man/systemd-cgls.html>`_
------------------------------------------------------------------------------------

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


`systemd-run <https://www.freedesktop.org/software/systemd/man/systemd-run.html>`_
----------------------------------------------------------------------------------

::

    $ systemd-run echo yes
    Running as unit run-rd639c9dc8b974744bc1b88ff8319cb47.service.

::

    $ systemd-run --scope echo yes
    Running scope as unit run-r56133a46ffdf44a0b416864461fc7ee0.scope.
    yes


`systemd-cgtop <https://www.freedesktop.org/software/systemd/man/systemd-cgtop.html>`_
------------------------------------------------------------------------------------

::

    $ systemd-cgtop
    Control Group                                 Tasks   %CPU   Memory  Input/s Output/s
    /                                                 -  266.3   478.0G        -        -
    /user.slice                                    1874  252.8   471.0G        -        -
    /user.slice/user-641738498.slice                480  146.8     8.7G        -        -
    /user.slice/user-641740830.slice                205   96.3   373.5G        -        -
    /system.slice                                   241   12.6     6.8G        -        -
    /system.slice/netdata.service                    20   10.1   135.7M        -        -
    /user.slice/user-641754182.slice                122    7.4     1.0G        -        -
    /system.slice/newrelic-infra.service             14    2.3    70.4M        -        -
    /user.slice/user-641748370.slice                250    0.6     7.9G        -        -
