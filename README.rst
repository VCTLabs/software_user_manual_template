=====================================
 Software User Manual (SUM) Template
=====================================

|pre|

|tag| |license| |python| |contributors|

**Documentation as Code**

What is this thing?
===================

This is both a GitHub Template repository *and* a usable template for a
MIL-STD-498_ DID-compliant Software User Manual in reStructuredText_.
This repo contains the following items:

.. _MIL-STD-498: https://github.com/VCTLabs/MIL-STD-498

* A Data Item Descripttion for a Software User Manual (SUM) (in ASCII
  text format)
* A DID-compliant SUM outline using all the required DID sections (in
  reStructuredText format)
* A sample title-page logo and system diagram
* Python source for the system diagram
* A tox file and Makefiles (to build things from source)

We use ``make`` and ``rst2pdf`` to build the full SUM document, and the diagrams_
tool to generate system architecture and related software diagrams.

.. note:: Currently we use the VCTLabs fork of diagrams in order to have
          the affinity_ icon set for networked/embedded systems.


Contents after a fresh clone::

  ./
  ├── CONTRIBUTING.rst
  ├── LICENSE
  ├── Makefile
  ├── README.rst
  ├── pyproject.toml
  ├── requirements-dia.txt
  ├── resources  # these are references or pre-inputs to the build workflow
  │   ├── SUM_DID_DI-IPSC-81443.txt     # Software User Manual DID
  │   ├── example-title-page.rst        # example title page source
  │   └── acme_webservice.py            # source code for the example system diagram
  ├── sum
  │   ├── EU_SUM.rst                    # source code for the document/template
  │   ├── Makefile
  │   ├── images                        # graphics sources for document build
  │   │   ├── acme.png
  │   │   └── acme.svg
  │   └── styles                        # old/new format style sheets
  │       ├── rst2pdf.style
  │       └── sum.yaml
  ├── tox.ini                           # workflow configuration
  └── toxfile.py                        # workflow plugin file


.. _reStructuredText: https://docutils.sourceforge.io/rst.html
.. _diagrams: https://github.com/VCTLabs/diagrams
.. _affinity: https://github.com/VCTLabs/affinity


Software Stack and Tool Dependencies
====================================

Install the following with your system package manager to run the workflows:

* Python_ - at least version 3.6
* Tox_ - at least version 4.2
* Graphviz_ - any recent version should work
* make and bash - any recent versions should be fine

.. _Python: https://docs.python.org/3.9/index.html
.. _Tox: https://tox.wiki/en/latest/user_guide.html
.. _Graphviz: https://www.graphviz.org/

Now you can use the workflow commands to install the remaining dependencies
using Python virtual environments inside the project directory and use the
tools for "building" diagrams and document sources.

Optional dependencies
---------------------

The ``graph`` command shown below is *completely optional* and is therefore not
required to generate/build graphics or documents. This ancillary command is only
used to rebuild/add new resource content used by the ``diagrams`` package.  The
required dependencies include Graphviz, along with the following:

* round
* inkscape
* imagemagick/graphicsmagick
* ttf-open-sans
* fontconfig
* xdg-utils

Note that package names for the above can differ between package managers, so
search accordingly (remember you only need Graphviz for the document workflows).

Usage
=====

From inside the repository checkout, use  ``tox list`` to view the list of
environment descriptions::

  $ tox list
  ...
  additional environments:
  sync           -> Install repolite and use it for cloning diagram workflow deps
  do             -> Run cmd following "--" from the sync env, e.g. "tox -e do -- repolite --show"
  graph          -> Build new content for the diagrams package (run sync first to install the source)
  gen            -> Generate a new diagram from your python source file


To build the SUM document, run the following 3 workflow commands in the order
shown::

  $ tox -e sync   # install repolite and clone the diagram repos to ext/ folder
  $ tox -e gen    # install diagrams and generate the architecture diagram from python source,
                  # then move the output .png file to sum/images/ folder
  $ tox -e build  # install rst2pdf and build the PDF document from .rst source and .svg/.png images

Points to note:

* you only need to ``sync`` once (after a fresh checkout)
* you only to run ``gen`` if the python source file is changed
* run the ``build`` command any time to view a fresh PDF

In addition to the ``gen`` command, the default makefiles will also build diagrams
from ``.dot`` code if you drop a (graphviz) dot file in the ``sum/images/`` folder
and use the resulting ``.svg`` file in your ``.rst`` source document.


Contributing
============

Please read CONTRIBUTING_ for details on the code of conduct and some general
guidance on submitting pull requests.

.. _CONTRIBUTING: https://github.com/VCTLabs/software_user_manual_template/blob/master/CONTRIBUTING.rst

Pre-commit
----------

This repo is pre-commit_ enabled for python/rst source and file-type
linting. The checks run automatically on commit and will fail the commit
(if not clean) and perform simple file corrections.  For example, if the
mypy check fails on commit, you must first fix any fatal errors for the
commit to succeed. That said, pre-commit does nothing if you don't install
it first (both the program itself and the hooks in your local repository
copy).

You will need to install pre-commit before contributing any changes;
installing it using your system's package manager is recommended,
otherwise install with pip into your local user environment using
something like::

  $ sudo emerge pre-commit  --or--
  $ pip install pre-commit

then install the hooks into the repo you just created from the template::

  $ cd your_new_sum_repo/
  $ pre-commit install

It's usually a good idea to update the hooks to the latest version::

    $ pre-commit autoupdate

Most (but not all) of the pre-commit checks will make corrections for you,
however, some will only report errors, so these you will need to correct
manually.

Automatic-fix checks include black, isort, autoflake, and miscellaneous
file fixers. If any of these fail, you can review the changes with
``git diff`` and just add them to your commit and continue.

If any of the mypy or rst source checks fail, you will get a report, but
then you must fix any errors before you can continue adding/committing.

To see a "replay" of any ``rst`` check errors, run::

  $ pre-commit run rst-backticks -a
  $ pre-commit run rst-directive-colons -a
  $ pre-commit run rst-inline-touching-normal -a

To run all ``pre-commit`` checks manually, try::

  $ pre-commit run -a

.. _pre-commit: https://pre-commit.com/index.html


License
=======

This project is licensed under the MIT license - see the `LICENSE file`_ for
details.

.. _LICENSE file: https://github.com/VCTLabs/software_user_manual_template/blob/master/LICENSE


.. |license| image:: https://img.shields.io/github/license/VCTLabs/software_user_manual_template
    :target: https://github.com/VCTLabs/software_user_manual_template/blob/master/LICENSE
    :alt: License

.. |tag| image:: https://img.shields.io/github/v/tag/VCTLabs/software_user_manual_template?color=green&include_prereleases&label=latest%20release
    :target: https://github.com/VCTLabs/software_user_manual_template/releases
    :alt: GitHub tag

.. |python| image:: https://img.shields.io/badge/python-3.6+-blue.svg
    :target: https://www.python.org/downloads/
    :alt: Python

.. |pre| image:: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white
   :target: https://github.com/pre-commit/pre-commit
   :alt: pre-commit

.. |contributors| image:: https://img.shields.io/github/contributors/VCTLabs/software_user_manual_template
   :target: https://github.com/VCTLabs/software_user_manual_template/
   :alt: Contributors
