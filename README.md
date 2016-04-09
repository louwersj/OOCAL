# OOPCAL - Open Oracle Public Cloud API Library
OOCAL, Open Oracle Public Cloud API Library is set of pre-defind bash functions and scripts to be used with the Oracle Public cloud.

## Compute Cloud Functions
All functions used for the compute functions from th Oracle Public Cloud are stored in the opc_comp_api_functions.lib functions library. The below mentiond functions can be found in this library. The functions take "aim" against the internal API which can be accessed from within a VM at http://192.0.0.192/. This can be used (for example) to configure a newely created virtual machine based upon this information.

##### getValNumOfVersions
Function input  : (none)
Function output : number of API versions currently available in the public API   

##### getListVersions

