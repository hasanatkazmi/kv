pipeline {
  agent any
  stages {
    stage('install toolchain') {
      steps {
        sh '''rm -rf /var/lib/jenkins/.pyenv

curl https://pyenv.run | bash

export PATH="/var/lib/jenkins/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"'''
        sh 'pyenv install 3.8.0 && pyevn global 3.8.0'
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