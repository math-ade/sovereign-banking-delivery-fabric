# 🏦 Zero-Trust Sovereign Banking Portal & Automated Delivery Fabric

A production-grade, multi-tool DevSecOps delivery engine designed to modernize legacy Java enterprise applications. This repository demonstrates the end-to-end orchestration of **Jenkins, Tomcat, Terraform, Ansible, Docker, and Kubernetes** within a zero-trust, automated deployment pipeline.

---

## 🗺️ The Architecture Analogy (The Automated Armored Mint)
To understand how these six tools hand off workloads seamlessly:
1. **Jenkins (The Master Project Manager) 👷‍♂️:** Intercepts code commits, coordinates security scans, and governs the execution pipeline from start to finish.
2. **Tomcat (The Secure Core Vault) 🗄️:** Acts as the legacy, high-security application runtime server compiling and processing heavy corporate financial transactions (`.war` archives).
3. **Docker (The Security Armor) 📦:** Seals the Tomcat vault inside an immutable, tamper-evident container image that behaves identically across any environment.
4. **Terraform (The Real Estate Developer) 🏗️:** Programmatically provisions cloud infrastructure landing zones and emits target host inventory maps (`inventory.ini`).
5. **Ansible (The Utility Installer & Hardener) 🛠️:** Consumes the inventory map to execute idempotent playbooks, hardening the operating system and configuring runtime network parameters.
6. **Kubernetes (The Sovereign Armed Garrison) 🧠:** Orchestrates 3 self-healing container replicas behind a high-availability NodePort gateway (`Port 32500`), equipped with active Liveness/Readiness health probes.

---

## ⚙️ The Multi-Tool Integration Flowchart

```text
[ Developer Commit ] 
       │
       ▼
 👷‍♂️ [ JENKINS MASTER ] ───(Trigger Pipeline Run)───┐
       │                                           │
       ▼                                           ▼
 🗄️ [ TOMCAT BUILD STAGE ]                  🏗️ [ TERRAFORM STAGE ]
 (Compiles Fin-App into .war)               (Provisions Cloud Nodes)
       │                                           │
       ▼                                           ▼
 🐳 [ DOCKER ENCAPSULATION ]                 🛠️ [ ANSIBLE HARDENING ]
 (Seals Tomcat + WAR into Image)            (Configures Nodes & OS)
       │                                           │
       └───────────────────┬───────────────────────┘
                           ▼
                 🧠 [ KUBERNETES GARRISON ]
                 (Launches 3 Self-Healing Pods)
                           │
                           ▼
              [ Secure Port 32500 Window ]
```

---

## 🛠️ Pipeline Automation Stages Implemented

### 👷‍♂️ Stage 1: Continuous Integration (Jenkins)
- Orchestrates multi-stage declarative pipelines (`Jenkinsfile`) linking artifact compilation, infrastructure provisioning, container packaging, and cluster rolling updates.

### 🗄️ Stage 2: Legacy Java Compilation (Tomcat Containerization)
- Strips default server bloat from `tomcat:10-jdk17-openjdk-slim` base images and mounts corporate transaction ledgers as immutable root applications (`ROOT.war`).

### 🏗️ Stage 3: Infrastructure-as-Code Provisioning (Terraform)
- Automates backend node environment modeling, outputting clean host execution maps for downstream configuration tools.

### 🛠️ Stage 4: Configuration Management (Ansible)
- Applies idempotent kernel tuning (e.g., `net.ipv4.ip_forward`) and unboxes container runtime runtimes safely without configuration drift.

### 🧠 Stage 5: Container Orchestration & Health Governance (Kubernetes)
- Deploys a production-grade 3-replica financial workload. Implements strict `livenessProbe` and `readinessProbe` HTTP checks to prevent traffic routing during JVM warmup loops.
