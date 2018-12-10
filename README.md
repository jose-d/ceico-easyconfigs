# ceico-easyconfigs
Easyconfigs usually with patches related to ceico HPC systems requirements.

## modules - WIP

### lib/plc-2.0-intel2018b-Python-2.7.15.eb
* plack likelihood code, http://pla.esac.esa.int/pla/aio
* TODO before upstream merge attempt:
 * pyfits Python module (and define it as dependency)
 * (hidden?) module for shared data

### lang/Python/2.7.15-intel-2018b
* +cffi (already in upstream master)
* +pyfits (bcs. of clik dependency, deprecated tool)
* updated python modules to recent versions
* TODO:
 * create separated module for pyfits as adding deprecated modules into P2715 would be sci-fi

## modules - merged in upstream

### CFITSIO-3.45-intel-2018b.eb
* recent version of cfitsio with intel toolchain
* -> https://github.com/easybuilders/easybuild-easyconfigs/pull/7247
* changes:
 * recent version and toolchain
 * + dep to curl - `configure: WARNING: curl-config not found. Disabling HTTPS support.`
 * + dynamic lib build -> `make shared` -> \*.so file
