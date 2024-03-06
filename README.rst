Python Seed App
===============

Inspired by `MarshalJoe <https://github.com/MarshalJoe>`__

This is a simple skeleton for a generic Python app.
It comes loaded with:

-  Project automation with
   `tox <https://tox.readthedocs.io/en/latest/>`__
-  Test with `pytest <https://pytest.readthedocs.io/en/latest/>`__
-  Style with `pylint <https://pylint.readthedocs.io/en/latest/>`__

As well a ``.gitignore``, ``.pylintrc`` config file, and simple
directory structure.

Get Started
-----------

You can fork the project and start your own with it.
You need to install tox `pip install tox` then run `tox` to install the dependencies.

The source files represents a hello world and can be removed / modified.

Setup
-----

Using Docker:

.. code:: bash

   # build the image:
   docker build -t seed-app .
   # Run image:
   docker run -it seed-app

Testing
-------

To find out more info about the testing configuration, check out the
``tox.ini`` file.
Use the ``requirements-dev.txt`` for libraries only used for tests or dev.

.. code:: bash

   # Run the test suite
   tox
   # Run the linter:
   tox -e lint
   # Run the coverage on the src module
   tox -e coverage


Misc Notes
----------

-  Make sure and edit the package title in ``setup.py`` to reflect your
   app name
-  If you have issue with tox and ``ModuleNotFoundError``, try set
   ``recreate`` to ``True`` in ``tox.ini``.
