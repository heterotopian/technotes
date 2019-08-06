
.. highlight:: console

NFS
===

nfsstat
-------

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


nfsiostat
---------

.. code-block:: shell

    $ nfsiostat

    nfs.domain.com:/foo mounted on /foo:

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
