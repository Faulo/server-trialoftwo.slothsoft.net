pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
				bat 'composer install --ignore-platform-reqs --dev --no-interaction --no-progress --prefer-lowest'
            }
        }
        stage('Test') { 
            steps {
				bat 'vendor\\bin\\phpunit --log-junit phpunit.results.xml'
			}
        }
    }
	post {
		cleanup {
			junit 'phpunit.results.xml'
		}
	}
}