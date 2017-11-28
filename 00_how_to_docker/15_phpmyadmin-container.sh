# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    15_phpmyadmin-container.sh                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:51 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:52 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 15. Launch a phpmyadmin container as a background task.
# It should be named roach-warden, its 80 port should be bound to the 8081 port
# of the virtual machine and it should be able to explore the database stored
# in the spawning-pool container.
#------------------------------------------------------------------------------#

# Pulls the docker container.
docker pull phpmyadmin

# Launch a phpmyadmin container as a background task.
PHPMYADMIN_ID=$(docker run --detach \
                           --name $PHPMYADMIN_NAME \
                           --publish $PHPMYADMIN_PORT:80 \
                           --link $DATABASE_CONTAINER:db phpmyadmin/phpmyadmin)
export PHPMYADMIN_ID
