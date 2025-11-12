# 2. Provision Metal with Tinkerbell

Date: 2025-11-03

## Status

Accepted

## Context

Running our own bare metal servers means that we needed some way of provisioning those hosts. Methods considered
include the following.

### Manually Install Operating System & Configure with Ansible

#### Advantages
- Easy
- The "traditional" method
- Fine for a few machines

#### Disadvantages
- labour intensive, not scalable
- Configuring live instances with Ansible often leads to configuration drift

### ubuntu-image + cloud-init

#### Advantages
- Should allow hosts to have correct configuration before first boot.

#### Disadvantages
- Can only be run on real Ubuntu. Does not work in a container.
- We were simply unable to make it work, after a whole day of persuasion even using the example image definition. See our [ubuntu-image-builder](https://github.com/evoteum/ubuntu-image-builder) repo.
- Would still entail manually flashing disks.

### NixOS

#### Advantages

- fantastic reproducibility

#### Disadvantages

- huge learning curve
- not widely used across the industry
- still needs first boot configuration

### Foreman / Cobbler

#### Advantages
- Proven PXE automation tools with long track records
- Suitable for hybrid environments

#### Disadvantages
- Legacy stack; less modern integration with Kubernetes
- Adds another management plane to maintain

### Canonical's Metal As A Service, MAAS

#### Advantages
- One of the leading methods of provisioning bare metal machines.

#### Disadvantages
- somewhat compute intensive and thus incompatible with the hardware available to the lab right now.


## Decision

We will use [Tinkerbell](https://tinkerbell.org/) to provision our bare metal machines.

- Utilises PXE to boot from network
- cloud-init uses correct configuration per host


#### Advantages

- Makes hosts immutable, so we can treat our metal like cattle, not kittens. More of a "Cloud Native" experience.
- New metal can be added to Kubernetes automatically, simply by plugging it into ethernet.
- Removes the need for Ansible beyond bootstrapping the first host. Sorry, [Jeff](https://www.jeffgeerling.com/).

#### Disadvantages
- Requires Tinkerbell manifest. 
- Requires a Kubernetes cluster, so one host *does* need to be provisioned using the "traditional" flash an OS and configure with Ansible method. This is a one time job though, so it is dramatically better than doing that with all hosts forever. Furthermore, that first controller can be used to provision 3 controllers, and then nuked and turned into a worker.

## Consequences

Enables Kubernetes to be the source of truth and control not only for our applications, but also for
our metal. Awesome.