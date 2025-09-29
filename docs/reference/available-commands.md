---
title: "Available commands"
table_of_contents: True
---

# Available Commands

This section will describe the commands are provided by the *bluez* snap.

## Commands

The purpose of the *bluez* snap is to provide the userspace part of the Linux
Bluetooth stack. This includes the bluetoothd service and various tools that
are part of the BlueZ suite. The following table lists the tools shipped by the
snap:

| Command            | Short description                                 |
|--------------------|---------------------------------------------------|
| bluez.bluetoothctl | An interactive command-line interface to BlueZ    |
| bluez.btattach     | Attaches a serial UART to the BT stack            |
| bluez.btmgmt       | An interactive cli to talk to the kernel BT stack |
| bluez.btmon        | A bluetooth monitor                               |
| bluez.hciattach    | DEPRECATED in favor of btattach                   |
| bluez.hciconfig    | DEPRECATED in favor of bluetoothctl and btmgmt    |
| bluez.hcidump      | DEPRECATED in favor of btmon                      |
| bluez.hcitool      | DEPRECATED in favor of bluetoothctl and btmgmt    |
| bluez.sdptool      | DEPRECATED in favor of bluetoothctl and btmgmt    |
