pipeline {
	agent any
	
	stages {
		stage('Test') {
			steps {
				bat 'C:/Ruby25-x64/bin/cucumber -f html -o C:/amazon_test_result.html'
			}
		}
	}

}