
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

    $ lvm pvscan -u
      PV /dev/mapper/sda3_crypt with UUID HVi9at-O5W2-fgZJ-R6QB-fZa5-30HN-12zOe9 VG mint-vg   lvm2 [222.83 GiB / 0    free]
      PV unknown device         with UUID ozPdAM-hmks-tyLK-b0zu-KWIE-GYZ9-I9fR5Q VG mint-vg   lvm2 [931.51 GiB / 0    free]
      Total: 2 [1.13 TiB] / in use: 2 [1.13 TiB] / in no VG: 0 [0   ]

::

    $ lvm pvdisplay
      Couldn't find device with uuid ozPdAM-hmks-tyLK-b0zu-KWIE-GYZ9-I9fR5Q.
      --- Physical volume ---
      PV Name               /dev/mapper/sda3_crypt
      VG Name               mint-vg
      PV Size               222.83 GiB / not usable 0
      Allocatable           yes (but full)
      PE Size               4.00 MiB
      Total PE              57044
      Free PE               0
      Allocated PE          57044
      PV UUID               HVi9at-O5W2-fgZJ-R6QB-fZa5-30HN-12zOe9

      --- Physical volume ---
      PV Name               unknown device
      VG Name               mint-vg
      PV Size               931.51 GiB / not usable 1.71 MiB
      Allocatable           yes (but full)
      PE Size               4.00 MiB
      Total PE              238467
      Free PE               0
      Allocated PE          238467
      PV UUID               ozPdAM-hmks-tyLK-b0zu-KWIE-GYZ9-I9fR5Q

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

::

    $ lvm lvdisplay
      --- Logical volume ---
      LV Path                /dev/mint-vg/root
      LV Name                root
      VG Name                mint-vg
      LV UUID                K1f3bU-81FN-hQPH-o3Bh-SXjl-lWbl-1II0vU
      LV Write Access        read/write
      LV Creation host, time mint, 2015-01-04 21:11:08 -0500
      LV Status              available
      # open                 1
      LV Size                206.94 GiB
      Current LE             52977
      Segments               1
      Allocation             inherit
      Read ahead sectors     auto
      - currently set to     256
      Block device           252:1

      --- Logical volume ---
      LV Path                /dev/mint-vg/swap_1
      LV Name                swap_1
      VG Name                mint-vg
      LV UUID                jvIm9E-6mkf-PRmi-Ljtk-R5jn-2Cyw-UFbYAU
      LV Write Access        read/write
      LV Creation host, time mint, 2015-01-04 21:11:08 -0500
      LV Status              available
      # open                 2
      LV Size                15.89 GiB
      Current LE             4067
      Segments               1
      Allocation             inherit
      Read ahead sectors     auto
      - currently set to     256
      Block device           252:2

      --- Logical volume ---
      LV Path                /dev/mint-vg/data
      LV Name                data
      VG Name                mint-vg
      LV UUID                LNhabH-vfyi-1aoy-ZoLI-zxG8-T14P-8wqhJ6
      LV Write Access        read/write
      LV Creation host, time manchester, 2015-02-27 05:47:28 -0500
      LV Status              NOT available
      LV Size                931.51 GiB
      Current LE             238467
      Segments               1
      Allocation             inherit
      Read ahead sectors     auto

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

::

    $ lvm vgdisplay
      --- Volume group ---
      VG Name               mint-vg
      System ID
      Format                lvm2
      Metadata Areas        1
      Metadata Sequence No  7
      VG Access             read/write
      VG Status             resizable
      MAX LV                0
      Cur LV                3
      Open LV               2
      Max PV                0
      Cur PV                2
      Act PV                1
      VG Size               1.13 TiB
      PE Size               4.00 MiB
      Total PE              295511
      Alloc PE / Size       295511 / 1.13 TiB
      Free  PE / Size       0 / 0
      VG UUID               fB5w0I-sjIL-4prj-AXyH-e3x6-UMEF-LdAz19


tree
----

::

    $ tree foo
    foo
    ├── bar
    └── baz
        └── zzz.txt

    2 directories, 1 file
