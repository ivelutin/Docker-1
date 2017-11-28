# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    22_swarm-join.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:26 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:27 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 22. Turn Aiur into a slave of the local swarm in which Char is leader
# (the command to take control of Aiur is not requested).
#------------------------------------------------------------------------------#

# Manage join tokens
# https://docs.docker.com/engine/reference/commandline/swarm_join-token/
SWARM_TOKEN=$(docker swarm join-token worker -q)

# Join a swarm as a node and/or manager
# https://docs.docker.com/engine/reference/commandline/swarm_join/
docker swarm join --token $SWARM_TOKEN $VM_IP:$SWARM_PORT

export SWARM_TOKEN
