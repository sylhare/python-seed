# Python Seed App

A simple skeleton for a generic Python app. It comes loaded with:

- Packaging and dependency management with [uv](https://docs.astral.sh/uv/)
- Tests with [pytest](https://docs.pytest.org/)
- Linting with [ruff](https://docs.astral.sh/ruff/)

As well as a `.gitignore`, a `pyproject.toml`, and a simple directory structure.

## Get Started

Fork the project (or use it as a GitHub template) and start your own with it.

Install [uv](https://docs.astral.sh/uv/getting-started/installation/), then sync
the environment:

```bash
uv sync
```

- `src/app.py` is the entry point — start writing your application there.
- `src/example.py` and `tests/test_example.py` are a removable demo so the test
  suite is green out of the box. Delete them once you no longer need them; the
  CI stays green even with no tests.

Run the app:

```bash
uv run app
# or, as a module (handy if the `app` script isn't picked up):
uv run python -m src.app
```

`uv run` works the same on Windows, macOS, and Linux — uv manages the Python
interpreter and the virtual environment for you, so there's no need to worry
about `python` vs `python3` vs the Windows `py` launcher, or activating a venv.

If you'd rather activate the virtual environment manually and run `python`
directly, `uv sync` created it at `.venv`:

```bash
# macOS / Linux
source .venv/bin/activate

# Windows (PowerShell)
.venv\Scripts\Activate.ps1

# then:
python -m src.app
```

## Setup with Docker

```bash
# Build the image:
docker build -t seed-app .
# Run the image:
docker run -it seed-app
```

## Testing

Dev-only tools live in the `dev` dependency group in `pyproject.toml` and are
installed by `uv sync`.

```bash
# Run the test suite (with coverage on the src module)
uv run pytest
# Run the linter
uv run ruff check .
```

## Misc Notes

- Edit the `name` and metadata in `pyproject.toml` to reflect your app, and
  uncomment/fill in the `authors` field with your name and email.
- Add runtime dependencies under `[project].dependencies` and dev tools under
  `[dependency-groups].dev`.
