#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if command -v tectonic >/dev/null 2>&1; then
  tectonic -X compile jql_unrare.tex
else
  latexmk -pdf -interaction=nonstopmode jql_unrare.tex
fi
