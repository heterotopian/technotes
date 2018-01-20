.. _python:

======
Python
======

Fundamentals
============

- :ref:`python:datamodel`
- :ref:`python:execmodel`



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


:py:mod:`contextlib`
--------------------

.. autosummary::

    ~contextlib.contextmanager
    ~contextlib.closing


:py:mod:`functools`
-------------------

.. autosummary::

    ~functools.total_ordering


:py:mod:`operator`
------------------

.. autosummary::

    ~operator.attrgetter
    ~operator.itemgetter
    ~operator.methodcaller



Third Party Libraries
=====================

:py:mod:`distlib`
-----------------

- `Documentation <http://distlib.readthedocs.io/en/latest/>`_


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



PEPs
====

- :pep:`302` - New Import Hooks
- :pep:`492` - Coroutines with async and await syntax



Resources
=========

- `Pyformat.info <https://pyformat.info/>`_


Packaging
---------

- Official

  - `Python Packaging User Guide <https://packaging.python.org/>`_
  - `Python Packaging Authority <https://www.pypa.io/en/latest/>`_
  - :ref:`python:install-index`
  - :ref:`python:distutils-index`

- Community

  - `PyPI Quick and Dirty <https://hynek.me/articles/sharing-your-labor-of-love-pypi-quick-and-dirty/>`_
  - `The Many Layers of Packaging <http://sedimental.org/the_packaging_gradient.html>`_


Py3k
----

- `Python 3 Readiness <http://py3readiness.org/>`_
- `Python 3 Q&A <http://python-notes.curiousefficiency.org/en/latest/python3/questions_and_answers.html>`_
- `Why should I use Python 3? <https://eev.ee/blog/2016/07/31/python-faq-why-should-i-use-python-3/>`_


async/await
-----------

- `Unyielding <https://glyph.twistedmatrix.com/2014/02/unyielding.html>`_ -
  There are no shortcuts to making single-tasking code concurrent
- `What color is your function? <http://journal.stuffwithstuff.com/2015/02/01/what-color-is-your-function/>`_ and
  `The function color myth <https://lukasa.co.uk/2016/07/The_Function_Colour_Myth/>`_
- `Asynchronous API design in a post-async/await world <https://vorpus.org/blog/some-thoughts-on-asynchronous-api-design-in-a-post-asyncawait-world/>`_
- `Sans I/O <http://sans-io.readthedocs.io/>`_ -
  Network protocol implementations that operate directly on text


Docker
------

- `Deploying Python Applications with Docker <https://glyph.twistedmatrix.com/2015/03/docker-deploy-double-dutch.html>`_
- `Using Python with Docker <http://blog.dscpl.com.au/p/using-python-with-docker.html>`_

  - `Installing a custom Python version into a Docker image <http://blog.dscpl.com.au/2015/06/installing-custom-python-version-into.html>`_
  - `Python virtual environments and Docker <http://blog.dscpl.com.au/2016/01/python-virtual-environments-and-docker.html>`_


Build systems
-------------

- `pex <https://pex.readthedocs.io/en/stable/>`_


Reflection
----------

- `Green Tree Snakes <http://greentreesnakes.readthedocs.io/en/latest/>`_ -
  A field guide to Abstract Syntax Trees in Python
