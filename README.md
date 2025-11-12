[//]: # (STANDARD README)
[//]: # (https://github.com/RichardLitt/standard-readme)
[//]: # (----------------------------------------------)
[//]: # (Uncomment optional sections as required)
[//]: # (----------------------------------------------)

[//]: # (Title)
[//]: # (Match repository name)
[//]: # (REQUIRED)

# kubernetes-lab

[//]: # (Banner)
[//]: # (OPTIONAL)
[//]: # (Must not have its own title)
[//]: # (Must link to local image in current repository)


[//]: # (Badges)
[//]: # (OPTIONAL)
[//]: # (Must not have its own title)


[//]: # (Short description)
[//]: # (REQUIRED)
[//]: # (An overview of the intentions of this repo)
[//]: # (Must not have its own title)
[//]: # (Must be less than 120 characters)
[//]: # (Must match GitHub's description)

Our Kubernetes Lab

[//]: # (Long Description)
[//]: # (OPTIONAL)
[//]: # (Must not have its own title)
[//]: # (A detailed description of the repo)

A collection of repositories forming a CNCF-aligned, bare-metal Kubernetes platform.

## Table of Contents

[//]: # (REQUIRED)
[//]: # (Delete as appropriate)

1. [Security](#security)
1. [Background](#background)
1. [Install](#install)
1. [Usage](#usage)
1. [Documentation](#documentation)
1. [Repository Configuration](#repository-configuration)
1. [Contributing](#contributing)
1. [License](#license)

## Security
[//]: # (OPTIONAL)
[//]: # (May go here if it is important to highlight security concerns.)

The Kubernetes Lab is currently only available via VPN. 

## Background
[//]: # (OPTIONAL)
[//]: # (Explain the motivation and abstract dependencies for this repo)

The intention of this lab environment is to offer members the opportunity to experiment on a production-like Kubernetes
cluster without the restrictions of a live production environment. This allows us to purposefully break things, trial
new software, explore new structures and generally do stuff that is not "boring and dependable".

This repos serves at the hub for the others that configure all aspects of the cluster.

| Repository                                                                                | Purpose                                             |
|-------------------------------------------------------------------------------------------|-----------------------------------------------------|
| [kubernetes-lab](https://github.com/evoteum/kubernetes-lab-docs)                          | Documentation, ADRs, portfolio index. You are here! |
| [kubernetes-lab-bootstrap](https://github.com/evoteum/kubernetes-lab-bootstrap)           | Brings up the cluster (Ansible, Bash, Tinkerbell)   |
| [kubernetes-lab-infrastructure](https://github.com/evoteum/kubernetes-lab-infrastructure) | Long-lived infra (OpenTofu)                         |
| [kubernetes-lab-config](https://github.com/evoteum/kubernetes-lab-config)                 | Argo CD GitOps configuration                        |
| [kubernetes-lab-services](https://github.com/evoteum/kubernetes-lab-services)             | Workloads and family apps                           |

## Install

[//]: # (Explain how to install the thing.)
[//]: # (OPTIONAL IF documentation repo)
[//]: # (ELSE REQUIRED)

See [kubernetes-lab-bootstrap](https://github.com/evoteum/kubernetes-lab-bootstrap)

## Usage
[//]: # (REQUIRED)
[//]: # (Explain what the thing does. Use screenshots and/or videos.)

Add your username and public SSH key to users.yaml then you can `kubectl` to your hearts content.

[//]: # (Extra sections)
[//]: # (OPTIONAL)
[//]: # (This should not be called "Extra Sections".)
[//]: # (This is a space for ≥0 sections to be included,)
[//]: # (each of which must have their own titles.)

## Documentation

Further documentation is in the [`docs`](docs/) directory.

## Repository Configuration

> [!WARNING]  
> This repo is controlled by OpenTofu in the [estate-repos](https://github.com/evoteum/estate-repos) repository.  
>  
> Manual configuration changes will be overwritten the next time OpenTofu runs.


[//]: # (## API)
[//]: # (OPTIONAL)
[//]: # (Describe exported functions and objects)



[//]: # (## Maintainers)
[//]: # (OPTIONAL)
[//]: # (List maintainers for this repository)
[//]: # (along with one way of contacting them - GitHub link or email.)



[//]: # (## Thanks)
[//]: # (OPTIONAL)
[//]: # (State anyone or anything that significantly)
[//]: # (helped with the development of this project)



## Contributing
[//]: # (REQUIRED)
If you need any help, please log an issue and one of our team will get back to you.

PRs are welcome.


## License
[//]: # (REQUIRED)

### Code

All source code in this repository is licenced under the [GNU Affero General Public License v3.0 (AGPL-3.0)](https://www.gnu.org/licenses/agpl-3.0.en.html). A copy of this is provided in the [LICENSE](LICENSE).

### Non-code content

All non-code content in this repository, including but not limited to images, diagrams or prose documentation, is licenced under the [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) licence.
