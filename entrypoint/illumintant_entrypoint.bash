#!/bin/bash
set -e

# set up environment
export HOST_IP=$(ip route show | awk '/default/ {print $3}')
source "/opt/ros/$ROS_DISTRO/setup.bash"

# launch Illuminant and get pid
roscore &
export CORE_PID=$!

exec $@
