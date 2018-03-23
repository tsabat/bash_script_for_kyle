#!/bin/bash

export STAGE=stage; ./run.sh
export STAGE=production; ./run.sh
export STAGE=some_random_value; ./run.sh