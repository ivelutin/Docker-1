# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    05_run-container.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:55:08 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 14:55:10 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 5. Launch the hello-world container, and make sure that it prints its welcome
# message, then leaves it.
#------------------------------------------------------------------------------#

# Runs the hello-world container.
docker run hello-world
