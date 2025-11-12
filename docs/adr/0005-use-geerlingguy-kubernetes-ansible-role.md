# 5. Use geerlingguy.kubernetes Ansible Role

Date: 2025-11-07

## Status

Accepted

## Context

To provision the first Kubernetes control-plane node on bare metal, we need automation that can run without any pre-existing orchestration or agent.

Most modern configuration tools assume that a Kubernetes cluster already exists. Ansible, however, only requires SSH access and Python, making it the only tool capable of reliably bootstrapping the initial node from nothing.

With Ansible established as the foundation, the remaining question is, should we,
- write a custom role from scratch?
- reuse an existing, well-tested community role?


## Decision

We will use the
[geerlingguy.kubernetes](https://galaxy.ansible.com/ui/standalone/roles/geerlingguy/kubernetes/documentation/) Ansible
role to configure the initial control-plane node.

This role is:
- Well-tested; over 250k downloads
- Actively maintained; over 20 contributors and multiple commits per month.
- Authored by Jeff Geerling, who is widely regarded as an Ansible expert and *literally* wrote the book on the subject
  - [Ansible for Kubernetes](https://www.ansibleforkubernetes.com/)
  - [Ansible for DevOps](https://www.ansiblefordevops.com/)

Using a trusted community role allows us to focus on higher-level automation rather than re-implementing base
provisioning logic.

## Consequences

Consequences
- Pros:
  - Faster delivery
  - improved reliability
  - reduced maintenance burden thanks to community testing and updates.
- Cons:
  - Slightly less granular control over implementation details and versioning.
- Mitigation:
  - Role version is pinned in requirements.yml; additional configuration and overrides are handled through Ansible
    variables or supplementary tasks.

This approach balances pragmatism and maintainability; we gain a stable foundation built by an acknowledged domain
expert while preserving flexibility to extend or replace it later.
