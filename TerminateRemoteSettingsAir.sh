#!/bin/bash

ps -ef | nice grep "rx -c 127.0.0.1 -u 9393 -p 90" | nice grep -v grep | awk '{print $2}' | xargs kill -9
ps -ef | nice grep "tx -m 10 -u 9292 -p 91" | nice grep -v grep | awk '{print $2}' | xargs kill -9