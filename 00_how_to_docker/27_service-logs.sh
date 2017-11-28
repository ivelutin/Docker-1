# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    27_service-logs.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:57 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:58 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 27. Get the real-time logs of one the tasks of the engineering-bay service.
#------------------------------------------------------------------------------#

# Get the real-time logs.
docker service logs $SERVICE_NAME2 --follow
