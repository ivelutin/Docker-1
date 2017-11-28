# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    23_overlay-network.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:24 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:24 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 23. Create an overlay-type internal network that you will name overmind.
#------------------------------------------------------------------------------#

# Create an overlay internal network.
docker network create --internal --driver overlay $OVERLAY_NETWORK
