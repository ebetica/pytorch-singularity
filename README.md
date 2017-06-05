# Pre-requisites

## Host OS

Requires: Singularity 2.3
See instructions here http://singularity.lbl.gov/install-mac.

## NVIDIA, CUDA

Get cuda and nvidia *.run scripts.  As of 2-21-17, these were cuda 8.0, and
nvidia drivers 375.66.  The CUDA driver was obtained from
https://developer.nvidia.com/cuda-downloads, under the linux Ubuntu 16.04
downloads for cuda 8.  The NVIDIA driver was obtained from
http://www.nvidia.com/Download/driverResults.aspx/112992/en-us.  Place the two
*.run scripts within this directory.

## cuDNN

The cuDNN version downloaded was cuDNN 8.0 v6.0, which was obtained from
https://developer.nvidia.com/rdp/cudnn-download, under cuDNN 8.0 v6.0 Library
for Linux.  Place the resulting .tgz file within this directory.

# Usage

Your directory should now have these three files:

- cudnn-8.0-linux-x64-v6.0.tgz
- NVIDIA-Linux-x86_64-375.66.run
- cuda_8.0.61_375.26_linux.run

From this directory, simply run `sh build.sh` -- it is 6GB so it may take a
while You will then be able to run python with the latest version of
GPU-enabled pytorch with `singularity run pytorch-gpu.img`.

You can confirm you have access to a GPU by running one of the examples in the
pytorch-examples repo.

# Origin

Adapted from https://github.com/drorlab/tf-singularity, which adapted from 
Jianxiong Dong's scripts at
https://github.com/jdongca2003/Tensorflow-singularity-container-with-GPU-support
, as well as Igor and Tru Huynh's advice on the singularity google group at
https://groups.google.com/a/lbl.gov/forum/#!topic/singularity/CezfXNjLGe0 .  For
use on Stanford sherlock cluster, which runs CentOS 6.7.

