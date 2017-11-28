# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    16_database-container-logs.sh                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:48 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:49 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 16. Look up the spawning-pool container’s logs in real time without
# running its shell
#------------------------------------------------------------------------------#

# Prints container's logs.
docker logs --follow $DATABASE_CONTAINER
