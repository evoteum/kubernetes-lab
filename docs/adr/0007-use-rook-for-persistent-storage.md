# 7. Use Rook for Persistent Storage

Date: 2025-12-31

## Status

Accepted

Supersedes [6. Use Longhorn for Persistent Storage](0006-use-longhorn-for-persistent-storage.md)

## Context

[Longhorn](https://longhorn.io/) seems like it should be a good product, but the release structure that is currently in place does not provide the flexibility that we are seeking.
- Previous helm chart versions are not kept available
- regressions are allowed to remain in releases.

## Decision

We will use [Rook](https://rook.io/) for persistent storage.

Although it brings in a non-CNCF project, it is, itself, a graduated level project. Additionally, Rook + Ceph is the industry standard way to provide kubernetes native storage on kubernetes and prevents the need for an externally manage storage appliance such as a NAS.

## Consequences

We will be able to create PVs.
