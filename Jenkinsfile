pipeline {
  agent any
  stages {
    stage('set python and install poetry') {
      steps {
        sh 'pyevn global 3.8.0'
        sh 'python --version'
        sh '''
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python'''
      }
    }
    stage('poetry dependencies install') {
      steps {
        sh 'poetry install'
      }
    }
    stage('pytest') {
      steps {
        sh 'poetry run pytest tests/'
      }
    }
    stage('package') {
      steps {
        sh 'poetry build'
      }
    }
  }
}