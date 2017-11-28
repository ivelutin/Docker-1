# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    06_nginx-container.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 16:55:30 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 16:55:31 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 6. Launch an nginx container, available on Docker Hub, as a background task.
# It should be named overlord, be able to restart on its own, and have its
# 80 port attached to the 5000 port of Char.
# You can check that your container functions properly by visiting
# http://<ip-de-char>:5000 on your web browser.
#------------------------------------------------------------------------------#

# Gets the nginx container.
docker pull nginx

# Runs the container in the background (detached).
SERVER_ID=$(docker run --detach \
                       --name $SERVER_NAME \
                       --publish $VM_IP:$SERVER_PORT:80 \
                       --restart=always nginx)
export SERVER_ID
