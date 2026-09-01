# ==============================================================================
# 👷‍♂️ PHASE 1: THE REUSABLE JENKINS PIPELINE DECLARATION (CI/CD Manager)
# ==============================================================================
# File Reference: Jenkinsfile
# Purpose: Orchestrates compilation, infrastructure provisioning, and orchestration.
# ==============================================================================
jenkins_orchestration_fabric:
  pipeline_type: "Declarative Jenkins Core"
  agent: "any"
  stages:
    - stage: "🗄️ Artifact Compilation (Tomcat Preparation)"
      steps:
        - run: "mvn clean package # Generates transaction-ledger.war"
    - stage: "🏗️ Infrastructure Provisioning (Terraform)"
      steps:
        - run: "terraform init && terraform apply -auto-approve"
    - stage: "🛠️ Operating System Hardening (Ansible)"
      steps:
        - run: "ansible-playbook -i inventory.ini system-tune.yml"
    - stage: "🐳 Immutable Containerization (Docker)"
      steps:
        - run: "docker build -t sovereign-banking:v1 ."
    - stage: "🧠 Multi-Node Orchestration (Kubernetes)"
      steps:
        - run: "kubectl apply -f cluster-deployment.yaml"

---
# ==============================================================================
# 🗄️ PHASE 2: IMMUTABLE DOCKER APPLICATION FACTORY (Tomcat Enclosure)
# ==============================================================================
# File Reference: Dockerfile
# Purpose: Packages the compiled legacy Java corporate archive into Tomcat.
# ==============================================================================
container_blueprint:
  base_factory_image: "tomcat:10-jdk17-openjdk-slim"
  maintainer: "Adetunji Mathew Babatunde <adetunjimathewbabatunde@ymail.com>"
  build_operations:
    - remove_default_apps: "rm -rf /usr/local/tomcat/webapps/*"
    - injection_path: "/usr/local/tomcat/webapps/ROOT.war"
    - artifact_source: "target/transaction-ledger.war"
    - runtime_port: 8080
    - security_profile: "USER tomcat"

---
# ==============================================================================
# 🏗️ PHASE 3: DECLARATIVE INFRASTRUCTURE PROVISIONING (Terraform Developer)
# ==============================================================================
# File Reference: main.tf
# Purpose: Programmatically maps out backend nodes and writes inventories.
# ==============================================================================
infrastructure_as_code:
  provider: "hashicorp/local"
  version: "~> 2.4.0"
  resources:
    local_file: "inventory.ini"
    emitted_topology: |
      [production_cluster]
      k8s-master-node ansible_host=127.0.0.1 ansible_connection=local
      k8s-worker-node ansible_host=127.0.0.1 ansible_connection=local

---
# ==============================================================================
# 🛠️ PHASE 4: IDEMPOTENT PROCESS TUNING RUNTIME (Ansible Decorator)
# ==============================================================================
# File Reference: system-tune.yml
# Purpose: Audits system parameters and installs container drivers safely.
# ==============================================================================
- name: "🛠️ Infrastructure Hardening & Container Runtime Setup"
  hosts: production_cluster
  become: true
  tasks:
    - name: "📦 Step 4.1: Enforce Core Packages and Unzip Utilities"
      ansible.builtin.apt:
        name: [curl, unzip, containerd]
        state: present
    - name: "🔒 Step 4.2: Enforce Strict Linux Kernel Parameter Constraints"
      ansible.builtin.sysctl:
        name: net.ipv4.ip_forward
        value: '1'
        state: present
