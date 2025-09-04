**A simple Python application demonstrating CI/CD with Docker and GitHub Actions. The project supports multiple environments (dev, staging, prod) and uses environment files for configuration.**

**Features**
Python application (app.py) running on Flask (or similar).
Dockerized for consistent environment and deployment.
Multi-environment support via .env files:
.env.dev → Development
.env.staging → Staging
.env.prod → Production
CI/CD automated with GitHub Actions.
Easily test multiple container instances on different ports locally.

Project Structure
ci-cd-demo/
├── .github/workflows/   # GitHub Actions CI/CD workflows
├── .env.dev             # Development environment variables
├── .env.staging         # Staging environment variables
├── .env.prod            # Production environment variables
├── Dockerfile           # Docker image definition
├── app.py               # Python application
├── requirements.txt     # Python dependencies
└── README.md            # Project documentation

**Prerequisites
**
Docker
 installed on  system
Python 3.11
GitHub account (for CI/CD workflows)

Setup and Run Locally

Clone the repository
git clone https://github.com/panthangiEshwary/ci-cd-demo.git
cd ci-cd-demo


Build Docker image
docker build -t ci-cd-demo:dev .

Run the container on any host port
docker run -d -p 5001:5000 ci-cd-demo:dev
docker run -d -p 5002:5000 ci-cd-demo:dev


Access the app
Open in browser or curl:
curl http://localhost:5001
curl http://localhost:5002

CI/CD Workflow
GitHub Actions automatically builds and pushes Docker images on main branch updates.
Workflows can deploy to different environments using corresponding .env files.
Multi-stage builds in Docker are used to keep image size small.

Environment Variables
File	Description
.env.dev	Development config
.env.staging	Staging config
.env.prod	Production config

License
This project is open-source and free to use.
