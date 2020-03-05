.. _systemd_controller:

===========
Controllers
===========

.. highlight:: console

`busctl <https://www.freedesktop.org/software/systemd/man/busctl.html>`_
========================================================================


`journalctl <https://www.freedesktop.org/software/systemd/man/journalctl.html>`_
================================================================================

Supports tab completion on field names::

    $ journalctl _G<TAB>

Selecting Messages
------------------

Since/before date::

    $ journalctl --since='2010-01-01 08:00:00'
    $ journalctl --until='2010-01-01 08:00:00'


Formatting Output
-----------------

Fit output to terminal::

    $ journalctl --no-full

Disable pager::

    $ journalctl --no-pager


Format::

    $ journalctl -o FORMAT

`Options <https://www.freedesktop.org/software/systemd/man/journalctl.html#-o>`_
    ``short``
    ``short-full``
    ``short-iso``
    ``short-iso-precise``
    ``short-precise``
    ``short-monotonic``
    ``short-unix``
    ``verbose``
    ``export``
    ``json``
    ``json-pretty``
    ``json-sse``
    ``json-seq``
    ``cat``
    ``with-unit``


`localectl <https://www.freedesktop.org/software/systemd/man/localectl.html>`_
==============================================================================


`loginctl <https://www.freedesktop.org/software/systemd/man/loginctl.html>`_
============================================================================

Sessions
--------

::

    $ loginctl list-sessions
       SESSION        UID USER             SEAT
            c1       1000 chris            seat0

    1 sessions listed.

::

    $ loginctl session-status c1
    c1 - chris (1000)
               Since: Sun 2019-11-17 18:34:11 EST; 3 months 17 days ago
              Leader: 1639 (mdm)
                Seat: seat0; vc8
             Display: :0
             Service: mdm; type x11; class user
               State: active
              CGroup: systemd:/user/1000.user/c1.session
                      ├─ 1099 /opt/google/chrome/chrome --type=renderer --field-trial-handle=6315093843364672281,4974006865843957291,131072 --disable-gpu-compositing --service-pipe-token=AD7D579170EAC688447C54F3357FCF53 --lang=en-US --enable-offline-auto-reload --enable-offline-auto-reload-visible-only --num-raster-threads=4 --enable-main-frame-before-activation --enable-compositor-image-animations --service-request-channel-token=AD7D579170EAC688447C54F3357FCF53 --renderer-client-id=2122 --shared-files=v8_context_snapshot_data:100,v8_natives_data:101,v8_snapshot_data:10
                      ├─ 1639 mdm
                      ├─ 2021 /usr/bin/gnome-keyring-daemon --daemonize --login
                      ├─ 2097 cinnamon-session --session cinnamon
                      ├─ 2154 /usr/bin/ssh-agent /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch x-session-manager
                      ├─ 2157 /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch x-session-manager
                      ├─ 2158 //bin/dbus-daemon --fork --print-pid 6 --print-address 9 --session
                      ├─ 2165 /usr/lib/at-spi2-core/at-spi-bus-launcher
                      ├─ 2169 /bin/dbus-daemon --config-file=/etc/at-spi2/accessibility.conf --nofork --print-address 3
                      ├─ 2172 /usr/lib/at-spi2-core/at-spi2-registryd --use-gnome-session
                      ├─ 2192 /usr/bin/pulseaudio --start --log-target=syslog
                      ├─ 2274 /usr/lib/gvfs/gvfsd
                      ├─ 2278 /usr/lib/gvfs/gvfsd-fuse /run/user/1000/gvfs -f -o big_writes

::

    $ loginctl show-session c1
    Id=c1
    Timestamp=Sun 2019-11-17 18:34:11 EST
    TimestampMonotonic=66150378
    DefaultControlGroup=systemd:/user/1000.user/c1.session
    VTNr=8
    Display=:0
    Remote=no
    Service=mdm
    Leader=1639
    Audit=0
    Type=x11
    Class=user
    Active=yes
    State=active
    KillProcesses=no
    IdleHint=no
    IdleSinceHint=0
    IdleSinceHintMonotonic=0
    Name=chris


Users
-----

::

    $ loginctl list-users
           UID USER
          1000 chris

::

    $ loginctl user-status chris
    chris (1000)
               Since: Sun 2019-11-17 18:34:11 EST; 3 months 17 days ago
               State: active
            Sessions: *c1
              CGroup: systemd:/user/1000.user
                      └─c1.session
                        ├─ 1099 /opt/google/chrome/chrome --type=renderer --field-trial-handle=6315093843364672281,4974006865843957291,131072 --disable-gpu-compositing --service-pipe-token=AD7D579170EAC688447C54F3357FCF53 --lang=en-US --enable-offline-auto-reload --enable-offline-auto-reload-visible-only --num-raster-threads=4 --enable-main-frame-before-activation --enable-compositor-image-animations --service-request-channel-token=AD7D579170EAC688447C54F3357FCF53 --renderer-client-id=2122 --shared-files=v8_context_snapshot_data:100,v8_natives_data:101,v8_snapshot_data:10
                        ├─ 1639 mdm
                        ├─ 2021 /usr/bin/gnome-keyring-daemon --daemonize --login
                        ├─ 2097 cinnamon-session --session cinnamon
                        ├─ 2154 /usr/bin/ssh-agent /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch x-session-manager
                        ├─ 2157 /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch x-session-manager
                        ├─ 2158 //bin/dbus-daemon --fork --print-pid 6 --print-address 9 --session
                        ├─ 2165 /usr/lib/at-spi2-core/at-spi-bus-launcher
                        ├─ 2169 /bin/dbus-daemon --config-file=/etc/at-spi2/accessibility.conf --nofork --print-address 3
                        ├─ 2172 /usr/lib/at-spi2-core/at-spi2-registryd --use-gnome-session
                        ├─ 2192 /usr/bin/pulseaudio --start --log-target=syslog
                        ├─ 2274 /usr/lib/gvfs/gvfsd
                        ├─ 2278 /usr/lib/gvfs/gvfsd-fuse /run/user/1000/gvfs -f -o big_writes
                        ├─ 2385 /usr/lib/gvfs/gvfs-udisks2-volume-monitor


::

    $ loginctl show-user chris
    UID=1000
    GID=1000
    Name=chris
    Timestamp=Sun 2019-11-17 18:34:11 EST
    TimestampMonotonic=66150137
    RuntimePath=/run/user/1000
    DefaultControlGroup=systemd:/user/1000.user
    Display=c1
    State=active
    Sessions=c1
    IdleHint=no
    IdleSinceHint=0
    IdleSinceHintMonotonic=0





`machinectl <https://www.freedesktop.org/software/systemd/man/machinectl.html>`_
================================================================================


`timedatectl <https://www.freedesktop.org/software/systemd/man/timedatectl.html>`_
==================================================================================


`systemctl <http://0pointer.de/public/systemd-man/systemctl.html>`_
===================================================================

List active units::

    $ systemctl list-units

List loaded units::

    $ systemctl list-units -a

List active service units::

    $ systemctl list-units -t service

List unit files::

    $ systemctl list-unit-files

Check if unit is running::

    $ systemctl is-active unit
