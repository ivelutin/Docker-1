# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    30_service-scale.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:39 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:40 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 30. Increase the number of copies of the marines service up to twenty,
# because there’s never enough Marines to eliminate Zergs.
# (Remember to take a look at the tasks and logs of the servic you’ll see)
#------------------------------------------------------------------------------#

# Increase the number of copies in a service.
docker service scale $SERVICE_NAME3=20
