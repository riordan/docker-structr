#!/bin/bash

service structr start
tail -f /var/log/structr.log
