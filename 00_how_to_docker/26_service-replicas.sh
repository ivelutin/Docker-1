# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    26_service-replicas.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:04 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:05 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 26. Launch a 42school/engineering-bay service in two replicas.
# This service will be named engineering-bay and
# will be on the overmind network.
#------------------------------------------------------------------------------#

# Launch a service in two replicas.
docker service create --name $SERVICE_NAME2 \
                      --network $OVERLAY_NETWORK \
                      -e OC_DEFAULT_USER=$SERVICE_USER \
                      -e OC_DEFAULT_PASS=$SERVICE_PASS \
                      --replicas 2 \
                      42school/$SERVICE_NAME2
