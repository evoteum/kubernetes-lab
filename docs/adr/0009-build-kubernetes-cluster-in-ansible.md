# 9. Build Kubernetes Cluster in Ansible

Date: 2025-12-31

## Status

Accepted

Supersedes [2. Provision Metal with Tinkerbell](0002-provision-metal-with-tinkerbell.md)

## Context

Tinkerbell requires an existing Kubernetes cluster, which is not possible on day 0.

## Decision

We will build
- our initial cluster using Ansible.
- Drydock, to allow fully Kubernetes native day 0 provisioning.

As such, this is not decision against Tinkerbell, but more of a repositioning of it.

## Consequences

We will have a functioning Kubernetes cluster, but operating system provisioning must be done manually.