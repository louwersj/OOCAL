#!/bin/bash
# NAME:
#   showsshkeys.sh
#
# DESC:
#   Example script to show how you can use the oopcal functions to get the
#   public keys for a VM that have been promoted. Those keys can for example
#   be used to create a new OS account with trusted keys. This is in a way
#   the same as is done by the default Oracle templates who do create an
#   "opc" account with the trusted keys for login which have been selected
#   during the creation of the new instance.
#
# LOG:
# VERSION---DATE--------NAME-------------COMMENT
# 0.1       29APR2016   Johan Louwers    Initial upload to github.com
#
# LICENSE:
# Copyright (C) 2015  Johan Louwers
#
# This code is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This code is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this code; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
# *
# */

# ensure oopcal is loaded into the script
source /opt/oopcal/lib/oopcal.lib

 function runMain {
    # Get the number of keys available from the API. For this we will use the ccVmGetNumOfPublicKeys
    # function which is available from OOPCAL. In this example script we use it directly and not from
    # the library as is good practic when using the full OOPCAL set for scripting Oracle Public Cloud
    # VM's.

    mainNumberOfKeys="$(ccVmGetNumOfPublicKeys)"

    # Loop through the number of keys found, check the type of the key and if the key type is correct
    # we will use it to add to the account so it can be used as a trusted key. The key type we are
    # looking for in this case is the openssh-key type to be used.

    i="0"
    while [ $i -lt $mainNumberOfKeys ]
     do
       pubKey="$(ccVmGetPublicKeyType $i)"
       if [ $pubKey = "openssh-key" ]
        then
         ccVmGetPublicSshKey $i
       fi
      i=$[$i+1]
     done
 }

runMain
