#!/bin/bash

# Script para fazer benchmark com siesta

cd siesta-3.2-pl-5
./compiler.sh

cd Tests/benzene/work
./run.sh
cd ../../../../
