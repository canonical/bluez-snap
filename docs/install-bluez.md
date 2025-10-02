---
title: "Install bluez"
table_of_contents: True
---

# bluez snap tracks

The bluez snap has different tracks that should be used for different Ubuntu Core releases:

* 24: Contains upstream 5.72 and has a core24 base.
* 22: Contains upstream 5.64 and has a core22 base. 
* 20: Contains upstream 5.53 and has a core20 base.
* latest: Contains upstream 5.48 and has a core base. Despite the unfortunate
  name (there are historical reasons for that) it is the oldest version.

The naming scheme for the *bluez* snap version includes the BlueZ version being
packaged in the snap and a version separated by a hypen for the snap itself
(for instance, 5.64-7, for BlueZ 5.64 and snap subversion 7). Whenever the snap
is updated but still provides BlueZ version 5.64 the last digit will be
incremented. The

```
$ snap info bluez
```

command shows the tracks, version and additional metadata for this snap.

# Install bluez

The *bluez* snap can be installed for a given track with:

```
$ snap install --channel=<track> bluez
```

It is recommended that the track matches the system's Ubuntu Core version.

To check that the bluez service is running as expected:

```
$ snap services
Service      Startup  Current  Notes
bluez.bluez  enabled  active   -
```
