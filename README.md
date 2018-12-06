# ceico-easyconfigs
Easyconfigs usually with patches related to ceico HPC systems requirements.

## modules

### lang/Python/2.7.15-intel-2018b
* +cffi (already in upstream master)
* +pyfits (bcs. of clik dependency, deprecated tool)
* updated python modules to recent versions

### CFITSIO-3.45-intel-2018b.eb
* recent version of cfitsio with intel toolchain
* -> https://github.com/easybuilders/easybuild-easyconfigs/pull/7247
* changes:
 * recent version and toolchain
 * + dep to curl - `configure: WARNING: curl-config not found. Disabling HTTPS support.`
 * + dynamic lib build -> `make shared` -> \*.so file


