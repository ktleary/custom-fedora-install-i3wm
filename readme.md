# Custom Fedora i3 Desktop

Based on minimal-fedora-install from @dushankw , this is my post Fedora 33
with btrfs adaptation, with personalized software removals and additions.

### Usage

- Obtain the netinstall iso from fedora and perform a 'Custom Install' and
  select only the Sound and Video option on the right (I find that Minimal
  Install does not provide sound and can be hard to configure after the fact)

## Partitions

The initial Fedora 33 btrfs was a bit tricky for me to adapt from the usual
ext4 setup. For my 120GB disk, As per lsblk I landed on:

| NAME | FSTYPE | FSVER LABEL | SIZE | MOUNTPOINT |
| ---- | ------ | ----------- | ---- | ---------- |
| sda  |        |             |      |            |
| sda1 | vfat   | FAT32       | 600M | /boot/efi  |
| sda2 | xfs    |             |      |            |
| sda3 | xfs    |             | 1G   | /boot      |
| sda4 |        |             |      |            |
| luks | btrfs  | fedora_host | 100G | /          |
| zram | SWAP   |             |      |            |

Original script instruction:

Finish your install and reboot.

Once booted, connect to the internet and run `bootstrap.sh` as root
(machine will reboot at the end), you should now have a functional desktop.

At this point you may run any other provisioning scripts you have written.

### Extras

There is an optional `extra-packages.sh` script that includes a number
of additional tools I find useful but do not belong in the base install.

Original source: https://github.com/dushankw/minimal-fedora-install
