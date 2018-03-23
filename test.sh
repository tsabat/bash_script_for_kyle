#!/bin/bash

# if you set the value to staging, you're in the stage env
export STAGE=staging; ./run.sh

# if you set the value to production, or anthing else, you're in production
export STAGE=production; ./run.sh
export STAGE=some_random_value; ./run.sh

# if you set NOTHING you're also in production
unset STAGE
./run.sh