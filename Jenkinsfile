pipeline {
  agent any
  stages {
    stage('install python') {
      steps {
        sh 'curl https:\\\\pyenv.run | bash'
      }
    }
    stage('enable python 3.8') {
      steps {
        sh 'pyenv install 3.8.0 && pyevn global 3.8.0'
      }
    }
    stage('install poetry') {
      steps {
        sh 'curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python'
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