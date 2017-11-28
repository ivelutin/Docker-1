# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    31_services-delete.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:32 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:34 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 31. Force quit and delete all the services on the local swarm, in one command.
#------------------------------------------------------------------------------#

# Force quit and delete all the services on the local swarm.
docker swarm leave --force
