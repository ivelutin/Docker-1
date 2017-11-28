# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    07_get-container-ip.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 16:55:42 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 16:55:43 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 7. Get the internal IP address of the overlord container without starting its
# shell and in one command.
#------------------------------------------------------------------------------#

# Get internal IP address of the container
SERVER_IP=$(docker inspect --format \
        '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $SERVER_ID)
echo $SERVER_IP
export SERVER_IP
