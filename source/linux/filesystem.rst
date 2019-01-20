
.. highlight:: bash

Filesystems
===========

findmnt
-------

::

    $ findmnt -t tmpfs
    TARGET         SOURCE FSTYPE OPTIONS
    /run           tmpfs  tmpfs  rw,nosuid,noexec,relatime,size=806096k,mode=755
    /sys/fs/cgroup        tmpfs  rw,relatime,size=4k,mode=755
    /run/lock             tmpfs  rw,nosuid,nodev,noexec,relatime,size=5120k
    /run/shm              tmpfs  rw,nosuid,nodev,relatime
    /run/user             tmpfs  rw,nosuid,nodev,noexec,relatime,size=102400k,mode=755


lvm
---

Physical volumes
~~~~~~~~~~~~~~~~

::

    $ lvm pvs
      PV                     VG      Fmt  Attr PSize   PFree
      /dev/mapper/sda3_crypt mint-vg lvm2 a--  222.83g    0
      unknown device         mint-vg lvm2 a-m  931.51g    0

::

    $ lvm pvscan
      PV /dev/mapper/sda3_crypt   VG mint-vg   lvm2 [222.83 GiB / 0    free]
      PV unknown device           VG mint-vg   lvm2 [931.51 GiB / 0    free]
      Total: 2 [1.13 TiB] / in use: 2 [1.13 TiB] / in no VG: 0 [0   ]

::

    $ lvm lvmdiskscan
      /dev/ram0              [      64.00 MiB]
      /dev/mapper/sda3_crypt [     222.83 GiB] LVM physical volume
      /dev/ram1              [      64.00 MiB]
      /dev/sda1              [     512.00 MiB]
      /dev/mint-vg/root      [     206.94 GiB]
      /dev/ram2              [      64.00 MiB]
      /dev/sda2              [     244.00 MiB]
      /dev/mint-vg/swap_1    [      15.89 GiB]
      /dev/ram3              [      64.00 MiB]
      /dev/sda3              [     222.83 GiB]
      /dev/ram4              [      64.00 MiB]
      /dev/ram5              [      64.00 MiB]
      /dev/ram6              [      64.00 MiB]
      /dev/ram7              [      64.00 MiB]
      /dev/ram8              [      64.00 MiB]
      /dev/ram9              [      64.00 MiB]
      /dev/ram10             [      64.00 MiB]
      /dev/ram11             [      64.00 MiB]
      /dev/ram12             [      64.00 MiB]
      /dev/ram13             [      64.00 MiB]
      /dev/ram14             [      64.00 MiB]
      /dev/ram15             [      64.00 MiB]
      /dev/sdf1              [      30.28 GiB]
      1 disk
      21 partitions
      1 LVM physical volume whole disk
      0 LVM physical volumes

Logical volumes
~~~~~~~~~~~~~~~

::

    $ lvm lvs
      LV     VG      Attr      LSize   Pool Origin Data%  Move Log Copy%  Convert
      data   mint-vg -wi-----p 931.51g
      root   mint-vg -wi-ao--- 206.94g
      swap_1 mint-vg -wi-ao---  15.89g
::

    $ lvm lvscan
      ACTIVE            '/dev/mint-vg/root' [206.94 GiB] inherit
      ACTIVE            '/dev/mint-vg/swap_1' [15.89 GiB] inherit
      inactive          '/dev/mint-vg/data' [931.51 GiB] inherit

Volume groups
~~~~~~~~~~~~~

::

    $ lvm vgs
      Couldn't find device with uuid ozPdAM-hmks-tyLK-b0zu-KWIE-GYZ9-I9fR5Q.
      VG      #PV #LV #SN Attr   VSize VFree
      mint-vg   2   3   0 wz-pn- 1.13t    0

::

    $ lvm vgscan
      Reading all physical volumes.  This may take a while...
      Couldn't find device with uuid ozPdAM-hmks-tyLK-b0zu-KWIE-GYZ9-I9fR5Q.
      Found volume group "mint-vg" using metadata type lvm2


tree
----

::

    $ tree foo
    foo
    ├── bar
    └── baz
        └── zzz.txt

    2 directories, 1 file

::

    $ tree foo -L 1
    foo
    ├── bar
    └── baz

    2 directories, 0 files
