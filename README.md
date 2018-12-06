# ceico-easyconfigs
Easyconfigs usually with patches related to ceico HPC systems requirements.

## modules

### lang/Python/2.7.15-intel-2018b
* +cffi (already in upstream master)
* +pyfits (bcs. of clik dependency, deprecated tool)
* updated modules to recent versions

### CFITSIO-3.45-intel-2018b.eb
* recent version of cfitsio with intel toolchain
* 2BE pushed to upstream
* TODO:
 * + dep to curl - `configure: WARNING: curl-config not found. Disabling HTTPS support.`
 * + dynamic lib build -> `make shared`


