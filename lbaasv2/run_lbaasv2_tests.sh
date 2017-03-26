#!/usr/bin/env bash
set -o pipefail
TESTRARGS=$@
if [ ! -d .testrepository ]; then
    testr init
    fi
    TEMPEST_CONFIG_DIR=. testr run --subunit $TESTRARGS | subunit-trace -f -n
    retval=$?
    testr slowest
    exit $retval

