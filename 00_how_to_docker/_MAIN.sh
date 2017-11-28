# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    _MAIN.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:38:25 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:38:26 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

shopt -s nullglob

declare n=0
declare prefix=0
declare filenames=(*)
declare count=$(ls -l | grep ^- | wc -l)

while [[ $n -le $count ]]; do
  prefix="${filenames[$n]:0:2}"
  if [[ $prefix =~ [0-9]+ ]]; then
    echo "->" ${filenames[$n]}
    echo "..."
    . ${filenames[$n]}
    echo "========================================\n"
  fi
  n=$(( n+1 ))
done
