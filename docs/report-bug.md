---
title: "Report a Bug"
table_of_contents: False
---

# Report a Bug

Bugs can be reported [as github issues](https://github.com/canonical/bluez-snap/issues).

## Information Required to Include in a Bug Report

When submitting a bug report, please attach system log coming from the journal:

 * $ journalctl --no-pager > system-log

Moreover please include the following information:

 * Bluetooth adapter information
 * List of paired devices
 * The HCI trace

### Bluetooth Adapter Information

```
$ sudo hciconfig -a
```

### List of Paired Devices

```
$ sudo bluetoothctl
[bluetooth]# show
[bluetooth]# devices
[bluetooth]# info <mac addr of any device you have problems with>
```

### The HCI Trace

The HCI trace is a snapshot of the communication between the Bluetooth host
(software stack) and the Bluetooth controller (the chip). The *btmon* tool can
be used to capture such for both live debugging and saving it for later. Note
that the HCI trace needs to be captured at the same time the Bluetooth issue
occurs.

When *btmon* is executed without any parameters, it will offer live debugging
which will print in a ‘tail -f’ fashion an ongoing exchange of the commands and
events between the stack and the chip. It is possible however to make it save
the data in the [snoop format](https://tools.ietf.org/html/rfc1761) which can
later be viewed using for example [Wireshark](https://www.wireshark.org).

Now, for live debugging (note that we need to connect the network-control plug
first to have the right permissions):

```
$ sudo snap connect bluez:network-control
$ sudo bluez.btmon
```

For saving it later in a .snoop format:

```
$ sudo bluez.btmon --write /tmp/hcitrace.snoop
```

You can also save the file in other snap-writable folders
such as /var/snap/bluez/current.

btmon allows several versions of it executed simultaneously. This allows
capturing logs as in the last example in one shell and viewing it live in
another.
