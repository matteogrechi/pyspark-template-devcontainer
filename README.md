# Spark Template Project

A minimal, opinionated template for building and running Apache Spark Python (PySpark) applications in a development container. The devcontainer includes a 3‑node Spark standalone cluster (1 master + 2 workers) for local development and testing.

## Key features
- Ready for Python (PySpark) apps
- Example job(s) included
- CI-friendly, container/devcontainer compatible (Ubuntu 24.04)
- Devcontainer ships a development environment plus a 3‑node Spark cluster

## Devcontainer / cluster overview
- To run: launch the devcontainer (e.g., VS Code Remote - Containers → Reopen in Container). The Spark cluster is provided inside the devcontainer and is typically started automatically on container start.
- Cluster layout:
    - spark-master (master) — Spark URL: spark://localhost:7077
    - spark-worker-1 (worker) — worker web UI: http://localhost:8081
    - spark-worker-2 (worker) — worker web UI: http://localhost:8082
    - master web UI: http://localhost:8080
- If the cluster is not started automatically, check project scripts (e.g., scripts or docker-compose) or use the container README for start/shutdown commands.
- To open Spark docs in the host browser:
    "$BROWSER" https://spark.apache.org/docs/latest/

## Quick checks
- Verify master UI: open http://localhost:8080
- Verify workers UI: open http://localhost:8081 and http://localhost:8082
- Confirm Spark master reachable:
    - spark-submit --master spark://localhost:7077 --version
    - or run spark-shell --master spark://localhost:7077

## Quick start (Python / PySpark)
1. Use the container Python: /bin/python3
    - The devcontainer provides /bin/python3; prefer that for running scripts or creating virtual environments inside the container.
    - Note: inside the development container, dependencies listed in `requirements.txt` are installed automatically on container startup, so running `pip install -r requirements.txt` is usually not required inside the container. If you run outside the container or need to update deps manually, run `pip install -r requirements.txt`.
2. Submit to the devcontainer cluster:
    - spark-submit --master spark://localhost:7077 examples/pyspark_example.py
