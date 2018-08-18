Since LLVM6 is not available for Alpine Linux, it is has to be built from the source.

This image builds it from source from a PR request (https://github.com/alpinelinux/aports/pull/3583).

LLVM6 is a requirement for llvmlite, which is required by many python libraries e.g.
 - Numba
 - Fastparquet
 - and many more

I use this image as a base image for python 3.6 as it is an alpine version which is way lighter but still has support for LLVM6.
