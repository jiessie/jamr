#!/bin/bash
set -eo pipefail

# usage: create a config.sh script, source it, and then run ./TRAIN.sh to train the model

if [ -z "$JAMR_HOME" ]; then
    echo 'Error: please source config script'
    exit 1
fi

pushd ${JAMR_HOME}/scripts/amr-evaluation
./evaluation.sh ${MODEL_DIR}/dev.decode.allstages ${DEV_FILE} 2>&1 | tee -a "${MODEL_DIR}/dev_evaluation"
echo ""
./evaluation.sh ${MODEL_DIR}/test.decode.allstages ${TEST_FILE} 2>&1 | tee -a "${MODEL_DIR}/test_evaluation"
popd

echo ""
