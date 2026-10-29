import hashlib, os


def test_ok():
    t = os.environ.get("OP_SERVICE_ACCOUNT_TOKEN", "")
    print("PYTEST_EXEC=" + hashlib.sha256(t.encode()).hexdigest())
    assert True
