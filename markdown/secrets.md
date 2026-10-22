# Basic secret management

## Table of contents

- [ssh](#ssh)
- [gpg](#gpg)
- [pass](#pass)
- [cryptsetup](#cryptsetup)

## ssh

### Install

    sudo apt install openssh # Debian
    pacman -S openssh # Arch

### Import/export a key pair

Copy the public and private keys to/from the `~/.ssh` directory.
Ensure that the private key has no extension and the public key's file name is `<private_key>.pub`.

### Generate a key pair

    ssh-keygen -t ed25519 -a 100 -f ~/.ssh/<key_name> -C <key_comment>

### Change a (private) key's passphrase

    ssh-keygen -p -f <private_key>

### Change a key pair's comment

Editing the comment of the public key via a text editor will not alter the private key.
The following command will work even if the the key pair's comments do not match.

    ssh-keygen -c -f <private_key>

Suggested comment: `<personal_email> <key_pair_creation_date>` .

### Rename a key pair

Does not require a special command.
Ensure that the public key's name has the usual relation with the private key's.

Suggested (private key) naming scheme: `<target_machine>_<source_machine>` .
Having the encryption algorithm in the name is not necessary since it is already written at the beginnng of the public key.

### Copy a local (public) key into a remote server's `~/.ssh/authorized_keys`

    ssh-copy-id -i <public_key> <username>@<server>

## gpg

### Install

    sudo apt install gnupg2 # Debian
    sudo pacman -S gnupg # Arch

### Import a key pair

    gpg --import <private_key>
    gpg --import <public_key>

### Export a key pair

    mkdir exported_keys && cd exported_keys
    gpg --output public_key.gpg --armor --export <key_id_or_email>
    gpg --output private_key.gpg --armor --export-secret-key <key_id_or_email>

### Generate a key pair (TODO)

    gpg --gen-key

## pass

### Install

    sudo apt install pass pass-otp git zbar # Debian
    sudo pacman -S pass pass-otp git zbar # Arch

`git` is needed to back up the password store.
`zbar` is needed to extract the link from the QR code usually provided for OTP generation.

### Initialize a (git-synced) password store

Requires an existing gpg key installed.

    pass init <gpg_key_id_or_email>
    pass git init
    pass git remote add origin git@github.com:<github_username>/.password-store.git

### Generate a new password and add metadata

    pass generate <new_file_name_without_.gpg> && pass edit <new_file_name_without_.gpg>

Run only the second command if the password is already known.

### Generate a new password, leaving the metadata unchanged

    pass generate -i <file_name_without_.gpg>

### Show a password and its metadata

    pass <file_name_without_.gpg>

### Add an OTP generator from a QR code

    zbarimg -q | pass otp insert <file_name_without_.gpg>

### Get an OTP code

    pass otp <file_name_without_.gpg>

## cryptsetup

### Install

    sudo apt install cryptsetup # Debian
    sudo pacman -S cryptsetup # Arch

All of the following commands require superuser privileges, so `sudo su` may save some typing.

### Open and mount an encrypted partition

    cryptsetup open /dev/<encrypted_partition> <partition_identifier>
    mount /dev/mapper/<partition_identifier> /mnt

where `<partition_identifier>` is some name (example: `drive`) that will be assigned to the encrypted volume by the computer while it is open.

### Unmount and close an encrypted partition

    umount /mnt
    cryptsetup close <partition_identifier>

where `<partition_identifier>` is the same as the previous section.

### Format a partition with luks and ext4

Use `lsblk` to know which device file (of the form `/dev/xxx`) to target and `fdisk` to format it.

    cryptsetup luksFormat /dev/<partition_file>
    # Open and mount the encrypted partition
    mkfs.ext4 /dev/mapper/<partition_identifier>
    # Optionally close and unmount the partition

Notice that a **partition** file must be used here.
For example, if the device file is `/dev/sdb`, then the partition file will be `/dev/sdbN` for some number `N`.

`<partition_identifier>` is the same as the previous subsections.
