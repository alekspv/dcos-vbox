#!/bin/bash

export DCOS_LOGIN_UNAME="admin"
export DCOS_LOGIN_PW="admin"
export DCOS_SSL_ENABLED=true
export MASTER_HOSTS="172.28.128.21"
export SLAVE_HOSTS="172.28.128.101"
export WINDOWS_HOSTS="172.28.128.31"

dcos-shell pytest --capture=sys --windows-only  open_source_tests/test_dcos_diagnostics.py