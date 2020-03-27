
=========
Resources
=========

.. highlight:: console

- `Project homepage <https://www.gnu.org/software/bash/manual/>`_

Documentation
=============

- `Separate pages <https://www.gnu.org/software/bash/manual/html_node/>`_
- `Single page <https://www.gnu.org/software/bash/manual/bash.html>`_



Community
=========

- `Bash Guide for Beginners <http://tldp.org/LDP/Bash-Beginners-Guide/html/>`_
- `BashFAQ <https://mywiki.wooledge.org/BashFAQ>`_ -
  Concise treatment of advanced topics

  - `Bash Pitfalls <https://mywiki.wooledge.org/BashPitfalls>`_
  - `How to read a file line-by-line <https://mywiki.wooledge.org/BashFAQ/001>`_
  - .. compound::

      `Using find <https://mywiki.wooledge.org/UsingFind>`_

      .. code-block:: bash

          while IFS= read -r -d '' LINE; do
              printf '%s\n' "$LINE"
          done < <(find -name "$PATTERN" -print0)