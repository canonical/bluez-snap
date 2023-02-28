#!/bin/bash
#
# Copyright (C) 2023 Canonical Ltd
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

set -ex

snap_name=bluez
cicd_path=cicd
if [ $# -eq 0 ]
then set -- google:
fi

num_snaps=0
for _ in "$snap_name"_*_*.snap; do
    num_snaps=$((num_snaps + 1))
done
if [ "$num_snaps" -eq 0 ]; then
    printf "ERROR: no local %s snap found that can be tested\n" "$snap_name"
    exit 1
fi
if [ "$num_snaps" -ne 1 ]; then
    printf "ERROR: more than one %s snap found that can be tested\n" "$snap_name"
    exit 1
fi

if [ ! -d "$cicd_path" ]; then
    git clone https://github.com/snapcore/system-snaps-cicd-tools.git "$cicd_path"
fi
spread "$@"
