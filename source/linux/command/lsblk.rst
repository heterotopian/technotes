
=====
lsblk
=====

.. highlight:: console

::

    $ lsblk
    NAME           MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
    sda              8:0    0 278.5G  0 disk
    ├─sda1           8:1    0   487M  0 part /boot/efi
    ├─sda2           8:2    0   488M  0 part
    └─sda3           8:3    0 277.5G  0 part
      ├─VG1-System 252:0    0 270.1G  0 lvm  /
      └─VG1-Swap   252:1    0   7.5G  0 lvm  [SWAP]
