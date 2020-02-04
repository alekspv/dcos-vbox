#!/bin/sh

set -e

(cd bootstrap-ee; vagrant up)

(cd master; vagrant up)

(cd ee-public-agent; vagrant up)

(cd ee-private-agent; vagrant up)

(cd windows; vagrant up)

