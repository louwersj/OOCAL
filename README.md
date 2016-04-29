# OOPCAL - Open Oracle Public Cloud API Library
OOCAL, Open Oracle Public Cloud API Library is set of pre-defind bash functions and scripts to be used with the Oracle Public cloud.

## Compute Cloud Functions
All functions used for the compute functions from th Oracle Public Cloud are stored in the opc_comp_api_functions.lib functions library. The below mentiond functions can be found in this library. 

**_ccVm functions_**
Functions used for internal use within the VM are recognizable as they start with ccVm "Compute Cloud Virtual Machine". The functions take "aim" against the internal API which can be accessed from within a VM at http://192.0.0.192/. This can be used (for example) to configure a newely created virtual machine based upon this information.

##### _ccVmGetNumOfVersions_
_Function input_      :
(none)  
_Function output_     : number of API versions currently available in the public API   
_Function error code_ : In case of an error retrieving the values the function will return the code ERROR  
_Additional info_     : none.

##### _ccVmGetVersions_

##### _ccVmGetAmiId_

##### _ccVmGetAmiLaunchIndex_

##### _ccVmGetAmiManifestPath_

##### _ccVmGetAncestorAmiIds_



##### _ccVmGetBlockDeviceMapping_

##### _ccVmGetInstanceId_
##### _ccVmGetInstanceType_
##### _ccVmGetKernelId_
##### _ccVmGetLocalHostname_
##### _ccVmGetLocalIpv4_
##### _ccVmGetProductCodes_
##### _ccVmGetPublicHostname_
##### _ccVmGetPublicIpv4_
##### _ccVmGetRamdiskId_
##### _ccVmGetReservationId_
##### _ccVmGetSecurityGroups_
##### _ccVmGetNumOfPublicKeys_
##### _ccVmGetPublicKeyType_
##### _ccVmGetPublicSshKey_
_Function input_      : 
  the "id" of the key (note: ccVmGetNumOfPublicKeys will give you the number of keys, do remember; "id's" start at 0  
_Function output_     : 
  the public SSH key for the given "id"   
_Function error code_ : 
  In case of an error retrieving the values the function will return the code ERROR  
_Additional info_     :   
  none.
