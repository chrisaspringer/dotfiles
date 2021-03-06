# Laravel Valet

## Introduction

Valet is a Laravel development environment for Mac minimalists. It configures your Mac to always run Nginx in the background when your machine starts. Then, using DnsMasq, Valet proxies all requests to point to sites installed on your local machine.

[https://laravel.com/docs/master/valet](https://laravel.com/docs/master/valet)

## Installation

It's best to leave on the Laravel docs for installation instructions. Essentially, you want to install MySQL and PHP natively on your maching. The Valet installation process will take care of the rest.

## Configuration

### Top-Level Domain

The default TLD for Valet websites is `.test` however, I prefer use of `.localhost`. That can be quickly configured via the following command:

```bash
valet tld localhost
```

### Parking the Workspace

I keep all of my web projects within a `~/Workspace` folder. I like to park that folder for quick serving of my Laravel websites.

```bash
cd ~/Workspace
valet park
```

That command will register the `~/Workspace` folder as a path that Valet should search for sites.

## Troubeshooting

On occassion, more often after I've upgraded macOS, Valet runs into issues. I find it easier to fix by uninstalling the full system and reinstalling.

The commands below should help get you there.

### Stop Relevant Services

```bash
brew services stop nginx
brew services stop dnsmasq
brew services cleanup
```

You can confirm servcies are stopped via:

```bash
brew services list
```

### Uninstall Valet

```bash
valet stop
valet uninstall
```

### Remove from filesystem

```bash
cd /Users/${USER} && rm -rf .valet
cd /Users/${USER}/.config && rm -rf valet
```

## Resources

* [Adam Watham Troubleshooting Guide](https://gist.github.com/adamwathan/6ea40e90a804ea2b3f9f24146d86ad7f)
