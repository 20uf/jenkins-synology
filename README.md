# jenkins-ci-php-synology

> Dockerized Jenkins CI with PHP for Synology docker

[![Build Status](https://travis-ci.org/20uf/jenkins-ci-php-synology.svg)](https://travis-ci.org/20uf/jenkins-ci-php-synology)

The Synology Dockerized Jenkins PHP gives you everything you need to use Jenkins on Synology DSM to automate your deployements and continuous integration.

## Requirements

* [DiskStation Manager 6.0](https://www.synology.com/fr-fr/dsm/6.0)
* [DSM package Docker](https://www.synology.com/en-us/dsm/app_packages/Docker)

## Running

Create a container and configure ports

[![Step 1](assets/step1.png)]()

Enable auto restart

[![Step 2](assets/step2.png)]()

Create a folder on your Synology docker and assigned the rights neccessaires, then mount /var/jenkins_homes

[![Step 3](assets/step3.png)]()

[![Step 4](assets/step4.png)]()

[![Step 5](assets/success_console.png)]()

Validate and jenkins is avaliable on http://your-host:8080

## License

Copyright &copy; 2016 [20uf](http://github.com/20uf). Licensed under the terms of the [MIT license](LICENSE.md).
