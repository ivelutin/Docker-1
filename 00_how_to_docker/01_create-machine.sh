# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    01_create-machine.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:33:59 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 14:34:02 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 1. Create a virtual machine with docker-machine using the virtualbox driver,
# and named Char.
#------------------------------------------------------------------------------#

# Create a VM using the virtualbox diver.
docker-machine create --driver=virtualbox $VM_NAME
