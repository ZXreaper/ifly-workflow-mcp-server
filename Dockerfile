FROM python:3.11.11-slim

RUN pip install uv

WORKDIR /app

COPY . /app

ENV FLOWS='[ \
  { \
    "flow_id": "id1", \
    "name": "flow1", \
    "description": "desc1", \
    "api_key": "key1:secret1" \
  } \
]'

CMD ["uv", "run", "python", "./src/mcp_server/server.py"]
