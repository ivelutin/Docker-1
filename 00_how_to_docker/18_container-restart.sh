# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    18_container-restart.sh                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:44 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:45 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 18. Relaunch the overlord container.
#------------------------------------------------------------------------------#

# Restart a container.
docker restart $SERVER_NAME
