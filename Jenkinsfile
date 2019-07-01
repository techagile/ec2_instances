pipeline {
	agent any
	stages {
		stage('create ec2 instance') {
			steps {
				echo "ec2 instance initiated"
				sh 'ansible-playbook -i hosts ec2.yml'
			}
		}
	}
	post {
		always {
	        	echo "this will always run"
	    	}
	    success {
	        echo "in case of success, pipeline"
	    }
	    failure {
	        echo "in case of failure, pipeline"
	        //mail to: pranav.aggwl@gmail.com, subject: 'Pipeline failed!'
	    }
	    unstable {
	        echo "in case unstable, pipeline"
	    }
	    changed {
	        echo "in case changed, pipeline"
	    }
	}
}
