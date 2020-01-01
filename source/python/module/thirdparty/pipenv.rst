
================
:py:mod:`pipenv`
================

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
