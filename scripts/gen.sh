#!/usr/bin/env bash

rm -rf /transport/*

mkdir /transport/cpp-qt-client
/usr/local/bin/docker-entrypoint.sh generate \
	-i https://raw.githubusercontent.com/owncloud/libre-graph-api/main/api/openapi-spec/v0.0.yaml \
	-g cpp-qt-client \
	-t /resources/cpp-qt-client \
	-o /transport/cpp-qt-client \
	--enable-post-process-file
