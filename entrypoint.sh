#!/bin/bash
# Install git hooks scripts
pre-commit install

# Create venv and install python dependencies
python3 -m venv venv && venv/bin/pip install --upgrade pip setuptools
/workspace/venv/bin/pip install -r requirements.txt
