## Vagrant CI - Jenkins

Provisions a CI server in Jenkins 2. 
It would be setup on localhost on port 6060. Default port was 8080 but lets switch that to 6060. 

This port on the guest machine is mapped to (forwared) to host port.

1. Clone this repo
  ```
  git clone https://github.com/colinbut/vagrant-ci-jenkins.git
  ```

2. vagrant up
  ```
  vagrant up
  ```

3. navigate to http://127.0.0.1:6060 on your browser
