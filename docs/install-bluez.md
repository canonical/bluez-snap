---
title: "Install bluez"
table_of_contents: True
---

# Install bluez

Install the *bluez* snap via:

```text
$ snap install bluez
```

The snap is being downloaded and installed. Observe that the snap has been
installed like follows:

```text
$ snap install bluez
bluez 5.48-4 from Canonical✓ installed
```

The naming scheme for the *bluez* snap includes the current BlueZ version being
packaged in the snap (5.48 in this case) and the revision of the snap itself
(4th in this case). Whenever the snap is updated but still provides BlueZ
version 5.48 the last digit will be incremented.

The above output informs that BlueZ 5.48 has been installed on the system. This
effect is equivalent to typing

```text
$ sudo apt install bluez
```

on a classic Ubuntu flavor that you run on your desktop or laptop computer.

Let's list the snap plugs/slots for the snap:

```text
$ snap connections bluez
Interface          Plug                     Slot           Notes
bluetooth-control  bluez:bluetooth-control  -              -
bluez              bluez:client             bluez:service  -
home               bluez:home               -              -
network-control    bluez:network-control    -              -
uhid               bluez:uhid               :uhid          -
```

Note that the bluez:service slot is provided by the *bluez* snap
itself.

# bluez tracks and channels

The bluez snap has currently two tracks:

* __20__: Contains upstream version 5.53 and has a core20 base. The track name refers to the base snap and it is the convention being used at the moment.
* __latest__: Contains upstream version 5.48 and has a core16 base. Despite the unfortunate name (there are historical reasons for that) it is the oldest version. This is the default track for the moment.
