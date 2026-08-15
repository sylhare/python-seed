from pathlib import Path

from src.example import hello, root_path


def test_hello_returns_greeting():
    assert hello() == "Hello World!"


def test_root_path_returns_path():
    assert isinstance(root_path(), Path)


def test_root_path_points_to_repo_root():
    root = root_path()
    assert root.is_dir()
    assert (root / "pyproject.toml").is_file()
