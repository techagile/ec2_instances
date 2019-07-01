# ec2_instances
Quick example to show how to start, stop, terminate ec2 instances

# futher moved with setting up Jenkinsfile to start / stop / terminate ec2 instances
* make sure Jenkins is installed & configured on the host, where the Jenkinsfile run
So I setup Jenkins service on AWS host & configured, where to make sure:
- jre service is installed
- Install Jenkins, as per https://jenkins.io/doc/book/installing/#debianubuntu
- Configure Jenkins service
- Add pipeline plugin
- Make sure github plugin is installed

* create Jenkins pipeline from Jenkins ui
- first make sure to enable configure ingress rule in security group for the port 8080 
- invoke Jenkins UI via AWS instance i.e. http://<aws_public_ip>:8080
- create new project, pipeline
- configure pipeline:
-- provide git repo URL, cred (if not public)
- Save

* build the pipeline (yes, we can do it schedule but let see how it runs)
- click build now and see the magic! i.e. you can go to AWS instance and can see a new EC2 instance, spin up

