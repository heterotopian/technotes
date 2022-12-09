.. _conda:

=====
Conda
=====

.. highlight:: console

Commands
========

.. toctree::
    :maxdepth: 1
    :glob:

    command/*



Documentation
=============

- :doc:`conda:user-guide/cheatsheet`
- :doc:`conda:configuration`
- :doc:`conda:user-guide/index`

  - :doc:`conda:user-guide/concepts/conda-performance`
  - :doc:`conda:user-guide/tasks/manage-channels`



Resources
=========

- `Project homepage <https://github.com/conda/conda>`_
- Related projects:
  `Conda-build <https://conda.io/projects/conda-build/en/latest/>`_,
  `Miniconda <https://conda.io/en/latest/miniconda.html>`_

- `Understanding and Improving Conda’s performance <https://www.anaconda.com/understanding-and-improving-condas-performance/>`_
- `Why We Removed the “Free” Channel in Conda 4.7 <https://www.anaconda.com/why-we-removed-the-free-channel-in-conda-4-7/>`_
- "Build strings have no semantic content" -
  `Source <https://github.com/conda/conda/issues/4956#issuecomment-291847858>`_



Repositories
============

.. list-table::
    :header-rows: 1

    * - Repository
      - Links
      - Notes

    * - Conda Forge
      - `Homepage <https://conda-forge.org/docs/>`_
      -

    * - Anaconda Cloud
      - `Homepage <https://anaconda.org/>`_
      -

    * - Anaconda Repositories
      - `Homepage <https://repo.continuum.io/pkgs/>`_

        `Issue tracker <https://github.com/ContinuumIO/anaconda-issues>`_
      - **What about the 'anaconda' channel on anaconda.org at https://anaconda.org/anaconda?**

        "The Anaconda channel on anaconda.org is an aggregated mirror of the packages in \https://repo.continuum.io/pkgs/main, \https://repo.continuum.io/pkgs/free, and \https://repo.continuum.io/pkgs/pro. If you are using conda's 'defaults' channel, you do not need the 'anaconda' channel." -

        `Source <https://repo.continuum.io/pkgs/>`_



Extensions
==========

- `conda-depgraph <https://github.com/omegacen/conda-depgraph>`_ -
  Command-line utility to plot Conda dependency graphs
