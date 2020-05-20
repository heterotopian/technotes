
================
Cross-References
================

- `Documentation <https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#cross-referencing-syntax>`_

  - :sphinx:`Labels <restructuredtext/roles.html#role-ref>`
  - :sphinx:`Documents <restructuredtext/roles.html#role-doc>`
  - :sphinx:`Domain cross-references <restructuredtext/domains.html#cross-referencing-syntax>`

    - Prefix with ``!`` -
      no reference/hyperlink will be created
    - Prefix with ``~`` -
      link text will only be the last component of target

- :pypi:`sphobjinv` -
  Inspect/manipulate ``objects.inv`` files

.. highlight:: rst

.. list-table::
    :header-rows: 1

    * - Target
      - Example
    * - Labels
      - ::

            `:ref:`label`

    * - Documents
      - ::

            `:doc:`path`

    * - Labels (cross-project)
      - ::

            `:ref:`project:label`

    * - Documents (cross-project)
      - ::

            `:doc:`project:path`
