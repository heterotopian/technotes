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


:py:mod:`operator`
------------------

.. autosummary::

    ~operator.attrgetter
    ~operator.itemgetter
    ~operator.methodcaller


:py:mod:`collections`
---------------------

:ref:`python:collections-abstract-base-classes`


:py:mod:`concurrent.futures`
----------------------------

.. autosummary::

    ~concurrent.futures.ThreadPoolExecutor
    ~concurrent.futures.ProcessPoolExecutor



Third Party Libraries
=====================


:py:mod:`nose`
--------------


:py:mod:`numpy`
---------------


:py:mod:`pandas`
----------------


:py:mod:`sqlalchemy`
--------------------


:py:mod:`toolz`
---------------

`PyToolz API Documentation <http://toolz.readthedocs.io/en/latest/index.html>`_

.. autosummary::

    ~toolz.keyfilter
    ~toolz.keymap
    ~toolz.valfilter
    ~toolz.valmap

:py:mod:`trio`
--------------

`Timeouts and cancelations for humans <https://vorpus.org/blog/timeouts-and-cancellation-for-humans/>`_



:py:mod:`wrapt`
---------------

.. autosummary::

    ~wrapt.decorator

**How you implemented your Python decorator is wrong** (`blog <http://blog.dscpl.com.au/2014/01/how-you-implemented-your-python.html>`_, `GitHub <https://github.com/openstack/deb-python-wrapt/tree/master/blog>`_) -
Comprehensive series of essays covering every facet of decorators.
The authoritative treatment of decorator internals.
