.. _python_module_docutils:

==================
:py:mod:`docutils`
==================

- `Project homepage <http://docutils.sourceforge.net/>`_
- `Sphinx site <https://docutils.readthedocs.io/en/sphinx-docs/>`_ -
  Project documentation converted to Sphinx + Read The Docs theme
- `Online reStructuredText editor <http://rst.ninjs.org/>`_

.. seealso::

    :ref:`Sphinx <sphinx>` --
    Static website generator optimized for documentation

Documentation
=============

- :docutils:`Markup specification <ref/rst/restructuredtext.html>`
- :docutils:`Substitution definitions <ref/rst/restructuredtext.html#substitution-definitions>`
- :docutils:`Standard definition files <ref/rst/definitions.html>`

  - "To use a substitution without intervening whitespace, you can use the disappearing-whitespace escape sequence, backslash-space"

- Frontends

  - :docutils:`rst2html <user/tools.html#rst2html-py>`
  - :docutils:`rst2pseudoxml <user/tools.html#rst2pseudoxml-py>`



Guides
======

- Sphinx: :ref:`reStructuredText Guide <sphinx:rst-index>`



Discussion
==========

- `Unnecessary <p class="first"> inserted between <li> <https://github.com/sphinx-doc/sphinx/issues/3588#issuecomment-290398312>`_ -
  Docutils generates different markup for lists with "simple" and "non-simple" content

  - Setting: :docutils:`compact_lists <user/config.html#compact-lists>`
