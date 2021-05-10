# Testing the Vault Buildpack

The vault buildpack utilizes the instructions for testing [found on Heroku](https://devcenter.heroku.com/articles/buildpack-api#testing) which in turn is utilizing the [Buildpack TestRunner](https://github.com/heroku/heroku-buildpack-testrunner) based on [shUnit2](https://github.com/kward/shunit2/).

## Running Tests

First you have to set up an application
```bash
$ heroku create --buildpack https://github.com/heroku/heroku-buildpack-testrunner
```

Then you can execute the `run_tests.sh` scriopt after you have committed changes.
```bash
$ git add .
$ git commit -m "Test run"
$ ./run_tests.sh
```

Afterwards, tear down your environment with...
```bash
$ heroku apps:destroy -a <app_name>
$ git remote rm heroku
```