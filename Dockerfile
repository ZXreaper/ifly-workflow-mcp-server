FROM python:3.11.11-slim

RUN pip install uv

WORKDIR /app

COPY . /app

ENV CONFIG_PATH='./config.yaml'

CMD ["uv", "run", "python", "./src/mcp_server/server.py"]
