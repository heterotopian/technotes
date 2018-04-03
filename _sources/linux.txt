.. _linux:

=====
Linux
=====

.. highlight:: bash

Filesystem
==========

``findmnt``
-----------

::

    $ findmnt -t tmpfs
    TARGET         SOURCE FSTYPE OPTIONS
    /run           tmpfs  tmpfs  rw,nosuid,noexec,relatime,size=806096k,mode=755
    /sys/fs/cgroup        tmpfs  rw,relatime,size=4k,mode=755
    /run/lock             tmpfs  rw,nosuid,nodev,noexec,relatime,size=5120k
    /run/shm              tmpfs  rw,nosuid,nodev,relatime
    /run/user             tmpfs  rw,nosuid,nodev,noexec,relatime,size=102400k,mode=755


``nfsiostat``
-------------

::

    $ nfsiostat

    netapp01-nfs.domain.com:/foo mounted on /foo:

       op/s         rpc bklog
     262.16
               0.00
    read:
      ops/s            kB/s           kB/op         retrans         avg RTT (ms)    avg exe (ms)
                     11.557
            356.081
             30.812
           0 (0.0%)
              5.167
              5.239
    write:
      ops/s            kB/s           kB/op         retrans         avg RTT (ms)    avg exe (ms)
                      3.620
            105.680
             29.190
           0 (0.0%)
             16.032
            331.458


``nfsstat``
-----------

::

    $ nfsstat


    Client rpc stats:
    calls      retrans    authrefrsh
    386800393   0          387762712

    Client nfs v3:
    null         getattr      setattr      lookup       access       readlink
    0         0% 259158128 66% 450431    0% 20827600  5% 61029281 15% 21567     0%
    read         write        create       mkdir        symlink      mknod
    17020877  4% 5331960   1% 403351    0% 24746     0% 1862      0% 1         0%
    remove       rmdir        rename       link         readdir      readdirplus
    612324    0% 21399     0% 112009    0% 1039      0% 241247    0% 6522117   1%
    fsstat       fsinfo       pathconf     commit
    15071064  3% 22        0% 11        0% 0         0%


``tree``
--------

::

    $ tree foo
    foo
    ├── bar
    └── baz
        └── zzz.txt



Cgroups
=======

``lsns``
--------

::

    $ lsns
            NS TYPE   NPROCS PID USER COMMAND
    4026531835 cgroup      2   1 root bash
    4026531837 user        2   1 root bash
    4026532666 mnt         2   1 root bash
    4026532667 uts         2   1 root bash
    4026532668 ipc         2   1 root bash
    4026532669 pid         2   1 root bash
    4026532671 net         2   1 root bash



Devices
=======

``lsblk``
---------

::

    $ lsblk
    NAME           MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
    sda              8:0    0 278.5G  0 disk
    ├─sda1           8:1    0   487M  0 part /boot/efi
    ├─sda2           8:2    0   488M  0 part
    └─sda3           8:3    0 277.5G  0 part
      ├─VG1-System 252:0    0 270.1G  0 lvm  /
      └─VG1-Swap   252:1    0   7.5G  0 lvm  [SWAP]
