#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
heroku login -e _ -u _ --password=bd88dab9-8449-42ae-85ce-ae018dd72710 registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
