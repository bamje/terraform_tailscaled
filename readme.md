# Automating terrafrom deploy with github actions and Tailscale

This is a work in progress, testing github actions for learning purposes.
My goal is to automate terraform deploys on my homelab with github actions and tailscale.

What is needed:

- a proxmox host.
- a tailscale account and set it up for github actions
- secrets set up on github
- terraform plan to test on

## Tailscale set up

Following their official documentation:
[Tailscale with github actions](https://tailscale.com/kb/1276/tailscale-github-action/)

## Managing secrets on github

Following official docs:
[Github secrets - cli](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions?tool=cli)

## Github actions

Github actions is quite a bit deep topic, here is where to start:
[Github actons](https://docs.github.com/en/actions)
