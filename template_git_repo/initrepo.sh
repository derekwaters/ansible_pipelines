#!/usr/bin/env bash
pre-commit install

# Test the precommit config
echo "Testing precommit"

pre-commit run --all-files
