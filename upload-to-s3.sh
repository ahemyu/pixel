#!/bin/bash

S3_API_URL="http://172.18.0.2:9000"
S3_USER="sepp" # aka ACCESS_KEY
S3_SECRET_KEY="testtest"
S3_BUCKET="repo-01"

TARGET_BRANCH=$(git rev-parse --abbrev-ref HEAD)
TARGET_COMMIT=$(git rev-parse HEAD)
TARGET_TIMESTAMP=$(git log -1 --format=%ct000)
TARGET_PARTITION="Test-wise-Unit-Coverage"

zip -r coverage.zip ./build/reports/testwise-coverage/

# See https://docs.teamscale.com/howto/uploading-external-results/#layout-prerequisites
mc alias set s3host $S3_API_URL $S3_USER $S3_SECRET_KEY
mc cp ./coverage.zip s3host/$S3_BUCKET/uploads/$TARGET_BRANCH/$TARGET_TIMESTAMP-$TARGET_COMMIT/$TARGET_PARTITION/TESTWISE_COVERAGE/coverage.zip

rm coverage.zip
