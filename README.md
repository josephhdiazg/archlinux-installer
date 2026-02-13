# archlinux-installer

## Description

This is a custom installer script for Arch Linux.

![screenshot](https://raw.githubusercontent.com/dotdc/media/main/archlinux-installer/archlinux-installer-screenshot.png "Archlinux-installer screenshot")

I made this installer for my personal use, feel free to fork and build your own.

This installer will:

- Use your existing disk layout and create 2 partitions, depending on ESP size:
  - An `ext4` partition for `/boot` if the ESP is smaller than 1024 MiB (with the ESP mounted as `/efi`), otherwise the ESP will be mounted as `/boot`
  - A `btrfs` partition for the system
- Configure BTRFS Subvolumes as follows:
  - `@` (`/`)
  - `@swap` (`/swap`)
  - `@tmp` (`/tmp`)
  - `@var` (`/var`)
  - `@log` (`/var/log`)
  - `@pkg` (`/var/pkg`)
  - `@libvirt` (`/var/lib/libvirt`) (optional)
  - `@docker` (`/var/lib/docker`) (optional)
- Configure the system
- Create a user/password
- Setup `snapper` and `snap-pac` for BTRFS Snapshots
- Change the root password
- Install packages, `paru` and some `AUR` packages
- Install the `refind` bootloader (no support for BIOS)
- Install KDE Plasma

⚠️ This installer won't format your disk, but you should have backups regardless! I will not be responsible for any data loss or damage to your computer.

## Configuration

`config-variables.sh` : Configuration file (packages, locale, timezone, user, hostname...)

## Usage

Once you have booted on Archlinux ISO :

```console
loadkeys [your keymap]
pacman -Sy archlinux-keyring git
git clone https://github.com/josephhdiazg/archlinux-installer.git
cd archlinux-installer
./archlinux-installer.sh
```

Then follow the steps!

## Contributing

Feel free to contribute to this project:

- Create an `Issue` to make a feature request, report a bug or share an idea.
- Create a `Pull Request` if you want to share code or anything useful to this project.
