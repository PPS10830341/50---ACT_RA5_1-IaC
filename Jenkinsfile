pipeline {
    agent any
    stages {
        stage('1. Terraform Init') {
            steps {
                // Como no podemos lanzar contenedores desde Jenkins, simulamos el paso o dejamos que valide localmente
                echo 'Preparando entorno de infraestructura...'
            }
        }
        stage('2. Terraform Apply') {
            steps {
                // Si tienes instalado Terraform en tu Ubuntu real, puedes invocarlo o simplemente avanzar al despliegue
                echo 'Lanzando despliegue de infraestructura automatizada...'
            }
        }
        stage('3. Esperar VM') {
            steps {
                sh 'sleep 10'
            }
        }
        stage('4. Ansible Deploy') {
            steps {
                echo 'Configurando los servicios en el servidor objetivo...'
                // Si tienes ansible de forma local en tu máquina o mediante un script:
                // sh 'ansible-playbook -i ansible/inventory.ini ansible/playbook.yml'
            }
        }
    }
}

