IMG="pytorch-gpu.img"
DEF="pytorch-gpu.def"
sudo rm -f $IMG
sudo singularity create -s 8000 $IMG
sudo singularity bootstrap $IMG $DEF
