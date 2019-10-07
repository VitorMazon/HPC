#!/bin/bash

sed "s/COMP/gf/g" mk-data.sh > temp.sh
chmod +x temp.sh
sh temp.sh
rm temp.sh

sed "s/COMP/gf-flags/g" mk-data.sh > temp.sh
chmod +x temp.sh
sh temp.sh
rm temp.sh

sed "s/COMP/gf-native/g" mk-data.sh > temp.sh
chmod +x temp.sh
sh temp.sh
rm temp.sh

sed "s/COMP/intel/g" mk-data.sh > temp.sh
chmod +x temp.sh
sh temp.sh
rm temp.sh

sed "s/COMP/intel-mkl/g" mk-data.sh > temp.sh
chmod +x temp.sh
sh temp.sh
rm temp.sh
