#!/usr/bin/env bash

git push heroku $(git rev-parse --abbrev-ref HEAD):main
heroku run tests
