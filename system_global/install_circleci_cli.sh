#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# cf. アップデートは $ circleci update install を実行する
curl -fLSs https://circle.ci/cli | sudo bash

exit 0
