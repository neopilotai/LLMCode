#!/usr/bin/env bash

set -e
set -x

mypy llmcode
ruff check llmcode tests scripts
ruff format llmcode tests --check