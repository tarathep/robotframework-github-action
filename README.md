# Robot Framework GitHub Aaction
Github action can be used to run Robot Framework tests.

using https://hub.docker.com/r/ppodgorsek/robot-framework for base image.


## Custom on base ppodgorsek/robot-framework
can custom on ppodgorsek/robot-framework base image for install dependeincies or libraries

The versions used are:
- Robot Framework 4.1
- Robot Framework Browser Library 6.0.0
- Robot Framework DatabaseLibrary 1.2.4
- Robot Framework Datadriver 1.4.1
- Robot Framework DateTimeTZ 1.0.6
- Robot Framework Faker 5.0.0
- Robot Framework FTPLibrary 1.9
- Robot Framework IMAPLibrary 2 0.4.0
- Robot Framework Pabot 2.0.1
- Robot Framework Requests 0.9.1
- Robot Framework SeleniumLibrary 5.1.3
- Robot Framework SSHLibrary 3.7.0
- Axe Selenium Library 2.1.6
- Firefox ESR 78
- Chromium 86.0
- Amazon AWS CLI 1.20.6

## Example usage

Run with chrome:

```yaml
jobs:
  robot_test:
    runs-on: ubuntu-latest
    - name: Robot Framework
      uses: tarathep/robotframework-github-action@v0.1.7
      with:
        tests_dir: '${{ github.workspace }}/tests/robot'
        reports_dir: '${{ github.workspace }}/tests/robot/reports'
```




## Configurations

Available configurations in with block:

| Name                     | Default                    | Description                                               |
| ------------------------ | -------------              | ----------------------------------------------            |
| image                    | ppodgorsek/robot-framework | Custom image name for execute robot framework             |
| image_version            | latest                     | Custom tag verion image for execute robot framework       |
| tests_dir                | robot_tests                | Directory where Robot tests are located in the repository |
| reports_dir              | reports                    | Where will the report from test be saved                  |
| allowed_shared_memory    | '1g'                       | How much container can use shared memory                  |
| browser                  | 'chrome'                   | Available options chrome / firefox                        |
| robot_threads            | 1                          | Change this > 1 if you want to run tests in parallel      |
| pabot_options            | ''                         | These are only used if robot_threads > 1                  |
| robot_options            | ''                         | Pass extra settings for robot command                     |
| screen_color_depth       | 24                         | Color depth of the virtual screen                         |
| screen_height            | 1080                       | Height of the virtual screen                              |
| screen_width             | 1920                       | Width of the virtual screen                               |



credit ref. https://github.com/joonvena/robotframework-docker-action
