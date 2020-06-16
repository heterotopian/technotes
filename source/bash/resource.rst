
=========
Resources
=========

.. highlight:: console

Documentation
=============

- `Homepage <https://www.gnu.org/software/bash/manual/html_node/>`_



Community
=========

- `Bash Guide for Beginners <http://tldp.org/LDP/Bash-Beginners-Guide/html/>`_
- `BashFAQ <https://mywiki.wooledge.org/BashFAQ>`_ -
  Concise treatment of advanced topics

  - `Bash Pitfalls <https://mywiki.wooledge.org/BashPitfalls>`_
  - .. compound::

        `How to read a file line-by-line <https://mywiki.wooledge.org/BashFAQ/001>`_

        .. code-block:: bash

            {
                while IFS= read -r LINE
                do
                    echo "${LINE}"
                done

                if [[ -n ${LINE} ]]
                then
                    echo "${LINE}"
                fi
            }

  - .. compound::

        `Using find <https://mywiki.wooledge.org/UsingFind>`_

        .. code-block:: bash

            while IFS= read -r -d '' LINE; do
                printf '%s\n' "$LINE"
            done < <(find -name "$PATTERN" -print0)
