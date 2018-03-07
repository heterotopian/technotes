.. _linux:

=====
Linux
=====

.. highlight:: bash

Filesystem
==========

:command:`findmnt` ::

    $ findmnt -t tmpfs
    TARGET         SOURCE FSTYPE OPTIONS
    /run           tmpfs  tmpfs  rw,nosuid,noexec,relatime,size=806096k,mode=755
    /sys/fs/cgroup        tmpfs  rw,relatime,size=4k,mode=755
    /run/lock             tmpfs  rw,nosuid,nodev,noexec,relatime,size=5120k
    /run/shm              tmpfs  rw,nosuid,nodev,relatime
    /run/user             tmpfs  rw,nosuid,nodev,noexec,relatime,size=102400k,mode=755

:command:`tree` ::

    $ tree foo
    foo
    ├── bar
    └── baz
        └── zzz.txt


Cgroups
=======

:command:`lsns` ::

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

:command:`lsblk` ::

    $ lsblk
    NAME           MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
    sda              8:0    0 278.5G  0 disk
    ├─sda1           8:1    0   487M  0 part /boot/efi
    ├─sda2           8:2    0   488M  0 part
    └─sda3           8:3    0 277.5G  0 part
      ├─VG1-System 252:0    0 270.1G  0 lvm  /
      └─VG1-Swap   252:1    0   7.5G  0 lvm  [SWAP]
