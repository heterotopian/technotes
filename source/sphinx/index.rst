.. _sphinx:

======
Sphinx
======

.. highlight:: console

.. seealso::

    :ref:`python_module_docutils` -
    Python library that implements reStructuredText

Resources
=========

- `Project homepage <http://www.sphinx-doc.org>`_
- `Discussion group <https://groups.google.com/forum/#!forum/sphinx-users>`_
- `Online reStructuredText editor <http://rst.ninjs.org/>`_

Documentation
-------------

- :sphinx:`Directives <restructuredtext/directives.html>`

  - :sphinx:`toctree <restructuredtext/directives.html#directive-toctree>`

- :sphinx:`Domains <restructuredtext/domains.html>`

  - :sphinx:`Python <restructuredtext/domains.html#the-python-domain>`

- :sphinx:`reStructuredText <restructuredtext/index.html>` -
  Covers the most important aspects of reStructuredText (wrt Sphinx)

  - :sphinx:`Substitutions <restructuredtext/basics.html#substitutions>`


Guides
------

- `Sphinx/reST Memo <http://rest-sphinx-memo.readthedocs.io>`_ -
  Condensed, example-based guide to Sphinx & reStructuredText
- `Wiser > Sphinx & reStructuredText <https://build-me-the-docs-please.readthedocs.io/en/latest/Using_Sphinx/index.html>`_ -
  Broad tutorial

  - `Escaping whitespace around interpreted text <https://build-me-the-docs-please.readthedocs.io/en/latest/Using_Sphinx/OnReStructuredText.html#subscript-and-superscript>`_



Cross References
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

    * - Refence Target
      - Syntax
    * - Labels
      - ::

            :ref:`label`

    * - Documents
      - ::

            :doc:`path`

    * - Labels (cross-project)
      - ::

            :ref:`project:label`

    * - Documents (cross-project)
      - ::

            :doc:`project:path`



Extensions
==========

- :sphinx:`Documentation <extensions>`
- Built-In

  - :py:mod:`sphinx.ext.extlinks` - Markup to shorten external links
  - :py:mod:`sphinx.ext.intersphinx` - Link to other projects’ documentation

    - :sphinx:`Showing all links of an Intersphinx mapping file <extensions/intersphinx.html#showing-all-links-of-an-intersphinx-mapping-file>`
    - Read The Docs: `Link to Other Projects’ Documentation With Intersphinx <https://docs.readthedocs.io/en/stable/guides/intersphinx.html>`_

- Third-Party

  - :pypi:`sphinx-jinja` -
    Include content generated from Jinja templates in Sphinx documents



Themes
======

`Sphinx-Themes.org <https://sphinx-themes.org/>`_ (community)

.. list-table::
    :header-rows: 1

    * - Theme
      - Examples
      - Notes

    * - `Read The Docs <http://sphinx-rtd-theme.readthedocs.io/en/latest/>`_
      - `demo <http://sphinx-rtd-theme.readthedocs.io/en/latest/demo/structure.html>`_,
        :sphinx-themes:`sphinx-themes <sphinx_rtd_theme/sphinx_rtd_theme>`
      - `Wyrm <https://github.com/snide/wyrm>`_ -
        base SASS framework

    * - `Guzzle <https://github.com/guzzle/guzzle_sphinx_theme>`_
      - `demo <http://docs.guzzlephp.org/en/stable/>`_,
        :sphinx-themes:`sphinx-themes <guzzle_sphinx_theme/guzzle_sphinx_theme>`
      -

    * - `Typelog <https://github.com/typlog/sphinx-typlog-theme>`_
      - `Authlib <https://docs.authlib.org/en/latest/>`_,
        :sphinx-themes:`sphinx-themes <sphinx-typlog-theme/sphinx_typlog_theme>`
      - `Documentation <https://sphinx-typlog-theme.readthedocs.io/en/latest/>`_

    * - `Klink <http://pmorissette.github.io/klink/index.html>`_
      - `demo <http://pmorissette.github.io/klink/examples.html>`_
      -

    * - `TYPO3 <https://github.com/TYPO3-Documentation/t3SphinxThemeRtd>`_
      - `demo <https://docs.typo3.org/typo3cms/drafts/github/TYPO3-Documentation/t3SphinxThemeRtdDemoDocs/>`_,
        :sphinx-themes:`sphinx-themes <t3SphinxThemeRtd/t3SphinxThemeRtd>`
      -
