# 6. Use Longhorn for Persistent Storage

Date: 2025-12-31

## Status

Superseded by [7. Use Rook for Persistent Storage](0007-use-rook-for-persistent-storage.md)

## Context

Need a way to create persistent storage volumes. This should be,
- kubernetes native
- on the CNCF project track

## Decision

We will use [Longhorn](https://longhorn.io/) because it is,
- kubernetes native
- an Incubating level CNCF project
- lighter than Rook

While [Rook](https://rook.io/) is a Graduated level CNCF project, it runs on Ceph, which is not a CNCF project.

## Consequences

We will be able to create PVs.
