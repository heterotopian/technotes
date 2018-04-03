.. _python:

======
Python
======

General
=======

`The Python Language Reference <https://docs.python.org/2/reference/index.html>`_
---------------------------------------------------------------------------------

Describes the syntax and core semantics of the language.

- :ref:`python:keywords`
- :ref:`python:datamodel`

  - :ref:`python:types`
  - :ref:`python:newstyle`
  - :ref:`python:specialnames`

- :ref:`python:execmodel`


`The Python Standard Library <https://docs.python.org/2/library/index.html>`_
-----------------------------------------------------------------------------

Describes the standard library that is distributed with Python.

- :ref:`python:built-in-funcs`


`PEPs <https://www.python.org/dev/peps/>`_
------------------------------------------

Python Enhancement Proposals.

- :pep:`248` - Python Database API Specification v1.0
- :pep:`249` - Python Database API Specification v2.0
- :pep:`302` - New Import Hooks
- :pep:`333` - Python Web Server Gateway Interface v1.0

  - `Optional Platform-Specific File Handling <https://www.python.org/dev/peps/pep-0333/#optional-platform-specific-file-handling>`_

- :pep:`440` - Version Identification and Dependency Specification

  - `Version scheme <https://www.python.org/dev/peps/pep-0440/#version-scheme>`_
  - `Version specifiers <https://www.python.org/dev/peps/pep-0440/#version-specifiers>`_

- :pep:`443` - Single-dispatch generic functions
- :pep:`492` - Coroutines with async and await syntax



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

    ~contextlib.ContextDecorator
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

    - Installation order: "While it may be coincidentally true that pip will install things in the order of the install arguments or in the order of the items in a requirements file, this is not a promise." -
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



Resources
=========

- `Pyformat.info <https://pyformat.info/>`_ - String formatting cheat sheet


Community
---------

- `Python Developers Survey 2017 <https://www.jetbrains.com/research/python-developers-survey-2017/>`_
- StackOverflow:
  `The Incredible Growth of Python <https://stackoverflow.blog/2017/09/06/incredible-growth-python/>`_ and
  `Why is Python Growing So Quickly? <https://stackoverflow.blog/2017/09/14/python-growing-quickly/>`_


Packaging
---------

- Official

  - `PyPI <https://pypi.python.org/pypi>`_ - The Python Package Index
  - `Python Packaging User Guide <https://packaging.python.org/>`_
  - `Python Packaging Authority <https://www.pypa.io/en/latest/>`_
  - :ref:`python:install-index`
  - :ref:`python:distutils-index`

- Community

  - `PyPI Quick and Dirty <https://hynek.me/articles/sharing-your-labor-of-love-pypi-quick-and-dirty/>`_
  - `The Many Layers of Packaging <http://sedimental.org/the_packaging_gradient.html>`_


Py3k
----

- `Python 3 Readiness <http://py3readiness.org/>`_ -
  Shows Python 3 support for the most popular packages on PyPI
- `Python 3 Statement <http://python3statement.org/>`_ -
  Pledge by scientific projects to drop Python 2 support by 2020
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


Reflection
----------

- `Green Tree Snakes <http://greentreesnakes.readthedocs.io/en/latest/>`_ -
  A field guide to Abstract Syntax Trees in Python


Docker
------

- `Deploying Python Applications with Docker <https://glyph.twistedmatrix.com/2015/03/docker-deploy-double-dutch.html>`_
- `Using Python with Docker <http://blog.dscpl.com.au/p/using-python-with-docker.html>`_

  - `Installing a custom Python version into a Docker image <http://blog.dscpl.com.au/2015/06/installing-custom-python-version-into.html>`_
  - `Python virtual environments and Docker <http://blog.dscpl.com.au/2016/01/python-virtual-environments-and-docker.html>`_


Build systems
-------------

- `pex <https://pex.readthedocs.io/en/stable/>`_
