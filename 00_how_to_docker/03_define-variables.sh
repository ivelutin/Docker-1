# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    03_define-variables.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:34:25 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 14:34:32 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 3. Define the variables needed by your virtual machine Char in the general env
# of your terminal, so that you can run the docker ps command without errors.
#------------------------------------------------------------------------------#

# Define the variables of the VM in the general env of the terminal.
eval $(docker-machine env "$VM_NAME")
echo "Variables defined"
