#!/bin/bash

######################################################################
# Goal:
# if $STAGE is set and equal to staging, move the stage config to /tmp/values.conf
# otherwise, move the prod config to /tmp/values.conf
######################################################################

function writeProductionValues() {
  cp prod_values.conf /tmp/values.conf
}

function writeStageValues() {
  cp stage_values.conf /tmp/values.conf
}

if [[ "$STAGE" = 'staging'  ]]; then
  writeStageValues
else
  writeProductionValues
fi

# just to prove this worked.
cat /tmp/values.conf
echo ''