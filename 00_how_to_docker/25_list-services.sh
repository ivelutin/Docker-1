# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    25_list-services.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:12 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:13 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 25. List all the services of the local swarm.
#------------------------------------------------------------------------------#

# List all the services of the local swarm.
docker service ls
