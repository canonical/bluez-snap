#!/bin/bash -ex

# shellcheck source=tests/lib/snap-names.sh
. "$TESTSLIB"/snap-names.sh

# Remove all snaps not being the core, gadget, kernel or snap we're testing
for snap in /snap/*; do
	snap="${snap:6}"
	case "$snap" in
		README | bin | "$gadget_name" | "$kernel_name" | core* | snapd | "$SNAP_NAME")
			;;
		*)
			snap remove "$snap"
			;;
	esac
done

