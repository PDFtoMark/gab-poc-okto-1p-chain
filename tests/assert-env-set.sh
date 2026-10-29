#!/usr/bin/env bash
echo "POC_TEST_SCRIPT_SECRET_SHA256=$(printf '%s' "$SECRET" | sha256sum | cut -d' ' -f1)"
