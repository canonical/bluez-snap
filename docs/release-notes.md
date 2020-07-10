---
title: "Release Notes"
table_of_contents: False
---

# Release Notes

The version numbers mentioned on this page correspond to those released in the
snap store.

You can check with the following command which version you have currently installed:

```text
$ snap info bluez
name:      bluez
summary:   Bluez for Ubuntu
publisher: Canonical✓
store-url: https://snapcraft.io/bluez
contact:   https://code.launchpad.net/~snappy-hwe-team/snappy-hwe-snaps/+git/bluez
license:   unset
description: |
  no description
commands:
  - bluez.bluetoothctl
  - bluez.btattach
  - bluez.btmgmt
  - bluez.btmon
  - bluez.hciattach
  - bluez.hciconfig
  - bluez.hcidump
  - bluez.hcitool
  - bluez.meshctl
  - bluez.obexctl
  - bluez.sdptool
services:
  bluez:      simple, enabled, active
  bluez.obex: simple, enabled, active
snap-id:      JmzJi9kQvHUWddZ32PDJpBRXUpGRxvNS
tracking:     latest/stable
refresh-date: today at 09:29 UTC
channels:
  latest/stable:    5.47-4     2020-04-06 (204) 4MB -
  latest/candidate: 5.48-1     2020-07-08 (229) 4MB -
  latest/beta:      5.48-1     2020-07-03 (229) 4MB -
  latest/edge:      5.48-2-dev 2020-07-03 (234) 4MB -
  20/stable:        –                               
  20/candidate:     –                               
  20/beta:          5.53-1     2020-06-25 (217) 5MB -
  20/edge:          5.53-1-dev 2020-06-25 (214) 5MB -
installed:          5.47-4                (204) 4MB -
```

The detailed changelog for each version can be consulted in the sources for each track:

* For track 20, [here](https://git.launchpad.net/~snappy-hwe-team/snappy-hwe-snaps/+git/bluez/tree/ChangeLog?h=snap-20)
* For track latest (note again this is not actually the more modern bluez),
[here](https://git.launchpad.net/~snappy-hwe-team/snappy-hwe-snaps/+git/bluez/tree/ChangeLog)
