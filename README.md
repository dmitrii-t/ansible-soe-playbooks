# Ansible playbooks to setup standard operating environment (SOE)

### Synopsis

The project contains several Ansible playbooks to setup standard operating
environment (SOE) or fix the existing setup. Best exaple when you might 
need this project is if you have a new computer without dev tools installed.

Feel free to run selected playbooks or all of them at once.

### Prerequisites

1. Debian-based Linux installed
1. Ansible installed

### Getting Started

To run all playbooks at once execute form the root of the project

```bash
./run
```

To run particular playbook run `ansible-playbook`command passing path to 
the playbook as a parameter. For example to install Golang run the following 
from the root of the project
```bash
ansible-playbook ./playbook/golang/golang.yml
```

