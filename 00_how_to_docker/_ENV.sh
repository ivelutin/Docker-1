# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    _ENV.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:38:03 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:38:18 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Declare enviroment variables.
declare VM_IP
declare SERVER_ID
declare SERVER_IP
declare DATABASE_ID
declare WORDPRESS_ID
declare PHPMYADMIN_ID
declare FLASK_ID
declare SWARM_TOKEN

# Export enviroment variables.
export VM_NAME="Char"
export VM_NAME2="Aiur"
export SERVER_NAME="overlord"
export SERVER_PORT="5000"
export VOLUME_NAME="hatchery"
export DATABASE_NAME="zerglings"
export DATABASE_PASS="Kerrigan"
export DATABASE_CONTAINER="spawning-pool"
export WORDPRESS_CONTAINER="lair"
export WORDPRESS_PORT="8080"
export PHPMYADMIN_PORT="8081"
export PHPMYADMIN_NAME="roach-warden"
export FLASK_CONTAINER="Abathur"
export FLASK_PATH="~/root"
export FLASK_PORT="3000"
export SWARM_PORT="2377"
export OVERLAY_NETWORK="overmind"
export SERVICE_NAME="orbital-command"
export SERVICE_USER="pipi"
export SERVICE_PASS="chuchadetumadre666"
export SERVICE_NAME2="engineering-bay"
export SERVICE_NAME3="marines"
