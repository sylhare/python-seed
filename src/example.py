"""Removable demo module.

It exists so the test suite has something to run out of the box. Delete this
file (and ``tests/test_example.py``) once you start writing your own app.
"""

from pathlib import Path

ROOT_PATH = Path(__file__).resolve().parent.parent


def hello() -> str:
    return "Hello World!"


def root_path() -> Path:
    return ROOT_PATH
