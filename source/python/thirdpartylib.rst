.. _python_thirdpartylib:

Third Party
===========

:py:mod:`codetransformer`
-------------------------

- `Documentation <http://codetransformer.readthedocs.io/en/stable/>`_


:py:mod:`distlib`
-----------------

- `Documentation <http://distlib.readthedocs.io/en/latest/>`_


:py:mod:`hypothesis`
--------------------


:py:mod:`marshmallow`
---------------------


:py:mod:`nose`
--------------


:py:mod:`numpy`
---------------


:py:mod:`pandas`
----------------

- `Reshaping in Pandas <http://nikgrozev.com/2015/07/01/reshaping-in-pandas-pivot-pivot-table-stack-and-unstack-explained-with-pictures/>`_ -
  Pivot, pivot-table, stack and unstack explained with pictures



:py:mod:`pip`
-------------

- `Documentation <https://pip.readthedocs.io/en/stable/>`_

  - :ref:`pip:Requirements File Format`
  - :ref:`pip:pip install`

    - Installation order:
      "While it may be coincidentally true that pip will install things in the order of the install arguments or in the order of the items in a requirements file, this is not a promise." -
      `Source <https://pip.readthedocs.io/en/stable/reference/pip_install/#installation-order>`_

- `Pip needs a dependency resolver <https://github.com/pypa/pip/issues/988>`_


:py:mod:`pexpect`
-----------------


:py:mod:`pweave`
-----------------

- `Documentation <http://mpastell.com/pweave/>`_


:py:mod:`sqlalchemy`
--------------------

- `Documentation <https://docs.sqlalchemy.org/en/latest/>`_
- `Engine sharding <http://docs.sqlalchemy.org/en/latest/core/connections.html#sqlalchemy.engine.Engine.execution_options>`_

:py:mod:`toolz`
---------------

- `Documentation <http://toolz.readthedocs.io/en/latest/index.html>`_

.. autosummary::

    toolz.itertoolz.get
    toolz.itertoolz.groupby
    toolz.itertoolz.join
    toolz.itertoolz.mapcat
    toolz.itertoolz.pluck
    toolz.functoolz.complement
    toolz.dicttoolz.keyfilter
    toolz.dicttoolz.keymap
    toolz.dicttoolz.valfilter
    toolz.dicttoolz.valmap


:py:mod:`tooz`
--------------

- `Documentation <https://docs.openstack.org/tooz/latest/>`_

  - `Coordinators <https://docs.openstack.org/tooz/latest/user/tutorial/coordinator.html>`_
  - `Locks <https://docs.openstack.org/tooz/latest/user/tutorial/lock.html>`_

.. autosummary::

    tooz.coordination.CoordinationDriver
    tooz.drivers.file.FileDriver
    tooz.drivers.ipc.IPCDriver
    tooz.drivers.redis.RedisDriver
    tooz.drivers.consul.ConsulDriver


:py:mod:`trio`
--------------

- `Timeouts and cancelations for humans <https://vorpus.org/blog/timeouts-and-cancellation-for-humans/>`_


:py:mod:`wrapt`
---------------

- `Documentation <https://wrapt.readthedocs.io/en/latest/>`_
- `How you implemented your Python decorator is wrong <http://blog.dscpl.com.au/2014/01/how-you-implemented-your-python.html>`_
  (`GitHub <https://github.com/openstack/deb-python-wrapt/tree/master/blog>`_)
