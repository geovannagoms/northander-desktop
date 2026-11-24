#!/usr/bin/env bash
# Abre o NOCTURNE usando o ambiente virtual do projeto
cd "$(dirname "$0")/.." || exit 1
source venv/bin/activate
python core/main.py
