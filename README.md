# arch-i3-usb

This [ALMA](https://github.com/r-darwish/alma) preset installs a fully usable and persistent Arch Linux system on a LiveUSB.

Note that the installation of the oh-my-zsh and MiniVim config files means the host computer must have internet access during image creation.

The preset files are simple TOML files which can be easily customised to add new packages or installation steps.

## FAQ

> Do I need to wipe the entire USB device when installing this?

Yes, until [this issue](https://github.com/r-darwish/alma/issues/46) is closed, ALMA will always format the devices given (note that you can create an image for use with qemu for testing).

> Can I easily install AUR packages?

At the moment you would need to write a preset to install an AUR helper and call it in the scripts, or install the packages separately.

Ideally, this would be done in ALMA directly in the future as covered in [this issue](https://github.com/r-darwish/alma/issues/43).

> I want to set a different locale.

At the moment ALMA sets the locale to `en_US.UTF-8`. You could easily override this by adding a new preset, or create a PR to ALMA to allow custom locales there.

> You should add package X.

Please create a PR or issues for anything you think is missing!

## Screenshot

![Screenshot from qemu](./screenshot.png "Screenshot")


## Usage

Provide ALMA the preset directory, specifying the `ALMA_USER` and `TIMEZONE` environment variables:

i.e. for an image to use with qemu:

```bash
ALMA_USER="test" TIMEZONE="Europe/Madrid" sudo -E alma create --presets ./arch-i3-usb/preset --image 5GiB image_name.img
```

The `$ALMA_USER` and `$TIMEZONE` environment variables must be pased to ALMA. You will be asked to set the user password and root password during installation.

## What is included
### User
The user given by `ALMA_USER` is created with a home directory and XDG directories, and given passwordless sudo access.

The root password is also set during installation.

### Microcode

Both Intel and AMD microcode is installed (the correct one will be loaded on boot).

### Networking

NetworkManager and dhcpcd are installed.

nm-applet is run on startup.

### Video drivers

AMD, Intel and Nvidia (proprietary) drivers are installed. The correct one should be loaded according to your system.

### Window server

This preset uses Xorg, not Wayland. A Wayland installation could be created by modifying the Xorg and i3 components (for Wayland and sway respectively).

### PulseAudio

PulseAudio is installed along with bluez for bluetooth headsets (use `bluetoothctl` to connect and pair devices).

pavucontrol can be launched with Meta+v to control the volumes and output devices.

### Virtual Terminal

Urxvt is installed and can be launched with Meta+Enter.

### Display Manager

i3 is installed, a sample configuration is included in this preset.

Meta+r can be used to launch programs via dmenu.

i3status is also installed as a status bar, a sample configuration is included in this preset.

### Text editors

vim and gvim are installed, along with the MiniVim configuration.

emacs and nano are also installed.

### Shell

zsh is installed, along with the oh-my-zsh configuration.

### Web browsers

Firefox and Chromium are installed.

lynx and elinks are also installed for use on the CLI.

### File management

thunar is installed, and can be launch with Meta+f.

### Filesystem tools

gparted and ntfs-3g are installed for working with NTFS partitions and resizing partitions.

### SSH

The openssh client is installed.

### git

git is installed.

### Multimedia

mpd is installed for playing music, along with the ncmpcpp and Ario frontends. It is not configured by default (since the music directory is unknown).

mpv is installed.

### KeepassXC

KeepassXC is installed for password databases.

