#!/bin/bash
mkdir urbit
cd urbit
wget --content-disposition https://urbit.org/install/linux64/latest
tar zxvf ./linux64.tgz --strip=1
chown -R urbit .