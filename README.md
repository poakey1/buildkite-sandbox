# buildkite-sandbox

A sandbox repository for playing around or trying new things.

## JFrog Artifactory CLI
### Running using a buildkite build
To start the buildkite agent locally run `docker-compose run --rm buildkite-agent --name buildkite-agent`.

### Running locally :-
To upload a dummy file to artifactory run `make upload`
To delete the dummy file (and it's parent folder) run `make delete`
