# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    24_create-service.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:19 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:20 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 24. Launch a rabbitmq SERVICE that will be named orbital-command.
# You should define a specific user and password for the RabbitMQ service,
# they can be whatever you want. This service will be on the overmind network.
#------------------------------------------------------------------------------#

# Create a new service.
# https://docs.docker.com/engine/reference/commandline/service_create/
docker service create --name $SERVICE_NAME \
                      --network $OVERLAY_NETWORK \
                      -e RABBITMQ_DEFAULT_USER=$SERVICE_USER \
                      -e RABBITMQ_DEFAULT_PASS=$SERVICE_PASS \
                      rabbitmq
