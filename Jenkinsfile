pipeline {
  agent any
  tools {
    maven 'Apache Maven 3.6.0'
  }
  stages {
    stage('checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/rudra-superrr/myProject.git'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean compile'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
        junit '**/target/surefire-reports/TEST-*.xml'
      }
    }
    stage('Package') {
      steps {
        sh 'mvn package'
      }
    }
  }
}
