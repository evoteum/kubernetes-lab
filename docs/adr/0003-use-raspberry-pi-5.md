# 3. Use Raspberry Pi 5

Date: 2025-11-04

## Status

Accepted

## Context

We wanted to build a Kubernetes cluster that offered high availability, which means high redundancy. The choice was
between,
- fewer, higher performance nodes.
- more, lower performance nodes.

## Decision

We will use the Raspberry Pi 5 as the primary node platform, as it is,
- highly tested
- economically viable to build a larger cluster
- PoE powered.

We will initially use 12 units.

## Consequences

### Advantages
- Highly redundant
- Low power consumption

### Disadvantages
- ARM processor, so can only run ARM workloads. We will mitigate this by adding some x86 nodes.
