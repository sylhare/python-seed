FROM python:3.7-alpine

WORKDIR /app

RUN addgroup -S docker && adduser -S user -G docker
COPY --chown=user:docker src ./src
COPY --chown=user:docker requirements.txt ./
USER user

RUN pip install -r requirements.txt

RUN ls -la

CMD ["python", "-m", "src.app"]