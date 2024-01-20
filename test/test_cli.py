from taskah.cli import cli


def test_cli_empty_ok(clirunner):
    res = clirunner.invoke(cli, [])

    assert res.exit_code == 0


def test_cli_help_ok(clirunner):
    res = clirunner.invoke(cli, ['--help'])

    assert res.exit_code == 0
