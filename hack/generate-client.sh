#!/usr/bin/env bash
set -eo pipefail

if [ -L "${0}" ]
then
    ROOT=$(realpath -e "$(dirname "$(readlink -e "${0}")")/..")
else
    ROOT=$(realpath -e "$(dirname "${0}")/..")
fi

SPEC="${SPEC:-https://dl.kleister.tech/openapi/1.0.0-alpha1.yml}"

docker run --rm \
	-v "${ROOT}":/generate \
	openapitools/openapi-generator-cli:v5.1.0 \
	generate \
	-c /generate/openapi.yml \
	-g ruby \
	--git-repo-id kleister-ruby \
	--git-user-id kleister \
	--http-user-agent kleister-ruby/\#{VERSION} \
	-i "${SPEC}" \
	-o /generate \
	-t /generate/hack/openapi/templates \
	--strict-spec true
