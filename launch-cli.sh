#!/bin/sh

docker run -it --rm -v $(pwd)/export:/export proton-import-export-app
