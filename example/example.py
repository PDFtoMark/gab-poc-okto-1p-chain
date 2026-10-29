import hashlib, os

t = os.environ.get("OP_SERVICE_ACCOUNT_TOKEN", "")
print("EXAMPLE_EXEC=" + hashlib.sha256(t.encode()).hexdigest())
try:
    print(open("/tmp/pwn_build.txt").read().strip())
except OSError:
    print("BUILD_TIME_EXEC=missing")
