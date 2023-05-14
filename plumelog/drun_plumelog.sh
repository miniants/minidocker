#!/bin/bash
docker run -d -p8891:8891 \
	-e plumelog.model=lite \
	--name=plumelog ylyue/plumelog

