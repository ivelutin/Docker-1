# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    02_get-machine-ip.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:34:14 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 14:34:16 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 2. Get the IP address of the Char virtual machine.
#------------------------------------------------------------------------------#

# Get the IP address of the VM.
VM_IP=$(docker-machine ip $VM_NAME)
export VM_IP

echo "Virtual Machine $VM_NAME IP:" $VM_IP
