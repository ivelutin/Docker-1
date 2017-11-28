# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    21_create-machine2.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:28 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:29 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 21. Create another virtual machine with docker-machine using the virtualbox
# driver, and name it Aiur.
#------------------------------------------------------------------------------#

# Create another virtual machine ;)
docker-machine create --driver=virtualbox $VM_NAME2
