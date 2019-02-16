.. _python_thirdpartylib:

Third Party
===========

:py:mod:`codetransformer`
-------------------------

- `Documentation <http://codetransformer.readthedocs.io/en/stable/>`_


:py:mod:`distlib`
-----------------

- `Documentation <http://distlib.readthedocs.io/en/latest/>`_


.. _python_module_docutils:

:py:mod:`docutils`
------------------

- `Documentation <http://docutils.sourceforge.net/>`_

  - reStructuredText:

    - `Markup specification <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html>`_
    - `Substitution definitions  <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#substitution-definitions>`_
    - `Standard definition files <http://docutils.sourceforge.net/docs/ref/rst/definitions.html>`_

      - "To use a substitution without intervening whitespace, you can use the disappearing-whitespace escape sequence, backslash-space"

    - Frontends:

      - `rst2html <http://docutils.sourceforge.net/docs/user/tools.html#rst2html-py>`_
      - `rst2pseudoxml <http://docutils.sourceforge.net/docs/user/tools.html#rst2pseudoxml-py>`_

- `Sphinx documentation <https://docutils.readthedocs.io/en/sphinx-docs/>`_ -
  Unnoficial, community-supported mirror of the offficial documentation


:py:mod:`factory_boy`
---------------------

- `Documentation <https://factoryboy.readthedocs.io/en/latest/>`_


:py:mod:`flask`
---------------

- `Building beautiful REST APIs using Flask, Swagger UI and Flask-RESTPlus <http://michal.karzynski.pl/blog/2016/06/19/building-beautiful-restful-apis-using-flask-swagger-ui-flask-restplus/>`_


:py:mod:`great_expectations`
----------------------------

- `Documentation <https://great-expectations.readthedocs.io/en/stable/>`_


:py:mod:`hypothesis`
--------------------

- `Documentation <https://hypothesis.readthedocs.io/en/latest/>`_


:py:mod:`jupyter`
-----------------

- `Project homepage <http://jupyter.org/>`_
- Documentation:
  `Index <http://jupyter.org/documentation>`_,
  `General <https://jupyter.readthedocs.io/en/latest/>`_,
  `Notebook <https://jupyter-notebook.readthedocs.io/en/stable/>`_

- `I Don't Like Notebooks <https://conferences.oreilly.com/jupyter/jup-ny/public/schedule/detail/68282>`_ -
  A comprehensive, entertaining presentation about notebook shortcomings
  (`slides <https://docs.google.com/presentation/d/1n2RlMdmv1p25Xy5thJUhkKGvjtV-dkAIsUXP-AL4ffI/edit?usp=sharing>`_)

  - Threads:
    `Twitter <https://twitter.com/joelgrus/status/1033035196428378113?lang=en>`_,
    `Hacker News <https://news.ycombinator.com/item?id=17856700>`_
  - Responses:
    `The First Notebook War <https://yihui.name/en/2018/09/notebook-war/>`_


:py:mod:`marshmallow`
---------------------


:py:mod:`nose`
--------------


:py:mod:`nox`
-------------

- `Documentation <https://nox.thea.codes/en/stable/>`_


:py:mod:`numpy`
---------------


:py:mod:`pandas`
----------------

- `Documentation <http://pandas.pydata.org/pandas-docs/stable/>`_

  - :ref:`pandas:compare_with_sql`

- `Reshaping in Pandas <http://nikgrozev.com/2015/07/01/reshaping-in-pandas-pivot-pivot-table-stack-and-unstack-explained-with-pictures/>`_ -
  Pivot, pivot-table, stack and unstack explained with pictures


:py:mod:`pex`
-------------

Build system based on :pep:`441`.
Defines the .pex (Python EXecutable) file format.


:py:mod:`pexpect`
-----------------


:py:mod:`pip`
-------------

- `Documentation <https://pip.readthedocs.io/en/stable/>`_

  - :ref:`pip:Requirements File Format`
  - :ref:`pip:pip install`

    - Installation order:
      "While it may be coincidentally true that pip will install things in the order of the install arguments or in the order of the items in a requirements file, this is not a promise." -
      `Source <https://pip.readthedocs.io/en/stable/reference/pip_install/#installation-order>`_

- `Pip needs a dependency resolver <https://github.com/pypa/pip/issues/988>`_


:py:mod:`pipenv`
----------------

- `Documentation <https://pipenv.readthedocs.io/en/latest/>`_
- `The difference between setup.py (pyproject.toml) and requirements.txt (Pipfile) <https://github.com/pypa/pipfile/issues/27>`_
- `How to integrate with setup.py? <https://github.com/pypa/pipenv/issues/209>`_
- Quoting a discussion about the `taxonomy of dependencies <https://github.com/pypa/pipfile/issues/98#issue-276881270>`_:

    Across applications and libraries, we can taxonomize three different kinds of abstract dependencies.

    1. For applications, the abstract dependencies required to run the application
    2. For libraries, the abstract dependencies that consumers of the library must also add
    3. For both applications and libraries, the abstract dependencies required for a development environment – these also almost always include respectively (1) or (2), since you usually can't run tests without the actual dependencies
    4. The concrete dependencies required to run an application, corresponding to (1)
    5. The concrete dependencies to develop an application or a library, corresponding to (3)


:py:mod:`placebo`
-----------------

- `Documentation <https://placebo.readthedocs.io/en/latest/>`_


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


:py:mod:`tox`
-------------

- `Documentation <https://tox.readthedocs.io/en/latest/>`_


:py:mod:`vcrpy`
---------------

- `Documentation <https://vcrpy.readthedocs.io/en/latest/>`_


:py:mod:`wrapt`
---------------

- `Documentation <https://wrapt.readthedocs.io/en/latest/>`_
- `How you implemented your Python decorator is wrong <http://blog.dscpl.com.au/2014/01/how-you-implemented-your-python.html>`_
  (`GitHub <https://github.com/openstack/deb-python-wrapt/tree/master/blog>`_)
- Special attributes of wrapper objects:

  - ``__wrapped__``
  - ``_self_instance``
  - ``_self_wrapper``
  - ``_self_enabled``
  - ``_self_binding``
  - ``_self_parent``
