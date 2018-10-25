#!/bin/sh
# wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku container:login
heroku container:push web --app terlins/cicd-buzz
