
=======
findmnt
=======

.. highlight:: console

Show filesystems::

    $ findmnt
    TARGET                        SOURCE      FSTYPE          OPTIONS
    /                             /dev/dm-1   ext4            rw,relatime,errors=remount-ro,data=ordered
    ├─/sys                        sysfs       sysfs           rw,nosuid,nodev,noexec,relatime
    │ ├─/sys/fs/cgroup                        tmpfs           rw,relatime,size=4k,mode=755
    │ │ └─/sys/fs/cgroup/systemd  systemd     cgroup          rw,nosuid,nodev,noexec,relatime,name=systemd
    │ ├─/sys/fs/fuse/connections              fusectl         rw,relatime
    │ ├─/sys/kernel/debug                     debugfs         rw,relatime
    │ ├─/sys/kernel/security                  securityfs      rw,relatime
    │ ├─/sys/firmware/efi/efivars             efivarfs        rw,relatime
    │ └─/sys/fs/pstore                        pstore          rw,relatime
    ├─/proc                       proc        proc            rw,nosuid,nodev,noexec,relatime
    │ └─/proc/sys/fs/binfmt_misc  binfmt_misc binfmt_misc     rw,nosuid,nodev,noexec,relatime
    ├─/dev                        udev        devtmpfs        rw,relatime,size=8113024k,nr_inodes=2028256,mode=755
    │ └─/dev/pts                  devpts      devpts          rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000
    ├─/run                        tmpfs       tmpfs           rw,nosuid,noexec,relatime,size=1625608k,mode=755
    │ ├─/run/lock                             tmpfs           rw,nosuid,nodev,noexec,relatime,size=5120k
    │ ├─/run/shm                              tmpfs           rw,nosuid,nodev,relatime
    │ └─/run/user                             tmpfs           rw,nosuid,nodev,noexec,relatime,size=102400k,mode=755
    │   └─/run/user/1000/gvfs     gvfsd-fuse  fuse.gvfsd-fuse rw,nosuid,nodev,relatime,user_id=1000,group_id=1000
    └─/boot                       /dev/sda2   ext2            rw,relatime
      └─/boot/efi                 /dev/sda1   vfat            rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro

Show tmpfs filesystems::

    $ findmnt -t tmpfs
    TARGET         SOURCE FSTYPE OPTIONS
    /run           tmpfs  tmpfs  rw,nosuid,noexec,relatime,size=1625608k,mode=755
    /sys/fs/cgroup        tmpfs  rw,relatime,size=4k,mode=755
    /run/lock             tmpfs  rw,nosuid,nodev,noexec,relatime,size=5120k
    /run/shm              tmpfs  rw,nosuid,nodev,relatime
    /run/user             tmpfs  rw,nosuid,nodev,noexec,relatime,size=102400k,mode=755

Show submounts of ``/sys``::

    $ findmnt /sys -R
    TARGET                      SOURCE  FSTYPE     OPTIONS
    /sys                        sysfs   sysfs      rw,nosuid,nodev,noexec,relatime
    ├─/sys/fs/cgroup                    tmpfs      rw,relatime,size=4k,mode=755
    │ └─/sys/fs/cgroup/systemd  systemd cgroup     rw,nosuid,nodev,noexec,relatime,name=systemd
    ├─/sys/fs/fuse/connections          fusectl    rw,relatime
    ├─/sys/kernel/debug                 debugfs    rw,relatime
    ├─/sys/kernel/security              securityfs rw,relatime
    ├─/sys/firmware/efi/efivars         efivarfs   rw,relatime
    └─/sys/fs/pstore                    pstore     rw,relatime

List filesystem mountpoints::

    $ findmnt -ln -o TARGET | sort
    /
    /boot
    /boot/efi
    /dev
    /dev/pts
    /proc
    /proc/sys/fs/binfmt_misc
    /run
    /run/lock
    /run/shm
    /run/user
    /run/user/1000/gvfs
    /sys
    /sys/firmware/efi/efivars
    /sys/fs/cgroup
    /sys/fs/cgroup/systemd
    /sys/fs/fuse/connections
    /sys/fs/pstore
    /sys/kernel/debug
    /sys/kernel/security

Options
=======

-t, --types list       Show filesystems of given types
-R, --submounts        Show submounts of selected filesystem
-o, --output list      Output columns to display
-l, --list             Use list output format
-n, --noheadings       Suppress columns headings
