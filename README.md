![logo](https://raw.githubusercontent.com/azerothcore/azerothcore.github.io/master/images/logo-github.png)

# AzerothCore Ansible

This repository uses [Ansible](https://ansible.com/) to set up and run [AzerothCore](https://github.com/azerothcore/azerothcore-wotlk) - a World of Warcraft 3.3.5a (Wrath of the Lichking) framework - on a [Ubuntu 22.04 server](https://ubuntu.com/server). It does not (officially) support other Linux distributions.

This project is designed to help you continue the educational spirit of AzerothCore and take advantage of its work, **not** host public facing World of Warcraft servers.

**Note**: you _do not_ need to provide the World of Warcraft client. This repository also **does not** contain the client. We **cannot** (and **will not**) help you obtain the World of Warcraft client.

## Original Author

Thanks to the original author, https://github.com/Zoidwaffle/AzerothCore-Ansible.git, for the starting point. I took their work and have, in my opinion, improved upon it (and will continue to do so.)

## Support

- For support with this Ansible code base, checkout the [author's Discord server](https://discord.gg/h2UVFBsXXp)
- For support with [AzerothCore](https://github.com/azerothcore/azerothcore-wotlk), checkout their excellent [Discord server](https://discord.gg/bekucdQK7w)

### Further support

If you need support with Linux, Ansible, programming, and more, then this repository's sponsor [Upload Academy](https://upload.academy/) has various options available. Please consider supporting by buying a micro-course - they're perfect for beginners and people trying to break into the IT field. 

## Too long; didn't read

Straight up instructions are below, however you are expected to know how-to operate a Linux server, the command-line, edit files, and other simple sytems administrative tasks. The job of administrating _any_ Linux server isn't easy.

1. You will need to install Ansible either on the server you want to run the AzerothCore on or on a "control node" that can connect to the server;
1. Now you need to update `inventory.txt` to support whatever option you selected above - you can leave it as-is if you're running Ansible on the server directly;
1. Next, execute `ansible-playerbook dependencies.yml -i inventory.txt --ask--become-pass` to set up the server - this is the only time you will need root privileges on the server;
1. Now edit `group_vars/all.yml` if you require a custom configuration (i.e. `azerothcore_realmlist_ip` will need to change if you're not running AzerothCore locally);
1. Finally, run `ansible-playbook all.yml -i inventory.txt`

Update your client's `realmlist.wtf` file to point the `set realmlist` option to the `azerothcore_realmlist_ip` you chose in your configure (`group_vars/all.yml`)

## _Missing_ Features

- I disabled the database backup features of the original code as I believe that something that should be done outside of Ansible (but it can be managed by Ansible)
- There's no support for setting up multiple world server, but I'll add the ability to launch a PTR server soon
- I want to add the feature to download a pre-compiled binary (which I'll eventually provide) instead of the source and compiling everything
- Docker support will never be added as it's pointless for this and there's work being done there anyway
