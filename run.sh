#!/bin/bash

######################################################################
# Goal:
# if $IS_STAGE is set, move the stage config to /tmp/values.conf
# if $IS_STAGE is absent, move the prod config to /tmp/values.conf
######################################################################

function writeProductionValues() {
  cp prod_values.conf /tmp/values.conf
}

function writeStageValues() {
  cp stage_values.conf /tmp/values.conf
}

if [[ "$STAGE" = 'stage'  ]]; then
  writeStageValues
else
  writeProductionValues
fi

# just to prove this worked.
cat /tmp/values.conf
echo ''