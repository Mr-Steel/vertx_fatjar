#!/bin/bash

#
# fatjar-sample	Startup script for sample fatjar
#
SCRIPTDIR=$(dirname "$0")
BASEDIR=$(dirname "$SCRIPTDIR")

JAVA_OPTS="-server -Xmx1G -XX:NewRatio=50 -XX:+HeapDumpOnOutOfMemoryError -XX:+UseG1GC"
JAVA_OPTS="$JAVA_OPTS -XX:HeapDumpPath=/srv/headpdumps"

JAR_FILE="$BASEDIR/fatjar-sample-*-fat.jar"

function start() {
    echo "Starting JAR_FILE"
    START_SCRIPT="/usr/bin/java $JAVA_OPTS -jar $JAR_FILE"
    echo $START_SCRIPT
    exec $START_SCRIPT
}

start

exit 0
