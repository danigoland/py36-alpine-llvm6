Since LLVM6 is not available for Alpine Linux, it is has to be built from the source.

This image builds it from source from a PR request (https://github.com/alpinelinux/aports/pull/3583).

LLVM6 is a requirement for llvmlite, which is required by many python libraries e.g.
 - Numba
 - Fastparquet
 - and many more

I use this image as a base image for python 3.6 as it is an alpine version which is way lighter but still has support for LLVM6.
### The build process is really slow, you can pull the image from the docker hub link below.

If you run into any issues don't hesistate to submit a new issue :) PRs are always welcome!

### Docker Hub: https://hub.docker.com/r/danigoland/py36-alpine-llvm6/
