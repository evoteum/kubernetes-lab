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



## Table of Contents

[//]: # (REQUIRED)
[//]: # (Delete as appropriate)

1. [Security](#security)
1. [Background](#background)
1. [Install](#install)
1. [Usage](#usage)
1. [Any extra sections as required]
1. [Documentation](#documentation)
1. [Repository Configuration](#repository-configuration)
1. [API](#api)
1. [Maintainers](#maintainers)
1. [Thanks](#thanks)
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

## Install

[//]: # (Explain how to install the thing.)
[//]: # (OPTIONAL IF documentation repo)
[//]: # (ELSE REQUIRED)

Since we run hardware nodes, we cannot escape some level of "metal pets". We have, however, aimed to make nodes as
expendable and rebuildable as possible.

### 0. Ensure your local is useful

- username should be linux compatible
- public ssh key should be configured.

These values will be picked up by the builder.

### 1. Building Operating System Images

Although NixOS provides a delightful level of repeatability, it still suffers from the first boot problem; you need to
tell it what hostname and IP address to operate on at first boot, before a flake has had a chance to run.

Additionally, Ubuntu is still the most popular server distro across the industry, so we chose to stick with Ubuntu.

To build all images,
- ensure [ubuntu-image/config.yaml](ubuntu-image/build_images.py) is correct.
- run `python3 ubuntu-image/build_images.py`

To build a single image,
- note the ID of the node you wish to rebuild.
- ensure its entry in [ubuntu-image/config.yaml](ubuntu-image/build_images.py) is correct.
- run `python3 ubuntu-image/build_images.py --id [node id]`

### 2. Get the image on to the box

How you do this will depend on the model of the node. For example, if it is a Raspberry Pi, you can use the Raspberry Pi
Imager to flash the NVMe drive.

### 3. Rack the box

Because we are not animals.

### 4. Run the playbook

#### Cluster is running & node not particularly needed right now

Kubernetes will run Ansible at some point in the next 6 hours. If
that's ok and you'd rather grab a coffee, you can safely plug the box in and walk away.

#### Cluster is not running or node needed more urgently

Run

```shell
cd ansible
ansible-playbook site.yml
```

## Usage
[//]: # (REQUIRED)
[//]: # (Explain what the thing does. Use screenshots and/or videos.)



[//]: # (Extra sections)
[//]: # (OPTIONAL)
[//]: # (This should not be called "Extra Sections".)
[//]: # (This is a space for ≥0 sections to be included,)
[//]: # (each of which must have their own titles.)

## Key functionality

- "Private Cloud": A local GitOps-managed cluster that self-builds images and deploys apps via ArgoCD.
- "Hybrid CI/CD": A pipeline that builds on your x86 NUCs and deploys ARM workloads to the Pis — showcases multi-arch orchestration.
- "Self-contained observability suite": Prometheus + Loki + Tempo + Grafana with alerting to Matrix or Slack.
- "Automated bare-metal rebuilds": Your current image-builder + Artifactory combo, documented and published.



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
