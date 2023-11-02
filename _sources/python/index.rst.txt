
.. _python:

======
Python
======

Documentation
=============

Reference
---------

- :ref:`python:glossary`

- :ref:`python:reference-index`

  - :ref:`python:keywords`
  - :ref:`python:datamodel`

    - :ref:`python:types`
    - :ref:`python:specialnames`

  - :ref:`python:execmodel`

- :ref:`python:library-index`

  - :ref:`python:built-in-funcs`


Guides
------

- `Developer's Guide <https://devguide.python.org/>`_

- `HOWTOs <https://docs.python.org/3/howto/index.html>`_ -
  Deep dives into specific topics

  - :ref:`Descriptors <python:descriptorhowto>`

- :ref:`python:installing-index` and
  :ref:`python:install-index`

- :ref:`python:distributing-index` and
  :ref:`python:distutils-index`



Python Enhancement Proposals
============================

.. list-table::
    :header-rows: 1

    * - PEP
      - Title
      - See Also

    * - :pep:`248 <248>`
      - Python Database API Specification v1.0
      -

    * - :pep:`249 <249>`
      - Python Database API Specification v2.0
      -

    * - :pep:`302 <302>`
      - New Import Hooks
      -

    * - :pep:`333 <333>`
      - Python Web Server Gateway Interface v1.0
      - `Optional Platform-Specific File Handling <https://www.python.org/dev/peps/pep-0333/#optional-platform-specific-file-handling>`_

    * - :pep:`428 <428>`
      - The pathlib module – object-oriented filesystem paths
      -

    * - :pep:`440 <440>`
      - Version Identification and Dependency Specification
      - .. rst-class:: list-nobullet

            - `Version scheme <https://www.python.org/dev/peps/pep-0440/#version-scheme>`_
            - `Version specifiers <https://www.python.org/dev/peps/pep-0440/#version-specifiers>`_

    * - :pep:`441 <441>`
      - Improving Python ZIP Application Support
      -

    * - :pep:`443 <443>`
      - Single-dispatch generic functions
      -

    * - :pep:`465 <465>`
      - A dedicated infix operator for matrix multiplication
      -

    * - :pep:`492 <492>`
      - Coroutines with async and await syntax
      -

    * - :pep:`518 <518>`
      - Specifying Minimum Build System Requirements for Python Projects
      -

    * - :pep:`567 <567>`
      - Context Variables
      -

    * - :pep:`3000 <3000>`
      - Python 3000
      -



Runtime
=======

.. list-table::
    :header-rows: 1

    * - Environment Variable
      - Option
      - Notes

    * - :envvar:`PYTHONPATH`
      -
      -

    * - :envvar:`PYTHONDONTWRITEBYTECODE`
      - :option:`-B`
      -

    * - :envvar:`PYTHONSAFEPATH`
      - :option:`-P`
      -

    * - :envvar:`PYTHONWARNINGS`
      - :option:`-W`
      - Bugtracker: `-W option cannot use non-standard categories <https://bugs.python.org/issue22543>`_

    * - :envvar:`PYTHONIOENCODING`
      -
      - .. compound::

            StackOverflow: `UnicodeDecodeError when redirecting to file <https://stackoverflow.com/questions/4545661/unicodedecodeerror-when-redirecting-to-file/4546129#4546129>`_

            When you redirect the output of your program, it is generally not possible to know what the input encoding of the receiving program is.
            The interpreter falls back to some default encoding for stdin, stdout, and stderr (None for Python 2, UTF-8 for Python 3).

            ::

                $ python -c "import sys; print sys.stdout.encoding"
                UTF-8
                $ python -c "import sys; print sys.stdout.encoding" | cat
                None

            Set :envvar:`!PYTHONIOENCODING` to override the default encoding for stdin, stdout, and stderr.

            ::

                $ PYTHONIOENCODING=UTF-8 python -c "import sys; print sys.stdout.encoding" | cat
                  UTF-8



Community
=========

General
-------

- `Pyformat.info <https://pyformat.info/>`_ - String formatting cheat sheet
- `Python bootcamp lecture notes <https://cewing.github.io/training.codefellows/index.html>`_ -
  Course offered by `Code Fellows <http://www.codefellows.org/courses/code-401/advanced-software-development-in-python/>`_

  - `A 20-minute introduction to DB-API2 <https://cewing.github.io/training.codefellows/lectures/day21/intro_to_dbapi2.html>`_

- `Internet Programming with Python <http://cewing.github.io/training.python_web/html/index.html>`_ -
  Certificate course offered by University of Washington
- `Python linters and code analysis tools <https://github.com/vintasoftware/python-linters-and-code-analysis>`_


Language
--------

- `Green Tree Snakes <http://greentreesnakes.readthedocs.io/en/latest/>`_ -
  The missing Python AST docs
- Metaclasses

  - Metaclass Programming In Python: parts
    `one <http://gnosis.cx/publish/programming/metaclass_1.html>`_,
    `two <http://gnosis.cx/publish/programming/metaclass_2.html>`_,
    `three <http://gnosis.cx/publish/programming/metaclass_3.html>`_ -
    Primer focused on the fundamentals of metaclasses
  - `__call__ <https://stackoverflow.com/questions/100003/what-are-metaclasses-in-python/40017019#40017019>`_
  - `__init__ versus __new__ <https://python-3-patterns-idioms-test.readthedocs.io/en/latest/Metaprogramming.html#using-init-vs-new-in-metaclasses>`_


Trends
------

- Python Developers Survey:
  `2017 <https://www.jetbrains.com/research/python-developers-survey-2017/>`_,
  `2018 <https://www.jetbrains.com/research/python-developers-survey-2018/>`_,
  `2019 <https://www.jetbrains.com/lp/python-developers-survey-2019/>`_ -
  Collaboration between JetBrains & the Python Software Foundation

- StackOverflow:
  `The Incredible Growth of Python <https://stackoverflow.blog/2017/09/06/incredible-growth-python/>`_ and
  `Why is Python Growing So Quickly? <https://stackoverflow.blog/2017/09/14/python-growing-quickly/>`_


Packaging
---------

- Official

  - `Python Package Index <https://pypi.python.org/pypi>`_ (PyPI) - Community package repository
  - `Python Packaging Authority <https://www.pypa.io/en/latest/>`_ (PyPA) -
    Working group for packaging-related projects

  - `Python Packaging User Guide <https://packaging.python.org/>`_ -
    Guide to best practices

    - :ref:`packaging:Tool Recommendations`

- Donald Stufft:
  `setup.py vs requirements.txt <https://caremad.io/posts/2013/07/setup-vs-requirement/>`_ -
  Explains the roles of each component
- Kenneth Reitz:
  `A Better Pip Workflow <https://www.kennethreitz.org/essays/a-better-pip-workflow>`_ -
  Multiple requirements files
- `The Many Layers of Packaging <http://sedimental.org/the_packaging_gradient.html>`_ -
  Broad overview of packaging, "pip is for libraries"


Python 3
--------

- `Python 3 Readiness <http://py3readiness.org/>`_ -
  Shows Python 3 support for the most popular packages on PyPI
- `Python 3 Statement <http://python3statement.org/>`_ -
  Pledge by scientific projects to drop Python 2 support by 2020
- `Python 3 Q&A <http://python-notes.curiousefficiency.org/en/latest/python3/questions_and_answers.html>`_ -
  Compehensive FAQ by Nick Coghlan (Python core developer)
- Brett Cannon:
  `Why Python 3 Exists <https://snarky.ca/why-python-3-exists/>`_
- Eevee:
  `Why should I use Python 3? <https://eev.ee/blog/2016/07/31/python-faq-why-should-i-use-python-3/>`_ and
  `How do I port to Python 3? <https://eev.ee/blog/2016/07/31/python-faq-how-do-i-port-to-python-3/>`_


Asynchronous I/O
----------------

- `Unyielding <https://glyph.twistedmatrix.com/2014/02/unyielding.html>`_ -
  There are no shortcuts to making single-tasking code concurrent
- `What color is your function? <http://journal.stuffwithstuff.com/2015/02/01/what-color-is-your-function/>`_ and
  `The function color myth <https://lukasa.co.uk/2016/07/The_Function_Colour_Myth/>`_
- `Asynchronous API design in a post-async/await world <https://vorpus.org/blog/some-thoughts-on-asynchronous-api-design-in-a-post-asyncawait-world/>`_
- `Sans I/O <http://sans-io.readthedocs.io/>`_ -
  Network protocol implementations that operate directly on text


Scientific Computing
--------------------

- `Scipy Lecture Notes <http://www.scipy-lectures.org/>`_ -
  Tutorials on the scientific Python ecosystem


Infrastructure
--------------

- `BinderHub <https://binderhub.readthedocs.io/en/latest/>`_

  - `MyBinder <https://mybinder.readthedocs.io/en/latest/>`_


Docker
------

- `Deploying Python Applications with Docker <https://glyph.twistedmatrix.com/2015/03/docker-deploy-double-dutch.html>`_
- `Using Python with Docker <http://blog.dscpl.com.au/p/using-python-with-docker.html>`_

  - `Installing a custom Python version into a Docker image <http://blog.dscpl.com.au/2015/06/installing-custom-python-version-into.html>`_
  - `Python virtual environments and Docker <http://blog.dscpl.com.au/2016/01/python-virtual-environments-and-docker.html>`_



Modules
=======

Standard Library
----------------

.. toctree::
    :maxdepth: 1
    :glob:

    module/stdlib/*


Third Party
-----------

.. toctree::
    :maxdepth: 1
    :glob:

    module/thirdparty/*
