# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    11_list-volumes.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:34:29 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:34:31 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 11. List all the Docker volumes created on the machine.
#------------------------------------------------------------------------------#

# List all the volumes created on the machine.
docker volume ls
