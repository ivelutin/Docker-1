# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    34_machine-delete.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:35:13 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:35:59 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh


# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 34. Delete the Aiur virtual machine without using rm -rf.
#------------------------------------------------------------------------------#

# Delete a virtual machine.
docker-machine rm $VM_NAME2 --force
