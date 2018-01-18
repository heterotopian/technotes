.. _python:

======
Python
======

Documentation
=============

- :ref:`python:datamodel`
- :ref:`python:execmodel`

PEPs
----

- :pep:`302` - New Import Hooks



Standard Library
================

:py:mod:`collections`
---------------------

- :ref:`python:collections-abstract-base-classes`


:py:mod:`concurrent.futures`
----------------------------

.. autosummary::

    ~concurrent.futures.ThreadPoolExecutor
    ~concurrent.futures.ProcessPoolExecutor


:py:mod:`operator`
------------------

.. autosummary::

    ~operator.attrgetter
    ~operator.itemgetter
    ~operator.methodcaller



Third Party Libraries
=====================

:py:mod:`marshmallow`
---------------------


:py:mod:`nose`
--------------


:py:mod:`numpy`
---------------


:py:mod:`pandas`
----------------


:py:mod:`pexpect`
-----------------


:py:mod:`pweave`
-----------------

- `Documentation <http://mpastell.com/pweave/>`_


:py:mod:`sqlalchemy`
--------------------

- `Documentation <https://docs.sqlalchemy.org/en/latest/>`_


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

- `How you implemented your Python decorator is wrong <http://blog.dscpl.com.au/2014/01/how-you-implemented-your-python.html>`_
  (`GitHub <https://github.com/openstack/deb-python-wrapt/tree/master/blog>`_)



Distributions
=============

- `Anaconda <https://www.anaconda.com/>`_
- `Enthought Canopy <https://www.enthought.com/product/canopy/>`_



Resources
=========

- Packaging

  - `Python Packaging User Guide <https://packaging.python.org/>`_
  - `Python Packaging Authority <https://www.pypa.io/en/latest/>`_

- Generating code

  - `Green Tree Snakes <http://greentreesnakes.readthedocs.io/en/latest/>`_ -
    A field guide to Abstract Syntax Trees in Python
