# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    28_service-replicas2.sh                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:51 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:52 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 28. Launch a 42school/marine-squad in two replicas.
# This service will be named... marines and will be on the overmind network.
#------------------------------------------------------------------------------#

# Launch a service in two replicas.
docker service create --name $SERVICE_NAME3 \
                      --network $OVERLAY_NETWORK \
                      --replicas 2 \
                      -e OC_DEFAULT_USER=$SERVICE_USER \
                      -e OC_DEFAULT_PASS=$SERVICE_PASS \
                      42school/marine-squad
