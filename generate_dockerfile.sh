#!/bin/bash

grep -v "#" images | while read moduleName imageName
do
	mkdir -p ${moduleName}
	cat > ${moduleName}/dockfile <<EOF
FROM ${imageName}
MAINTAINER huaixichen 
EOF
done
