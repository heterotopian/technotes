.. _python_runtime:

Runtime
=======

:envvar:`PYTHONPATH`
--------------------


:envvar:`PYTHONDONTWRITEBYTECODE`
---------------------------------

- Option: :option:`-B`


:envvar:`PYTHONIOENCODING`
--------------------------

- StackOverflow:
  `UnicodeDecodeError when redirecting to file <https://stackoverflow.com/questions/4545661/unicodedecodeerror-when-redirecting-to-file/4546129#4546129>`_

      When you redirect the output of your program, it is generally not possible to know what the input encoding of the receiving program is.
      The interpreter falls back to some default encoding for stdin, stdout, and stderr (None for Python 2, UTF-8 for Python 3).

      ::

          $ python -c "import sys; print sys.stdout.encoding"
          UTF-8
          $ python -c "import sys; print sys.stdout.encoding" | cat
          None

      Set :envvar:`PYTHONIOENCODING` to override the default encoding for stdin, stdout, and stderr.

      ::

          $ PYTHONIOENCODING=UTF-8 python -c "import sys; print sys.stdout.encoding" | cat
            UTF-8
