# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    29_service-tasks.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:46 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:47 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 29. Display all the tasks of the marines service.
#------------------------------------------------------------------------------#

# Display all the tasks of the service.
docker service ps $SERVICE_NAME3
