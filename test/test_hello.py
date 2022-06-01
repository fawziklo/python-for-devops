from devopslib import hello


def test_hello_add():
    assert 4 == hello.add(2, 2)
