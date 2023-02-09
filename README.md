 Simple Pipeline Demo

This repository contains a simple Flask application and a Jenkins pipeline for building, testing, and deploying the application using Docker Compose.
 Simple Pipeline Demo


## Jenkins Pipeline
The Jenkins pipeline is defined in the `Jenkinsfile` and consists of three stages: `Build`, `Test`, and `Deploy`. The pipeline can be triggered automatically when changes are pushed to the GitHub repository, or manually through the Jenkins web interface.

The `Build` stage builds a Docker image for the Flask application using the Dockerfile and docker-compose.

The `Test` stage runs automated tests using the `pytest` testing framework inside the app container.

The `Deploy` stage starts the containers defined in the `docker-compose.yml` file, which runs the Flask application and makes it accessible at `http://localhost:8080`.

## Getting Started
1. Clone this repository to your local machine
2. [Docker](https://www.docker.com/)
3. Run app and Jenkins via this command `docker-compose up --build` 
4. Create a new Jenkins pipeline and configure the source code repository and trigger options
5. Run the pipeline and verify that the Flask application is deployed successfully

Note: This is a simple example and may not cover all the requirements of a real-world production pipeline. You may need to modify or extend this pipeline to fit the specific needs of your application.
