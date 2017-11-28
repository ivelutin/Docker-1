# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    32_containers-delete.sh                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:17 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:18 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 32. Force quit and delete all the containers (whatever their status), in one
# command.
#------------------------------------------------------------------------------#

# Force quit and delete all the containers
docker rm --force $(docker ps -a -q)
