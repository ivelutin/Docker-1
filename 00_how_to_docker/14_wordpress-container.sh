# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    14_wordpress-container.sh                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:53 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:54 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 14. Launch a wordpress container as a background task, just for fun.
# The container should be named lair, its 80 port should be bound to the 8080
# port of the virtual machine, and it should be able to use the spawning-pool
# container as a database service. You can try to access lair on your machine
# via a web browser, with the IP address of the virtual machine as a URL.
#------------------------------------------------------------------------------#

# Pulls the docker container.
docker pull wordpress

# Launch a wordpress container as a background task.
WORDPRESS_ID=$(docker run --detach \
                          --name $WORDPRESS_CONTAINER \
                          --publish $WORDPRESS_PORT:80 \
                          --link $DATABASE_CONTAINER:mysql wordpress)
export WORDPRESS_ID
