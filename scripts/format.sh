#!/usr/bin/env bash
set -x

ruff check llmcode tests scripts --fix
ruff format llmcode tests scripts