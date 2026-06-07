pipeline {
    agent any
    stages {
        stage('1. Terraform Init') {
            steps {
                // Inicia Terraform
                sh 'docker run --rm -v $(pwd)/terraform:/app terraform init'
            }
        }
        stage('2. Terraform Apply') {
            steps {
                // Crea la máquina virtual de forma automática
                sh 'docker run --rm -v $(pwd)/terraform:/app terraform apply -auto-approve'
            }
        }
        stage('3. Esperar VM') {
            steps {
                // Espera 60 segundos a que la máquina virtual encienda por completo
                sh 'sleep 60'
            }
        }
        stage('4. Ansible Deploy') {
            steps {
                // Ejecuta Ansible para configurar los programas
                sh 'docker run --rm -v $(pwd)/ansible:/ansible ansible -i inventory.ini playbook.yml'
            }
        }
        stage('5. Verificación') {
            steps {
                // Revisa que los servicios web respondan correctamente
                sh 'curl -I http://$(cat terraform/output_ip.txt) | head -n 1'
            }
        }
    }
}

