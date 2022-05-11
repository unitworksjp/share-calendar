#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# 次に、コンテナのメインプロセス(DockerfileでCMDとして設定されているもの)を実行します。
exec "$@"