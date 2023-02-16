pipeline {
    agent any
	environment {
		PHP_VERSION = "7.4"
		PHP = "C:\Webserver\php-7.4\php.exe"
	}
    stages {
        stage('Build') { 
            steps {
				bat '$PHP composer.phar install --ignore-platform-reqs --dev --no-interaction --no-progress'
            }
        }
        stage('Test') { 
            steps {
				bat '$PHP vendor\\bin\\phpunit --log-junit phpunit.results.xml'
			}
        }
    }
	post {
		cleanup {
			junit 'phpunit.results.xml'
		}
	}
}