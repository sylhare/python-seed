FROM python:3.14-alpine

# Bring in the uv binary from its official image.
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

WORKDIR /app

# Install the app (and its dependencies) into the system environment.
COPY pyproject.toml README.md LICENSE ./
COPY src ./src
RUN uv pip install --system --no-cache .

# Run as a non-root user.
RUN addgroup -S docker && adduser -S user -G docker
USER user

CMD ["python", "-m", "src.app"]
