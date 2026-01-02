# 8. Define Bespoke Ansible Roles for Kubernetes Cluster

Date: 2025-12-31

## Status

Accepted

Supersedes [5. Use geerlingguy.kubernetes Ansible Role](0005-use-geerlingguy-kubernetes-ansible-role.md)

## Context

The geerlingguy.kubernetes ansible role is designed for single controller kubernetes. We need a highly available
cluster, so three controllers are needed.

## Decision

We will build our own roles that build a highly available kubernetes cluster.

## Consequences

The resultant cluster can be built repeatedly and is highly available.