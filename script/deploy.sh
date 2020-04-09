#! /usr/bin/env #!/usr/bin/env bash
set -e
echo "tag the app"
docker tag the_app ypereiro/monolithic-shop:$(git rev-parse HEAD)
echo "push"
docker push ypereiro/the-app:$(git rev-parse HEAD)
