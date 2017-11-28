# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    20_create-swarm.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:31 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:32 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 20. Create a local swarm, the Char virtual machine should be its manager.
#------------------------------------------------------------------------------#

# Create a local swarm.
# More about swarms: https://www.youtube.com/watch?v=KC4Ad1DS8xU
docker swarm init --advertise-addr $VM_IP
