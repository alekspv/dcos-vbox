#!/bin/sh

(cd windows; vagrant halt)

(cd ee-public-agent; vagrant halt)

(cd ee-private-agent; vagrant halt)

(cd master; vagrant halt)

(cd bootstrap; vagrant halt)

(cd bootstrap-ee; vagrant halt)
