#!/bin/bash
# Install git hooks scripts
pre-commit install

# Create venv and install python dependencies
python3.10 -m venv venv && venv/bin/python3.10 -m pip install --upgrade pip setuptools
/workspace/venv/bin/pip install -r requirements.txt
