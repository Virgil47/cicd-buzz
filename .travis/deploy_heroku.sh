#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
docker login --username=_ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app terlins/cicd-buzz
