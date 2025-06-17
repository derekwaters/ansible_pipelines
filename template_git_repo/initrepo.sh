#!/usr/bin/env bash
pip install pre-commit

pre-commit install

# Test the precommit config
echo "Testing precommit"

pre-commit run --all-files
