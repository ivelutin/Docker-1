# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    13_print-container-vars.sh                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:03 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:05 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 13. Print the environment variables of the spawning-pool container in one
# command, to be sure that you have configured your container properly.
#------------------------------------------------------------------------------#

# Print the enviroment variables of the container.
docker inspect --format='{{.Config.Env}}' $DATABASE_CONTAINER
