## Configure AWS CodeBuild

In this step, we'll configure AWS CodeBuild to build our Python application based on the specifications we define. CodeBuild will take care of building and packaging our application for deployment. Follow these steps:

- In the AWS Management Console, navigate to the AWS CodeBuild service.
- Click on the "Create build project" button and provide project name and description.
- For the source provider, choose either "Github" or "AWS CodePipeline."
- Choose the option rather want to use "Public Repository" or "Repository in my Github account" and provide the URL with repository.
- Configure the build environment, such as the operating system, runtime, and compute resources required for your Python application.
- Specify the build commands, such as installing dependencies and running tests. Customize this based on your application's requirements.(https://github.com/RajBehere0190/Continuous-Integration-using-AWS/blob/main/Project/buildspec.yml)
- Set up the artifacts configuration to generate the build output required for deployment.
- Review the build project settings and click on the "Create build project" button to create your AWS CodeBuild project.
-![WhatsApp Image 2024-07-03 at 00 14 06_ec98dcaa](https://github.com/RajBehere0190/Continuous-Integration-using-AWS/assets/117808263/4f498768-2314-42d9-954b-45e4470e2fb4)
![WhatsApp Image 2024-07-03 at 00 16 19_bf6faf8b](https://github.com/RajBehere0190/Continuous-Integration-using-AWS/assets/117808263/d371de2f-ea65-4f2b-880b-f90a928a15e5)

![WhatsApp Image 2024-07-07 at 19 51 43_276329ac](https://github.com/user-attachments/assets/678b55fd-9236-42cd-b312-57a72686243f)

**Creating Parameters in System Manager**

This step is necessary for creating a parameters which then should be used in the build commands i.e buildspec.yml file to specify the docker credentials like username,password and docer registry url,
it also maintains the secrecy by keeping data safe.

- Search for System Manager in aws.
- Click on parameter store.
- Create parameters.
- Provide name and descriptions for example, /myapp/docker-credentials/username,/myapp/docker-credentials/password,/myapp/docker-registry/url.
  ![Screenshot 2024-07-07 195320](https://github.com/user-attachments/assets/4d14710b-9996-4f74-8cdb-df876a76339e)


**Configuring CodeDeploy**

- Create Application.
- Give Application name.
- Choose Compute Platform as per relevance as I selected EC2-on premise.

**Configuring EC2 Instance**

- Create an EC2 Instance.
- Host that instance on terminal i.e logged into it.
- Install CodeDeploy Agent on it by running commands follow (Project/CodeDeploy_Agent).
- Install the docker on it by running following command:
  sudo apt install docker.io -y
  
       
**Create an AWS CodePipeline**

- Go to the AWS Management Console and navigate to the AWS CodePipeline service.
- Click on the "Create pipeline" button.
- Provide a name for your pipeline and click on the "Next" button.
- For the source stage, select "GitHub" as the source provider.
- Connect your GitHub account to AWS CodePipeline and select your repository.
- Choose the branch you want to use for your pipeline.
- In the build stage, select "AWS CodeBuild" as the build provider.
- Create a new CodeBuild project by clicking on the "Create project" button.
- Configure the CodeBuild project with the necessary settings for your Python application, such as the build environment, build commands, and artifacts.
- Save the CodeBuild project and go back to CodePipeline.
- Continue configuring the pipeline stages, such as deploying your application using AWS Elastic Beanstalk or any other suitable deployment option.
- Review the pipeline configuration and click on the "Create pipeline" button to create your AWS CodePipeline.
 ![WhatsApp Image 2024-07-07 at 19 55 03_21c18298](https://github.com/RajBehere0190/Continuous-Integration-using-AWS/assets/117808263/c12f837b-9894-4c0f-9ca9-414bb0e358bc)



