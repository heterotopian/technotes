.. _python:

======
Python
======

General
=======

- :ref:`python:glossary` -
  Official definitions for common jargon terms


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



PEPs
====

- :pep:`248` - Python Database API Specification v1.0
- :pep:`249` - Python Database API Specification v2.0
- :pep:`302` - New Import Hooks
- :pep:`333` - Python Web Server Gateway Interface v1.0

  - `Optional Platform-Specific File Handling <https://www.python.org/dev/peps/pep-0333/#optional-platform-specific-file-handling>`_

- :pep:`440` - Version Identification and Dependency Specification

  - `Version scheme <https://www.python.org/dev/peps/pep-0440/#version-scheme>`_
  - `Version specifiers <https://www.python.org/dev/peps/pep-0440/#version-specifiers>`_

- :pep:`441` - Improving Python ZIP Application Support
- :pep:`443` - Single-dispatch generic functions
- :pep:`492` - Coroutines with async and await syntax
- :pep:`3000` - Python 3000



Resources
=========

- `Pyformat.info <https://pyformat.info/>`_ - String formatting cheat sheet


Community
---------

- `Python Developers Survey 2017 <https://www.jetbrains.com/research/python-developers-survey-2017/>`_ -
  Joint effort of the Python Software Foundation and JetBrains
- StackOverflow:
  `The Incredible Growth of Python <https://stackoverflow.blog/2017/09/06/incredible-growth-python/>`_ and
  `Why is Python Growing So Quickly? <https://stackoverflow.blog/2017/09/14/python-growing-quickly/>`_
- `Python bootcamp lecture notes <https://cewing.github.io/training.codefellows/index.html>`_ -
  Course offered by `Code Fellows <http://www.codefellows.org/courses/code-401/advanced-software-development-in-python/>`_

  - `A 20-minute introduction to DB-API2 <https://cewing.github.io/training.codefellows/lectures/day21/intro_to_dbapi2.html>`_


Packaging
---------

- Official

  - Python Package Index (PyPI) - The main software repository for the Python community

    - `CheeseShop <https://pypi.python.org/pypi>`_ -
      Legacy system for pypi.python.org, retirement in progress
    - `Warehouse <https://pypi.org/>`_ -
      Next-generation platform for pypi.org

  - `Python Packaging Authority <https://www.pypa.io/en/latest/>`_ (PyPA) -
    Working group that maintains packaging projects
  - `Python Packaging User Guide <https://packaging.python.org/>`_ -
    Tutorials and references from PyPA

    - :ref:`packaging:Tool Recommendations` -
      Current best practices

  - :ref:`python:installing-index` and :ref:`python:install-index`
  - :ref:`python:distributing-index` and :ref:`python:distutils-index`

    - `Relationships between Distributions and Packages <https://docs.python.org/2/distutils/setupscript.html#relationships-between-distributions-and-packages>`_

- Community

  - `The Many Layers of Packaging <http://sedimental.org/the_packaging_gradient.html>`_ -
    Navigating the rich terrain (e.g. "pip is for libraries")
  - Hynek Schlawack:
    `PyPI Quick and Dirty <https://hynek.me/articles/sharing-your-labor-of-love-pypi-quick-and-dirty/>`_
  - Donald Stufft:
    `setup.py vs requirements.txt <https://caremad.io/posts/2013/07/setup-vs-requirement/>`_ -
    Clarifying the roles of these features


Py3k
----

- `Python 3 Readiness <http://py3readiness.org/>`_ -
  Shows Python 3 support for the most popular packages on PyPI
- `Python 3 Statement <http://python3statement.org/>`_ -
  Pledge by scientific projects to drop Python 2 support by 2020
- `Python 3 Q&A <http://python-notes.curiousefficiency.org/en/latest/python3/questions_and_answers.html>`_ -
  Compehensive FAQ by Nick Coghlan (Python core developer)
- Eevee:
  `Why should I use Python 3? <https://eev.ee/blog/2016/07/31/python-faq-why-should-i-use-python-3/>`_ and
  `How do I port to Python 3? <https://eev.ee/blog/2016/07/31/python-faq-how-do-i-port-to-python-3/>`_


Web
---

- `Internet Programming with Python <http://cewing.github.io/training.python_web/html/index.html>`_ -
  Certificate course offered by University of Washington



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

- `pex <https://pex.readthedocs.io/en/stable/>`_ -
  Build system based on :pep:`441` and archived virtualenvs.
  Defines the .pex (Python EXecutable) file format.



.. include:: python_libraries.rst
