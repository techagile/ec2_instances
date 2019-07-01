pipeline {
	agent any
	stages('create ec2 instance') {
		echo "ec2 instance initiated"
                sh 'ansible-playbook -i hosts ec2.yml'
	}
}
