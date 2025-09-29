---
title: "Bluetooth on Ubuntu Core"
table_of_contents: True
---

# Ubuntu Core Bluetooth Interfaces

Bluetooth on Ubuntu Core is provided by the BlueZ stack which is a well-known
Linux Bluetooth protocol stack. The lower-level part of it comes with the kernel
snap while the user-space portion can be installed as a separate snap.

## The Bluetooth interfaces on Ubuntu Core

On Ubuntu Core there are two
[interfaces](snapcraft.io/docs/supported-interfaces) that define permissions
for the Bluetooth stack:

 * bluetooth-control, that allows managing the kernel Bluetooth stack. The slot
   side of it is provided by the system, while the bluez snap connects with a
   plug to it.
 * bluez, that allows running and using the bluez service. The bluez snap
   installs the slot side of this interface, while plugs can be connected to it
   to be able to interact with the service by using the bluez dbus interface.
