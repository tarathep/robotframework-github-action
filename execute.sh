REPORTS_DIR=$ROBOT_REPORTS_DIR
TESTS_DIR=$ROBOT_TESTS_DIR

# REPORTS_DIR=/mnt/c/Users/bokee/cdc/robotframework-github-action/test
# TESTS_DIR=/mnt/c/Users/bokee/cdc/robotframework-github-action/test

docker run \
 -v $REPORTS_DIR:/opt/robotframework/reports:Z \
 -v $TESTS_DIR:/opt/robotframework/tests:Z \
 ppodgorsek/robot-framework:latest

#  /mnt/c/Users/bokee/cdc/robotframework-github-action/robot