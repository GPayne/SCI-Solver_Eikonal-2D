#line 1 "meshFIM.cudafe2.gpu"





#line 7 "meshFIM.cudafe2.gpu"

#line 490 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
typedef unsigned size_t;
#line 492 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
#line 1 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"







































#line 41 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"

#line 1 "C:\\CUDA\\bin64/../include\\host_defines.h"










































#line 44 "C:\\CUDA\\bin64/../include\\host_defines.h"



















































#line 96 "C:\\CUDA\\bin64/../include\\host_defines.h"










#line 107 "C:\\CUDA\\bin64/../include\\host_defines.h"










#line 119 "C:\\CUDA\\bin64/../include\\host_defines.h"














#line 134 "C:\\CUDA\\bin64/../include\\host_defines.h"
#line 43 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"












typedef const void *__texture_type__;

typedef const void *__surface_type__;















































































































































































































#line 266 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"











#line 278 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"

#line 1 "C:\\CUDA\\bin64/../include\\builtin_types.h"









































#line 1 "c:\\cuda\\include\\device_types.h"













































enum cudaRoundMode
{
  cudaRoundNearest,
  cudaRoundZero,
  cudaRoundPosInf,
  cudaRoundMinInf
};

#line 55 "c:\\cuda\\include\\device_types.h"
#line 43 "C:\\CUDA\\bin64/../include\\builtin_types.h"
#line 1 "c:\\cuda\\include\\driver_types.h"














































































#line 80 "c:\\cuda\\include\\driver_types.h"











enum cudaError
{
  cudaSuccess                           =      0,   
  cudaErrorMissingConfiguration         =      1,   
  cudaErrorMemoryAllocation             =      2,   
  cudaErrorInitializationError          =      3,   
  cudaErrorLaunchFailure                =      4,   
  cudaErrorPriorLaunchFailure           =      5,   
  cudaErrorLaunchTimeout                =      6,   
  cudaErrorLaunchOutOfResources         =      7,   
  cudaErrorInvalidDeviceFunction        =      8,   
  cudaErrorInvalidConfiguration         =      9,   
  cudaErrorInvalidDevice                =     10,   
  cudaErrorInvalidValue                 =     11,   
  cudaErrorInvalidPitchValue            =     12,   
  cudaErrorInvalidSymbol                =     13,   
  cudaErrorMapBufferObjectFailed        =     14,   
  cudaErrorUnmapBufferObjectFailed      =     15,   
  cudaErrorInvalidHostPointer           =     16,   
  cudaErrorInvalidDevicePointer         =     17,   
  cudaErrorInvalidTexture               =     18,   
  cudaErrorInvalidTextureBinding        =     19,   
  cudaErrorInvalidChannelDescriptor     =     20,   
  cudaErrorInvalidMemcpyDirection       =     21,   
  cudaErrorAddressOfConstant            =     22,   
  cudaErrorTextureFetchFailed           =     23,   
  cudaErrorTextureNotBound              =     24,   
  cudaErrorSynchronizationError         =     25,   
  cudaErrorInvalidFilterSetting         =     26,   
  cudaErrorInvalidNormSetting           =     27,   
  cudaErrorMixedDeviceExecution         =     28,   
  cudaErrorCudartUnloading              =     29,   
  cudaErrorUnknown                      =     30,   
  cudaErrorNotYetImplemented            =     31,   
  cudaErrorMemoryValueTooLarge          =     32,   
  cudaErrorInvalidResourceHandle        =     33,   
  cudaErrorNotReady                     =     34,   
  cudaErrorInsufficientDriver           =     35,   
  cudaErrorSetOnActiveProcess           =     36,   
  cudaErrorNoDevice                     =     38,   
  cudaErrorStartupFailure               =   0x7f,   
  cudaErrorApiFailureBase               =  10000    
};





enum cudaChannelFormatKind
{
  cudaChannelFormatKindSigned           =   0,      
  cudaChannelFormatKindUnsigned         =   1,      
  cudaChannelFormatKindFloat            =   2,      
  cudaChannelFormatKindNone             =   3       
};





struct cudaChannelFormatDesc
{
  int                        x; 
  int                        y; 
  int                        z; 
  int                        w; 
  enum cudaChannelFormatKind f; 
};





struct cudaArray;





enum cudaMemcpyKind
{
  cudaMemcpyHostToHost          =   0,      
  cudaMemcpyHostToDevice        =   1,      
  cudaMemcpyDeviceToHost        =   2,      
  cudaMemcpyDeviceToDevice      =   3       
};





struct cudaPitchedPtr
{
  void   *ptr;      
  size_t  pitch;    
  size_t  xsize;    
  size_t  ysize;    
};





struct cudaExtent
{
  size_t width;     
  size_t height;    
  size_t depth;     
};





struct cudaPos
{
  size_t x;     
  size_t y;     
  size_t z;     
};





struct cudaMemcpy3DParms
{
  struct cudaArray      *srcArray;  
  struct cudaPos         srcPos;    
  struct cudaPitchedPtr  srcPtr;    

  struct cudaArray      *dstArray;  
  struct cudaPos         dstPos;    
  struct cudaPitchedPtr  dstPtr;    

  struct cudaExtent      extent;    
  enum cudaMemcpyKind    kind;      
};





struct cudaFuncAttributes
{
   size_t sharedSizeBytes;  
   size_t constSizeBytes;   
   size_t localSizeBytes;   
   int maxThreadsPerBlock;  
   int numRegs;             
   int __cudaReserved[8];
};





enum cudaComputeMode
{
  cudaComputeModeDefault    =   0,  
  cudaComputeModeExclusive  =   1,  
  cudaComputeModeProhibited =   2   
};






struct cudaDeviceProp
{
  char   name[256];                 
  size_t totalGlobalMem;            
  size_t sharedMemPerBlock;         
  int    regsPerBlock;              
  int    warpSize;                  
  size_t memPitch;                  
  int    maxThreadsPerBlock;        
  int    maxThreadsDim[3];          
  int    maxGridSize[3];            
  int    clockRate;                 
  size_t totalConstMem;             
  int    major;                     
  int    minor;                     
  size_t textureAlignment;          
  int    deviceOverlap;             
  int    multiProcessorCount;       
  int    kernelExecTimeoutEnabled;  
  int    integrated;                
  int    canMapHostMemory;          
  int    computeMode;               
  int    __cudaReserved[36];
};



































typedef enum cudaError cudaError_t;





typedef int cudaStream_t;





typedef int cudaEvent_t;


 

#line 337 "c:\\cuda\\include\\driver_types.h"
#line 44 "C:\\CUDA\\bin64/../include\\builtin_types.h"
#line 1 "c:\\cuda\\include\\texture_types.h"












































#line 1 "c:\\cuda\\include\\driver_types.h"















































































































































































































































































































































#line 337 "c:\\cuda\\include\\driver_types.h"
#line 46 "c:\\cuda\\include\\texture_types.h"








enum cudaTextureAddressMode
{
  cudaAddressModeWrap,
  cudaAddressModeClamp
};


enum cudaTextureFilterMode
{
  cudaFilterModePoint,
  cudaFilterModeLinear
};


enum cudaTextureReadMode
{
  cudaReadModeElementType,
  cudaReadModeNormalizedFloat
};


struct textureReference
{
  int                          normalized;
  enum cudaTextureFilterMode   filterMode;
  enum cudaTextureAddressMode  addressMode[3];
  struct cudaChannelFormatDesc channelDesc;
  int                          __cudaReserved[16];
};

#line 85 "c:\\cuda\\include\\texture_types.h"
#line 45 "C:\\CUDA\\bin64/../include\\builtin_types.h"
#line 1 "c:\\cuda\\include\\vector_types.h"












































#line 1 "c:\\cuda\\include\\host_defines.h"




































































































































#line 134 "c:\\cuda\\include\\host_defines.h"
#line 46 "c:\\cuda\\include\\vector_types.h"











#line 58 "c:\\cuda\\include\\vector_types.h"












#line 72 "c:\\cuda\\include\\vector_types.h"







#line 80 "c:\\cuda\\include\\vector_types.h"


struct char1
{
  signed char x;
  
};


struct uchar1 
{
  unsigned char x;
  
};


struct __attribute__((__aligned__(2))) char2
{
  signed char x, y;
  
};


struct __attribute__((__aligned__(2))) uchar2
{
  unsigned char x, y;
  
};


struct char3
{
  signed char x, y, z;
  
};


struct uchar3
{
  unsigned char x, y, z;
  
};


struct __attribute__((__aligned__(4))) char4
{
  signed char x, y, z, w;
  
};


struct __attribute__((__aligned__(4))) uchar4
{
  unsigned char x, y, z, w;
  
};


struct short1
{
  short x;
  
};


struct ushort1
{
  unsigned short x;
  
};


struct __attribute__((__aligned__(4))) short2
{
  short x, y;
  
};


struct __attribute__((__aligned__(4))) ushort2
{
  unsigned short x, y;
  
};


struct short3
{
  short x, y, z;
  
};


struct ushort3
{
  unsigned short x, y, z;
  
};


struct __attribute__((__aligned__(8))) short4 { short x, y, z, w;  };


struct __attribute__((__aligned__(8))) ushort4 { unsigned short x, y, z, w;  };


struct int1
{
  int x;
  
};


struct uint1
{
  unsigned int x;
  
};


struct __attribute__((__aligned__(8))) int2 { int x, y;  };


struct __attribute__((__aligned__(8))) uint2 { unsigned int x, y;  };


struct int3
{
  int x, y, z;
  
};


struct uint3
{
  unsigned int x, y, z;
  
};


struct __attribute__((__aligned__(16))) int4
{
  int x, y, z, w;
  
};


struct __attribute__((__aligned__(16))) uint4
{
  unsigned int x, y, z, w;
  
};


struct long1
{
  long int x;
  
};


struct ulong1
{
  unsigned long x;
  
};




struct __attribute__((__aligned__(8))) long2 { long int x, y;  };


struct __attribute__((__aligned__(8))) ulong2 { unsigned long int x, y;  };

















#line 272 "c:\\cuda\\include\\vector_types.h"




struct long3
{
  long int x, y, z;
  
};


struct ulong3
{
  unsigned long int x, y, z;
  
};


struct __attribute__((__aligned__(16))) long4
{
  long int x, y, z, w;
  
};


struct __attribute__((__aligned__(16))) ulong4
{
  unsigned long int x, y, z, w;
  
};

#line 304 "c:\\cuda\\include\\vector_types.h"


struct float1
{
  float x;
  
};


struct __attribute__((__aligned__(8))) float2 { float x, y;  };


struct float3
{
  float x, y, z;
  
};


struct __attribute__((__aligned__(16))) float4
{
  float x, y, z, w;
  
};


struct longlong1
{
  long long int x;
  
};


struct ulonglong1
{
  unsigned long long int x;
  
};


struct __attribute__((__aligned__(16))) longlong2
{
  long long int x, y;
  
};


struct __attribute__((__aligned__(16))) ulonglong2
{
  unsigned long long int x, y;
  
};


struct double1
{
  double x;
  
};


struct __attribute__((__aligned__(16))) double2
{
  double x, y;
  
};








typedef struct char1 char1;

typedef struct uchar1 uchar1;

typedef struct char2 char2;

typedef struct uchar2 uchar2;

typedef struct char3 char3;

typedef struct uchar3 uchar3;

typedef struct char4 char4;

typedef struct uchar4 uchar4;

typedef struct short1 short1;

typedef struct ushort1 ushort1;

typedef struct short2 short2;

typedef struct ushort2 ushort2;

typedef struct short3 short3;

typedef struct ushort3 ushort3;

typedef struct short4 short4;

typedef struct ushort4 ushort4;

typedef struct int1 int1;

typedef struct uint1 uint1;

typedef struct int2 int2;

typedef struct uint2 uint2;

typedef struct int3 int3;

typedef struct uint3 uint3;

typedef struct int4 int4;

typedef struct uint4 uint4;

typedef struct long1 long1;

typedef struct ulong1 ulong1;

typedef struct long2 long2;

typedef struct ulong2 ulong2;

typedef struct long3 long3;

typedef struct ulong3 ulong3;

typedef struct long4 long4;

typedef struct ulong4 ulong4;

typedef struct float1 float1;

typedef struct float2 float2;

typedef struct float3 float3;

typedef struct float4 float4;

typedef struct longlong1 longlong1;

typedef struct ulonglong1 ulonglong1;

typedef struct longlong2 longlong2;

typedef struct ulonglong2 ulonglong2;

typedef struct double1 double1;

typedef struct double2 double2;








struct dim3
{
    unsigned int x, y, z;




#line 477 "c:\\cuda\\include\\vector_types.h"
};


typedef struct dim3 dim3;




#line 486 "c:\\cuda\\include\\vector_types.h"
#line 46 "C:\\CUDA\\bin64/../include\\builtin_types.h"
#line 280 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"
#line 1 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






































#line 1 "c:\\cuda\\include\\vector_types.h"




































































































































































































































































































































































































































































































#line 486 "c:\\cuda\\include\\vector_types.h"
#line 40 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






#line 47 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"



#line 51 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"


uint3 extern const threadIdx;

uint3 extern const blockIdx;

dim3 extern const blockDim;

dim3 extern const gridDim;

int extern const warpSize;





#line 68 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






#line 75 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






#line 82 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






#line 89 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






#line 96 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"






#line 103 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"

#line 105 "C:\\CUDA\\bin64/../include\\device_launch_parameters.h"
#line 281 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"
#line 1 "c:\\cuda\\include\\crt\\storage_class.h"










































#line 44 "c:\\cuda\\include\\crt\\storage_class.h"






#line 51 "c:\\cuda\\include\\crt\\storage_class.h"



#line 55 "c:\\cuda\\include\\crt\\storage_class.h"



#line 59 "c:\\cuda\\include\\crt\\storage_class.h"



#line 63 "c:\\cuda\\include\\crt\\storage_class.h"



#line 67 "c:\\cuda\\include\\crt\\storage_class.h"



#line 71 "c:\\cuda\\include\\crt\\storage_class.h"



#line 75 "c:\\cuda\\include\\crt\\storage_class.h"



#line 79 "c:\\cuda\\include\\crt\\storage_class.h"



#line 83 "c:\\cuda\\include\\crt\\storage_class.h"



#line 87 "c:\\cuda\\include\\crt\\storage_class.h"



#line 91 "c:\\cuda\\include\\crt\\storage_class.h"



#line 95 "c:\\cuda\\include\\crt\\storage_class.h"



#line 99 "c:\\cuda\\include\\crt\\storage_class.h"



#line 103 "c:\\cuda\\include\\crt\\storage_class.h"



#line 107 "c:\\cuda\\include\\crt\\storage_class.h"



#line 111 "c:\\cuda\\include\\crt\\storage_class.h"



#line 115 "c:\\cuda\\include\\crt\\storage_class.h"



#line 119 "c:\\cuda\\include\\crt\\storage_class.h"



#line 123 "c:\\cuda\\include\\crt\\storage_class.h"



#line 127 "c:\\cuda\\include\\crt\\storage_class.h"



#line 131 "c:\\cuda\\include\\crt\\storage_class.h"



#line 135 "c:\\cuda\\include\\crt\\storage_class.h"



#line 139 "c:\\cuda\\include\\crt\\storage_class.h"



#line 143 "c:\\cuda\\include\\crt\\storage_class.h"



#line 147 "c:\\cuda\\include\\crt\\storage_class.h"

#line 149 "c:\\cuda\\include\\crt\\storage_class.h"
#line 282 "C:\\CUDA\\bin64/../include\\crt/device_runtime.h"
#line 493 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"

#line 93 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"
typedef long clock_t;
#line 95 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 101 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 107 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 113 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 119 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 125 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 131 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 137 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 143 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 149 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 155 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 161 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 167 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 173 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 179 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 185 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 191 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 197 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 203 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 209 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 215 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 221 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 227 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 233 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 239 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 245 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 251 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 257 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 263 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 269 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 275 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 281 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 287 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 293 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 299 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 305 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 311 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 317 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 323 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 329 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 335 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 341 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 347 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 353 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 359 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 365 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 371 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 377 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 383 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 389 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 395 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 401 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 407 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 413 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 419 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 425 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 431 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 437 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 443 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 449 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 455 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 461 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 467 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 473 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 479 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 485 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 491 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 497 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 503 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 509 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 515 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 521 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 527 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 533 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 539 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 545 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 551 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 557 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 563 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 569 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 575 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 581 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 587 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 593 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 599 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 605 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 611 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 617 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 623 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 629 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 635 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 641 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 647 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 653 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 659 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 665 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 671 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 677 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 683 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 689 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 695 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 701 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 707 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 713 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 719 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 725 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 731 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 737 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 743 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 749 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 755 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 761 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 767 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 773 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 779 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 785 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 791 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 797 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 803 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 809 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 815 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 821 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 827 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 833 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 839 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 845 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 851 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 857 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 863 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 869 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 875 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 881 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 887 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 893 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 899 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 905 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 911 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 917 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 923 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 929 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 935 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 941 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 947 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 953 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 959 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 965 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 971 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 977 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 983 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 989 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 995 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1001 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1007 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1013 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1019 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1025 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1031 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1037 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1043 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1049 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1055 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1061 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1067 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1073 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1079 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1085 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1091 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1097 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1103 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1109 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1115 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1121 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1127 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1133 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1139 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1145 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1151 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1157 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1163 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1169 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1175 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1181 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1187 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1193 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1199 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1205 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1211 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1217 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1223 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1229 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1235 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1241 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1247 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1253 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1259 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1265 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1271 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1277 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1283 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1289 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1295 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1301 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1307 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1313 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1319 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1325 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1331 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1337 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1343 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1349 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1355 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1361 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1367 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1373 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1379 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1385 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1391 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1397 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1403 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1409 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1415 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1421 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1427 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1433 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1439 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1445 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1451 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1457 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1463 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1469 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1475 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1481 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1487 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1493 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1499 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1505 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1511 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1517 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1523 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1529 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1535 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1541 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1547 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1553 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1559 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1565 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1571 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1577 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1583 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1589 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1595 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1601 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1607 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1613 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1619 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1625 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1631 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1637 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1643 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1649 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1655 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1661 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1667 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1673 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1679 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1685 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1691 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1697 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1703 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1709 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1715 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1721 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1727 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1733 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1739 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1745 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1751 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1757 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1763 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1769 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1775 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1781 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1787 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1793 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1799 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1805 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1811 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1817 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1823 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1829 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1835 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1841 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1847 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1853 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1859 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1865 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1871 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1877 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1883 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1889 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1895 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1901 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1907 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1913 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1919 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1925 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1931 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1937 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1943 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 1949 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"
#line 1 "C:\\CUDA\\bin64/../include\\common_functions.h"

































































#line 67 "C:\\CUDA\\bin64/../include\\common_functions.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"






























































































#line 96 "c:\\cuda\\include\\crt/func_macro.h"

#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 69 "C:\\CUDA\\bin64/../include\\common_functions.h"

static clock_t __cuda_clock(void)
{
  return clock();
}

static void *__cuda_memset(void *s, int c, size_t n)
{
  return memset(s, c, n);
}

static void *__cuda_memcpy(void *d, const void *s, size_t n)
{
  return memcpy(d, s, n);
}

#line 86 "C:\\CUDA\\bin64/../include\\common_functions.h"







#line 1 "c:\\cuda\\include\\math_functions.h"






































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 904 "c:\\cuda\\include\\math_functions.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 906 "c:\\cuda\\include\\math_functions.h"






int __cuda_error_not_implememted(void);













#line 927 "c:\\cuda\\include\\math_functions.h"




#line 932 "c:\\cuda\\include\\math_functions.h"

#line 934 "c:\\cuda\\include\\math_functions.h"




































#line 971 "c:\\cuda\\include\\math_functions.h"

static int __cuda_abs(int a)
{
  return abs(a);
}

static float __cuda_fabsf(float a)
{
  return fabsf(a);
}

static long long int __cuda_llabs(long long int a)
{


#line 987 "c:\\cuda\\include\\math_functions.h"
  return llabs(a);
#line 989 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_exp2f(float a)
{
  return exp2f(a);
}

#line 1 "c:\\cuda\\include\\device_functions.h"




















































































































































































































































































































































































































































#line 438 "c:\\cuda\\include\\device_functions.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 440 "c:\\cuda\\include\\device_functions.h"

#line 1 "c:\\cuda\\include\\host_defines.h"




































































































































#line 134 "c:\\cuda\\include\\host_defines.h"
#line 442 "c:\\cuda\\include\\device_functions.h"
#line 1 "c:\\cuda\\include\\math_constants.h"























































































#line 89 "c:\\cuda\\include\\math_constants.h"



















































#line 141 "c:\\cuda\\include\\math_constants.h"
#line 443 "c:\\cuda\\include\\device_functions.h"



static float __frcp_rn (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      
      f = __umul24(y, argi);
      
      if ((int)f > 0) { 
        t = __int_as_float(__float_as_int(t)-1);
        f -= y; 
      }
      
      expo = f + y;
      
      f = (unsigned)(-(int)f);
      if (expo < f) {
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}
 
static float __frcp_rz (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if ((int)f > 0) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static float __frcp_rd (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if (((int)f > 0) && (x > 0.0f)) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      if (((int)f < 0) && (x < 0.0f)) { 
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static float __frcp_ru (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if (((int)f > 0) && (x < 0.0f)) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      if (((int)f < 0) && (x > 0.0f)) { 
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static float __fsqrt_rn (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    argi = argi >> 3;
    x = (x << 16) - (argi * argi);
    
    f = x - (2 * argi + 1);
    if ((int)f < 0) f = (unsigned)(-(int)f);
    if ((int)x < 0) x = (unsigned)(-(int)x);
    if (f < x) argi ++;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fsqrt_rz (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x < 0) argi--;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fsqrt_ru (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x > 0) argi++;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fsqrt_rd (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x < 0) argi--;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fdiv_rn (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    
    if (expo_res <= 0xFD) {
      int rem0, rem1, inc;
      
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      rem0 = rem1 - y;
      inc = abs(rem0) < abs(rem1);
      
      resi = sign | ((expo_res << 23) + r + inc);
      return __int_as_float(resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign | 0x7f800000;
      return __int_as_float(resi);
    } else {
      
      int rem0, rem1, inc;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      rem0 = rem1 - y;
      inc = abs(rem0) < abs(rem1);
      resi = ((expo_res << 23) + r + inc);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fdiv_rz (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if (rem1 < 0) r--;
      resi = (expo_res << 23) + r;
      if (resi == 0x7f800000) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = 0x7f7fffff;
      return __int_as_float(sign |resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if (rem1 < 0) r--;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fdiv_ru (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) &&  (sign)) r--;
      if ((rem1 > 0) && (!sign)) r++;
      resi = (expo_res << 23) + r;
      if ((resi == 0x7f800000) && (sign)) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign ? 0x7f7fffff : 0x7f800000;
      return __int_as_float(sign | resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) &&  (sign)) r--;
      if ((rem1 > 0) && (!sign)) r++;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fdiv_rd (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) && (!sign)) r--;
      if ((rem1 > 0) &&  (sign)) r++;
      resi = (expo_res << 23) + r;
      if ((resi == 0x7f800000) && (!sign)) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign ? 0x7f800000 : 0x7f7fffff;
      return __int_as_float(sign |resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) && (!sign)) r--;
      if ((rem1 > 0) &&  (sign)) r++;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fadd_ru (float a, float b)
{
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi, temp;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  
  expo_y = yyi << 1;
  if (expo_y > (xxi << 1)) {
    expo_y = xxi;
    xxi    = yyi;
    yyi    = expo_y;
  }
    
  temp = 0xff;
  expo_x = temp & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
        
    expo_y = expo_x - expo_y;
    if (expo_y > 25) {
      expo_y = 31;
    }
    temp = xxi ^ yyi;
    xxi = xxi & ~0x7f000000;
    xxi = xxi |  0x00800000;
    yyi = yyi & ~0xff000000;
    yyi = yyi |  0x00800000;
        
    if ((int)temp < 0) {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      temp = (unsigned int)(-((int)temp));
      xxi = xxi - (yyi >> expo_y) - (temp ? 1 : 0);
      if (xxi & 0x00800000) {
        if (expo_x <= 0xFD) {
          xxi = (xxi + (expo_x << 23));
          xxi += (temp && !(xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        if ((temp | (xxi << 1)) == 0) {
          
          xxi = 0;
          return __int_as_float(xxi);
        }
        
        yyi = xxi & 0x80000000;
        do {
          xxi = (xxi << 1) | (temp >> 31);
          temp <<= 1;
          expo_x--;
        } while (!(xxi & 0x00800000));
        xxi = xxi | yyi;
      }
    } else {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      xxi = xxi + (yyi >> expo_y);
      if (!(xxi & 0x01000000)) {
        if (expo_x <= 0xFD) {
          xxi = xxi + (expo_x << 23);
          xxi += (temp && !(xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        
        temp = (xxi << 31) | (temp >> 1);
        xxi = ((xxi & 0x80000000) | (xxi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
    if (expo_x <= 0xFD) {
      xxi += (temp && !(xxi & 0x80000000));
      xxi = xxi + (expo_x << 23);
      return __int_as_float(xxi);
    }
    if ((int)expo_x >= 254) {
      
      temp = xxi & 0x80000000;
      xxi = (temp ? 0xff7fffff : 0x7F800000);
      return __int_as_float(xxi);
    }
    
    yyi = xxi &  0x80000000;
    xxi = xxi & ~0xff000000;
    expo_x = (unsigned int)(-((int)expo_x));
    xxi = (xxi >> expo_x);
    if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
    return __int_as_float(yyi | xxi);
  } else {
    return a + b;
  }
}

static float __fadd_rd (float a, float b)
{
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi, temp;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  
  expo_y = yyi << 1;
  if (expo_y > (xxi << 1)) {
    expo_y = xxi;
    xxi    = yyi;
    yyi    = expo_y;
  }
    
  temp = 0xff;
  expo_x = temp & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
        
    expo_y = expo_x - expo_y;
    if (expo_y > 25) {
      expo_y = 31;
    }
    temp = xxi ^ yyi;
    xxi = xxi & ~0x7f000000;
    xxi = xxi |  0x00800000;
    yyi = yyi & ~0xff000000;
    yyi = yyi |  0x00800000;
        
    if ((int)temp < 0) {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      temp = (unsigned int)(-((int)temp));
      xxi = xxi - (yyi >> expo_y) - (temp ? 1 : 0);
      if (xxi & 0x00800000) {
        if (expo_x <= 0xFD) {
          xxi = xxi & ~0x00800000; 
          xxi = (xxi + (expo_x << 23)) + 0x00800000;
          xxi += (temp && (xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        if ((temp | (xxi << 1)) == 0) {
          
          xxi = 0x80000000;
          return __int_as_float(xxi);
        }
        
        yyi = xxi & 0x80000000;
        do {
          xxi = (xxi << 1) | (temp >> 31);
          temp <<= 1;
          expo_x--;
        } while (!(xxi & 0x00800000));
        xxi = xxi | yyi;
      }
    } else {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      xxi = xxi + (yyi >> expo_y);
      if (!(xxi & 0x01000000)) {
        if (expo_x <= 0xFD) {
          expo_y = xxi & 1;
          xxi = xxi + (expo_x << 23);
          xxi += (temp && (xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        
        temp = (xxi << 31) | (temp >> 1);
        xxi = ((xxi & 0x80000000) | (xxi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
    if (expo_x <= 0xFD) {
      xxi += (temp && (xxi & 0x80000000));
      xxi = xxi + (expo_x << 23);
      return __int_as_float(xxi);
    }
    if ((int)expo_x >= 254) {
      
      temp = xxi & 0x80000000;
      xxi = (temp ? 0xFF800000 : 0x7f7fffff);
      return __int_as_float(xxi);
    }
    
    yyi = xxi &  0x80000000;
    xxi = xxi & ~0xff000000;
    expo_x = (unsigned int)(-((int)expo_x));
    xxi = (xxi >> expo_x);
    if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
    return __int_as_float(yyi | xxi);
  } else {
    a = a + b;
    xxi = xxi ^ yyi;
    if ((a == 0.0f) && ((int)xxi < 0)) a = __int_as_float(0x80000000);
    return a;
  }
}

static float __fmul_ru (float a, float b)
{
  unsigned long long product;
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  expo_y = 0xFF;
  expo_x = expo_y & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = expo_y & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
    expo_x = expo_x + expo_y;
    expo_y = xxi ^ yyi;
    xxi = xxi & 0x00ffffff;
    yyi = yyi << 8;
    xxi = xxi | 0x00800000;
    yyi = yyi | 0x80000000;
    
    product = ((unsigned long long)xxi) * yyi;
    expo_x = expo_x - 127 + 2;
    expo_y = expo_y & 0x80000000;
    xxi = (unsigned int)(product >> 32);
    yyi = (unsigned int)(product & 0xffffffff);
    
    if (xxi < 0x00800000) {
      xxi = (xxi << 1) | (yyi >> 31);
      yyi = (yyi << 1);
      expo_x--;
    }
    if (expo_x <= 0xFD) {
      xxi = xxi | expo_y;          
      xxi = xxi + (expo_x << 23);  
      
      xxi += (yyi && !expo_y);
      return __int_as_float(xxi);
    } else if ((int)expo_x >= 254) {
      
      xxi = (expo_y ? 0xff7fffff : 0x7F800000);
      return __int_as_float(xxi);
    } else {
      
      expo_x = ((unsigned int)-((int)expo_x));
      xxi += (yyi && !expo_y);
      xxi = (xxi >> expo_x);
      if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
      return __int_as_float(expo_y | xxi);
    }
  } else {
    return a * b;
  }
}

static float __fmul_rd (float a, float b)
{
  unsigned long long product;
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  expo_y = 0xFF;
  expo_x = expo_y & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = expo_y & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
    expo_x = expo_x + expo_y;
    expo_y = xxi ^ yyi;
    xxi = xxi & 0x00ffffff;
    yyi = yyi << 8;
    xxi = xxi | 0x00800000;
    yyi = yyi | 0x80000000;
    
    product = ((unsigned long long)xxi) * yyi;
    expo_x = expo_x - 127 + 2;
    expo_y = expo_y & 0x80000000;
    xxi = (unsigned int)(product >> 32);
    yyi = (unsigned int)(product & 0xffffffff);
    
    if (xxi < 0x00800000) {
      xxi = (xxi << 1) | (yyi >> 31);
      yyi = (yyi << 1);
      expo_x--;
    }
    if (expo_x <= 0xFD) {
      xxi = xxi | expo_y;          
      xxi = xxi + (expo_x << 23);  
      
      xxi += (yyi && expo_y);
      return __int_as_float(xxi);
    } else if ((int)expo_x >= 254) {
      
      xxi = expo_y | (expo_y ?0x7F800000 : 0x7f7fffff);
      return __int_as_float(xxi);
    } else {
      
      expo_x = ((unsigned int)-((int)expo_x));
      xxi += (yyi && expo_y);
      xxi = (xxi >> expo_x);
      if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
      return __int_as_float(expo_y | xxi);
    }
  } else {
    return a * b;
  }
}

static float __fmaf_rn (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    s = xx & 1; 
    xx += (temp == 0x80000000) ? s : (temp >> 31);
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | 0x7f800000;
    return __int_as_float(xx);
  }
  
  expo_x = (unsigned int)(-(int)expo_x);
  
  xx += (temp >= 0x80000000);
  if (xx >= 0x01000000) {
    xx = xx >> 1;
    expo_x--;
  }
  if (expo_x > 0) xx = 0;
  xx = expo_y | xx;
  return __int_as_float(xx);
}

static float __fmaf_rz (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | 0x7f7fffff;
    return __int_as_float(xx);
  }
  
  return __int_as_float(expo_y);
}

static float __fmaf_ru (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx += (temp && !expo_y); 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | (expo_y ? 0x7f7fffff : 0x7F800000);
    return __int_as_float(xx);
  }
  
  expo_x = ((unsigned int)-((int)expo_x));
  xx += (temp && !expo_y);
  xx = (xx >> expo_x);
  if ((expo_x > 25) || (xx != 0x00800000)) xx = 0;
  return __int_as_float(expo_y | xx);
}

static float __fmaf_rd (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz = (xx ^ yy ^ zz) & 0x80000000;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(0x80000000);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx += (temp && expo_y); 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | (expo_y ? 0x7f800000 : 0x7F7FFFFF);
    return __int_as_float(xx);
  }
  
  expo_x = ((unsigned int)-((int)expo_x));
  xx += (temp && expo_y);
  xx = (xx >> expo_x);
  if ((expo_x > 25) || (xx != 0x00800000)) xx = 0;
  return __int_as_float(expo_y | xx);
}


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 4368 "c:\\cuda\\include\\device_functions.h"




























#line 4397 "c:\\cuda\\include\\device_functions.h"

static float __sinf(float a)
{




#line 4405 "c:\\cuda\\include\\device_functions.h"
  return sinf(a);
}

static float __cosf(float a)
{




#line 4415 "c:\\cuda\\include\\device_functions.h"
  return cosf(a);
}

static float __log2f(float a)
{
  return log2f(a);
}







static float __internal_accurate_fdividef(float a, float b)
{
  return a / b;
}

static float __tanf(float a)
{


#line 4439 "c:\\cuda\\include\\device_functions.h"
  return __fdividef (__sinf(a), __cosf(a));
#line 4441 "c:\\cuda\\include\\device_functions.h"
}

static void __sincosf(float a, float *sptr, float *cptr)
{


#line 4448 "c:\\cuda\\include\\device_functions.h"
  *sptr = __sinf(a);
  *cptr = __cosf(a);
#line 4451 "c:\\cuda\\include\\device_functions.h"
}

static float __expf(float a)
{


#line 4458 "c:\\cuda\\include\\device_functions.h"
  return __cuda_exp2f(a * 1.442695041f);
#line 4460 "c:\\cuda\\include\\device_functions.h"
}

static float __exp10f(float a)
{


#line 4467 "c:\\cuda\\include\\device_functions.h"
  return __cuda_exp2f(a * 3.321928094f);
#line 4469 "c:\\cuda\\include\\device_functions.h"
}

static float __log10f(float a)
{


#line 4476 "c:\\cuda\\include\\device_functions.h"
  return 0.301029996f * __log2f(a);
#line 4478 "c:\\cuda\\include\\device_functions.h"
}

static float __logf(float a)
{


#line 4485 "c:\\cuda\\include\\device_functions.h"
  return 0.693147181f * __log2f(a);
#line 4487 "c:\\cuda\\include\\device_functions.h"
}

static float __powf(float a, float b)
{


#line 4494 "c:\\cuda\\include\\device_functions.h"
  return __cuda_exp2f(b * __log2f(a));
#line 4496 "c:\\cuda\\include\\device_functions.h"
}

static float fdividef(float a, float b)
{


#line 4503 "c:\\cuda\\include\\device_functions.h"

#line 4505 "c:\\cuda\\include\\device_functions.h"
  return __internal_accurate_fdividef(a, b);
#line 4507 "c:\\cuda\\include\\device_functions.h"
}

static int __clz(int a)
{
  return (a)?(158-(__float_as_int(__uint2float_rz((unsigned int)a))>>23)):32;
}

static int __clzll(long long int a)
{
  int ahi = ((int)((unsigned long long)a >> 32));
  int alo = ((int)((unsigned long long)a & 0xffffffffULL));
  int res;
  if (ahi) {
    res = 0;
  } else {
    res = 32;
    ahi = alo;
  }
  res = res + __clz(ahi);
  return res;
}

static int __popc(unsigned int a)
{
  a = a - ((a >> 1) & 0x55555555);
  a = (a & 0x33333333) + ((a >> 2) & 0x33333333);
  a = (a + (a >> 4)) & 0x0f0f0f0f;
  a = ((__umul24(a, 0x808080) << 1) + a) >> 24;
  return a;
}

static int __popcll(unsigned long long int a)
{
  unsigned int ahi = ((unsigned int)(a >> 32));
  unsigned int alo = ((unsigned int)(a & 0xffffffffULL));
  alo = alo - ((alo >> 1) & 0x55555555);
  alo = (alo & 0x33333333) + ((alo >> 2) & 0x33333333);
  ahi = ahi - ((ahi >> 1) & 0x55555555);
  ahi = (ahi & 0x33333333) + ((ahi >> 2) & 0x33333333);
  alo = alo + ahi;
  alo = (alo & 0x0f0f0f0f) + ((alo >> 4) & 0x0f0f0f0f);
  alo = ((__umul24(alo, 0x808080) << 1) + alo) >> 24;
  return alo;
}

static unsigned int __brev(unsigned int a)
{
  a = ((a >>  1) & 0x55555555) + ((a & 0x55555555) <<  1);
  a = ((a >>  2) & 0x33333333) + ((a & 0x33333333) <<  2);
  a = ((a >>  4) & 0x0F0F0F0F) + ((a & 0x0F0F0F0F) <<  4);
  a = ((a >>  8) & 0x00FF00FF) + ((a & 0x00FF00FF) <<  8);
  a = ( a >> 16              ) + ( a               << 16);
  return a;
}

static unsigned long long int __brevll(unsigned long long int a)
{
  unsigned int hi = (unsigned int)(a >> 32);
  unsigned int lo = (unsigned int)(a & 0xffffffffULL);
  unsigned int t;
  t  = __brev(lo);
  lo = __brev(hi);
  return ((unsigned long long int)t << 32) + (unsigned long long int)lo;
}

static int __ffs(int a)
{
  return 32 - __clz (a & -a);
}

static int __ffsll(long long int a)
{
  return 64 - __clzll (a & -a);
}





#line 4587 "c:\\cuda\\include\\device_functions.h"
































#line 4620 "c:\\cuda\\include\\device_functions.h"



static double fdivide(double a, double b)
{
  return a / b;
}




























#line 4656 "c:\\cuda\\include\\device_functions.h"

#line 4658 "c:\\cuda\\include\\device_functions.h"

#line 4660 "c:\\cuda\\include\\device_functions.h"







#line 1 "c:\\cuda\\include\\sm_11_atomic_functions.h"















































































































































































































#line 209 "c:\\cuda\\include\\sm_11_atomic_functions.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 211 "c:\\cuda\\include\\sm_11_atomic_functions.h"




























































































































































































































































































#line 496 "c:\\cuda\\include\\sm_11_atomic_functions.h"

#line 498 "c:\\cuda\\include\\sm_11_atomic_functions.h"

#line 500 "c:\\cuda\\include\\sm_11_atomic_functions.h"
#line 4668 "c:\\cuda\\include\\device_functions.h"
#line 1 "c:\\cuda\\include\\sm_12_atomic_functions.h"




































































































#line 102 "c:\\cuda\\include\\sm_12_atomic_functions.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 104 "c:\\cuda\\include\\sm_12_atomic_functions.h"




































































#line 173 "c:\\cuda\\include\\sm_12_atomic_functions.h"

#line 175 "c:\\cuda\\include\\sm_12_atomic_functions.h"

#line 177 "c:\\cuda\\include\\sm_12_atomic_functions.h"
#line 4669 "c:\\cuda\\include\\device_functions.h"
#line 1 "c:\\cuda\\include\\sm_13_double_functions.h"





























































































































































































































































#line 255 "c:\\cuda\\include\\sm_13_double_functions.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 257 "c:\\cuda\\include\\sm_13_double_functions.h"



















































































































































































































































































































































#line 597 "c:\\cuda\\include\\sm_13_double_functions.h"








































































































































































































































































































































































































































































































































#line 1118 "c:\\cuda\\include\\sm_13_double_functions.h"







#line 1126 "c:\\cuda\\include\\sm_13_double_functions.h"

#line 1128 "c:\\cuda\\include\\sm_13_double_functions.h"

#line 4670 "c:\\cuda\\include\\device_functions.h"
#line 1 "c:\\cuda\\include\\texture_fetch_functions.h"


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1876 "c:\\cuda\\include\\texture_fetch_functions.h"

#line 1 "c:\\cuda\\include\\host_defines.h"




































































































































#line 134 "c:\\cuda\\include\\host_defines.h"
#line 1878 "c:\\cuda\\include\\texture_fetch_functions.h"
#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 1879 "c:\\cuda\\include\\texture_fetch_functions.h"



extern  uint4 __utexfetchi1D(const void*, int4);
extern   int4 __itexfetchi1D(const void*, int4);
extern float4 __ftexfetchi1D(const void*, int4);
extern  uint4 __utexfetch1D(const void*, float4);
extern   int4 __itexfetch1D(const void*, float4);
extern float4 __ftexfetch1D(const void*, float4);
extern  uint4 __utexfetch2D(const void*, float4);
extern   int4 __itexfetch2D(const void*, float4);
extern float4 __ftexfetch2D(const void*, float4);
extern  uint4 __utexfetch3D(const void*, float4);
extern   int4 __itexfetch3D(const void*, float4);
extern float4 __ftexfetch3D(const void*, float4);








































































#line 1967 "c:\\cuda\\include\\texture_fetch_functions.h"

#line 1969 "c:\\cuda\\include\\texture_fetch_functions.h"

#line 1971 "c:\\cuda\\include\\texture_fetch_functions.h"

#line 4671 "c:\\cuda\\include\\device_functions.h"

#line 4673 "c:\\cuda\\include\\device_functions.h"

#line 997 "c:\\cuda\\include\\math_functions.h"
#line 1 "c:\\cuda\\include\\math_constants.h"











































































































































#line 141 "c:\\cuda\\include\\math_constants.h"
#line 998 "c:\\cuda\\include\\math_functions.h"

static int __cuda___signbitf(float a)
{
  return (int)((unsigned int)__float_as_int(a) >> 31);
}




static float __cuda_copysignf(float a, float b)
{
  return __int_as_float((__float_as_int(b) &  0x80000000) | 
                        (__float_as_int(a) & ~0x80000000));
}























































































































































































































#line 1228 "c:\\cuda\\include\\math_functions.h"







static long int __cuda_labs(long int a)
{
  return labs(a);
}

static float __cuda_ceilf(float a)
{
  return ceilf(a);
}

static float __cuda_floorf(float a)
{
  return floorf(a);
}

static float __cuda_sqrtf(float a)
{
  return sqrtf(a);
}

static float __cuda_rsqrtf(float a)
{
  return rsqrtf(a);
}

static float __cuda_truncf(float a)
{
  return truncf(a);
}

static int __cuda_max(int a, int b)
{
  return max(a, b);
}

static int __cuda_min(int a, int b)
{
  return min(a, b);
}

static unsigned int __cuda_umax(unsigned int a, unsigned int b)
{
  return umax(a, b);
}

static unsigned int __cuda_umin(unsigned int a, unsigned int b)
{
  return umin(a, b);
}

static long long int __cuda_llmax(long long int a, long long int b)
{
  return llmax(a, b);
}

static long long int __cuda_llmin(long long int a, long long int b)
{
  return llmin(a, b);
}

static unsigned long long int __cuda_ullmax(unsigned long long int a, unsigned long long int b)
{
  return ullmax(a, b);
}

static unsigned long long int __cuda_ullmin(unsigned long long int a, unsigned long long int b)
{
  return ullmin(a, b);
}

static long long int __cuda_llrintf(float a)
{


#line 1310 "c:\\cuda\\include\\math_functions.h"
  return __float2ll_rn(a);
#line 1312 "c:\\cuda\\include\\math_functions.h"
}

static long int __cuda_lrintf(float a)
{


#line 1319 "c:\\cuda\\include\\math_functions.h"


#line 1322 "c:\\cuda\\include\\math_functions.h"
  return (long int)__float2int_rn(a);
#line 1324 "c:\\cuda\\include\\math_functions.h"
#line 1325 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_nearbyintf(float a)
{


#line 1332 "c:\\cuda\\include\\math_functions.h"
  return roundf(a);


#line 1336 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_fmaxf(float a, float b)
{


#line 1343 "c:\\cuda\\include\\math_functions.h"
  return fmaxf(a, b);


#line 1347 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_fminf(float a, float b)
{


#line 1354 "c:\\cuda\\include\\math_functions.h"
  return fminf(a, b);


#line 1358 "c:\\cuda\\include\\math_functions.h"
}






static int __cuda___finitef(float a)
{
  return __cuda_fabsf(a) < __int_as_float(0x7f800000);
}








#line 1378 "c:\\cuda\\include\\math_functions.h"

static int __cuda___isinff(float a)
{
  return __cuda_fabsf(a) == __int_as_float(0x7f800000);
}

static int __cuda___isnanf(float a)
{
  return !(__cuda_fabsf(a) <= __int_as_float(0x7f800000));
}

static float __cuda_nextafterf(float a, float b)
{
  unsigned int ia;
  unsigned int ib;
  ia = __float_as_int(a);
  ib = __float_as_int(b);

  if ((ia << 1) < 0x01000000) ia &= 0x80000000; 
  if ((ib << 1) < 0x01000000) ib &= 0x80000000; 
#line 1399 "c:\\cuda\\include\\math_functions.h"
  if (__cuda___isnanf(a) || __cuda___isnanf(b)) return a + b; 
  if (__int_as_float (ia | ib) == 0.0f) return __int_as_float(ib);

  if (__int_as_float(ia) == 0.0f) {
    return __cuda_copysignf(1.175494351e-38f, b); 
  }




#line 1410 "c:\\cuda\\include\\math_functions.h"
  if ((a < b) && (a < 0.0f)) ia--;
  if ((a < b) && (a > 0.0f)) ia++;
  if ((a > b) && (a < 0.0f)) ia++;
  if ((a > b) && (a > 0.0f)) ia--;
  a = __int_as_float(ia);

  if (__cuda_fabsf(a) < 1.175494351e-38f) {
    a = __int_as_float(ia & 0x80000000); 
  }
#line 1420 "c:\\cuda\\include\\math_functions.h"
  return a;
}

static float __cuda_nanf(const char *tagp)
{
  
  return __int_as_float(0x7fffffff);
}

static float __internal_fmad(float a, float b, float c)
{


#line 1434 "c:\\cuda\\include\\math_functions.h"
  return a * b + c;
#line 1436 "c:\\cuda\\include\\math_functions.h"
}


static float __internal_atanhf_kernel(float a_1, float a_2)
{
  float a, a2, t;

  a = a_1 + a_2;
  a2 = a * a;    
  t =                         1.566305595598990E-001f/64.0f;
  t = __internal_fmad (t, a2, 1.995081856004762E-001f/16.0f);
  t = __internal_fmad (t, a2, 3.333382699617026E-001f/4.0f);
  t = t * a2;
  t = __internal_fmad (t, a, a_2);
  t = t + a_1;
  return t;
}  




static float __internal_atanf_kernel(float a)
{
  float t4, t0, t1;

  t4 = a * a;
  t0 = -5.674867153f;
  t0 = __internal_fmad (t4, -0.823362947f, t0);
  t0 = __internal_fmad (t0, t4, -6.565555096f);
  t0 = t0 * t4;
  t0 = t0 * a;
  t1 = t4 + 11.33538818f;
  t1 = __internal_fmad (t1, t4, 28.84246826f);
  t1 = __internal_fmad (t1, t4, 19.69667053f);
  t1 = 1.0f / t1;
  a = __internal_fmad (t0, t1, a);
  return a;
}


static float __internal_tan_kernel(float a)
{
  float a2, s, t;

  a2 = a * a;
  t  = __internal_fmad (4.114678393115178E-003f, a2, -8.231194034909670E-001f);
  s  = a2 - 2.469348886157666E+000f;
  s  = 1.0f / s;
  t  = t * s;
  t  = t * a2;
  t  = __internal_fmad (t, a, a);
  return t;
}

static float __internal_accurate_logf(float a)
{
  float t;
  float z;
  float m;
  int ia;
  ia = __float_as_int(a);

  if ((a > 0.0f) && (a < __int_as_float(0x7f800000))) {
    int e = -127;







#line 1508 "c:\\cuda\\include\\math_functions.h"
    
    m = __int_as_float((ia & 0x807fffff) | 0x3f800000);
    e += ((unsigned)ia >> 23);
    if (m > 1.414213562f) {
      m = m * 0.5f;
      e = e + 1;
    }      
    t = m - 1.0f;
    z = m + 1.0f;
    z = __fdividef (t, z);
    z = -t * z;
    z = __internal_atanhf_kernel(t, z);
    z = __internal_fmad ((float)e, 0.693147181f, z);
    return z;
  } else {
    
    return __logf(a);
  }
}  

static float2 __internal_log_ep(float a)
{
  float2 res;
  int expo;
  float m;
  float log_hi, log_lo;
  float t_hi, t_lo;
  float f, g, u, v, q;


#line 1539 "c:\\cuda\\include\\math_functions.h"
  float r, s, e;
#line 1541 "c:\\cuda\\include\\math_functions.h"
  expo = (__float_as_int(a) >> 23) & 0xff;







#line 1550 "c:\\cuda\\include\\math_functions.h"
  expo -= 127;
  m = __int_as_float((__float_as_int(a) & 0x807fffff) | 0x3f800000);
  if (m > 1.414213562f) {
    m = m * 0.5f;
    expo = expo + 1;
  }

  




  f = m - 1.0f;
  g = m + 1.0f;
  g = 1.0f / g;
  u = 2.0f * f * g;
  v = u * u;
  q = 1.49356810919559350E-001f/64.0f;
  q = __internal_fmad (q, v, 1.99887797540072460E-001f/16.0f);
  q = __internal_fmad (q, v, 3.33333880955515580E-001f/4.0f);
  q = q * v;
  q = q * u;
  log_hi = __int_as_float(__float_as_int(u) & 0xfffff000);
  v = __int_as_float(__float_as_int(f) & 0xfffff000);
  u = 2.0f * (f - log_hi);
  f = f - v;
  u = __internal_fmad (-log_hi, v, u);
  u = __internal_fmad (-log_hi, f, u);
  u = g * u;
  

  
  r = log_hi + u;
  s = u - (r - log_hi);
  log_hi = r;
  log_lo = s;
  
  r = log_hi + q;
  s = ((log_hi - r) + q) + log_lo;
  log_hi = e = r + s;
  log_lo = (r - e) + s;

  
  t_hi = expo * 0.6931457519f;    
  t_lo = expo * 1.4286067653e-6f;

  
  r = t_hi + log_hi;
  s = (((t_hi - r) + log_hi) + log_lo) + t_lo;
  res.y = e = r + s;
  res.x = (r - e) + s;
  return res;
}

static float __internal_accurate_log2f(float a)
{
  return 1.442695041f * __internal_accurate_logf(a);
}




static float2 __internal_dsmul (float2 x, float2 y)
{
    float2 z;


#line 1618 "c:\\cuda\\include\\math_functions.h"
    float up, vp, u1, u2, v1, v2, mh, ml;
#line 1620 "c:\\cuda\\include\\math_functions.h"
    up  = x.y * 4097.0f;
    u1  = (x.y - up) + up;
    u2  = x.y - u1;
    vp  = y.y * 4097.0f;
    v1  = (y.y - vp) + vp;
    v2  = y.y - v1;
    mh  = __fmul_rn(x.y,y.y);
    ml  = (((u1 * v1 - mh) + u1 * v2) + u2 * v1) + u2 * v2;
    ml  = (__fmul_rn(x.y,y.x) + __fmul_rn(x.x,y.y)) + ml;
    z.y = up = mh + ml;
    z.x = (mh - up) + ml;
    return z;
}


static __attribute__((__constant__)) unsigned int __cudart_i2opi_f [] = {
  0x3c439041,
  0xdb629599,
  0xf534ddc0,
  0xfc2757d1,
  0x4e441529,
  0xa2f9836e,
};


static float __internal_trig_reduction_kernel(float a, int *quadrant)
{
  float j;
  int q;
  if (__cuda_fabsf(a) > 48039.0f) {
    
    unsigned int ia = __float_as_int(a);
    unsigned int s = ia & 0x80000000;
    unsigned int result[7];
    unsigned int phi, plo;
    unsigned int hi, lo;
    unsigned int e;
    int idx;
    e = ((ia >> 23) & 0xff) - 128;
    ia = (ia << 8) | 0x80000000;
    
    idx = 4 - (e >> 5);
    hi = 0;

#pragma unroll 1
#line 1666 "c:\\cuda\\include\\math_functions.h"
    for (q = 0; q < 6; q++) {
      plo = __cudart_i2opi_f[q] * ia;
      phi = __umulhi (__cudart_i2opi_f[q], ia);
      lo = hi + plo;
      hi = phi + (lo < plo);
      result[q] = lo;
    }
    result[q] = hi;
    e = e & 31;
    


    hi = result[idx+2];
    lo = result[idx+1];
    if (e) {
      q = 32 - e;
      hi = (hi << e) + (lo >> q);
      lo = (lo << e) + (result[idx] >> q);
    }
    q = hi >> 30;
    
    hi = (hi << 2) + (lo >> 30);
    lo = (lo << 2);
    e = (hi + (lo > 0)) > 0x80000000; 
    q += e;
    if (s) q = -q;
    if (e) {
      unsigned int t;
      hi = ~hi;
      lo = -(int)lo;
      t = (lo == 0);
      hi += t;
      s = s ^ 0x80000000;
    }
    *quadrant = q;
    
    e = 0;
    while ((int)hi > 0) {
      hi = (hi << 1) + (lo >> 31);
      lo = (lo << 1);
      e--;
    }
    lo = hi * 0xc90fdaa2;
    hi = __umulhi(hi, 0xc90fdaa2);
    if ((int)hi > 0) {
      hi = (hi << 1) + (lo >> 31);
      lo = (lo << 1);
      e--;
    }
    hi = hi + (lo > 0);
    ia = s | (((e + 126) << 23) + (hi >> 8) + ((hi << 24) >= 0x80000000));
    return __int_as_float(ia);
  }
  q = __float2int_rn (a * 0.636619772f);
  j = (float)q;
  a = __internal_fmad (-j, 1.5703125000000000e+000f, a);



#line 1726 "c:\\cuda\\include\\math_functions.h"
  a = __internal_fmad (-j, 4.8351287841796875e-004f, a);
  a = __internal_fmad (-j, 3.1385570764541626e-007f, a);
#line 1729 "c:\\cuda\\include\\math_functions.h"
  a = __internal_fmad (-j, 6.0771005065061922e-011f, a);
  *quadrant = q;
  return a;
}










static float __internal_expf_kernel(float a, float scale)
{
  float j, z;

  j = __cuda_truncf(a * 1.442695041f);
  z = __internal_fmad (j, -0.6931457519f,    a);
  z = __internal_fmad (j, -1.4286067653e-6f, z);
  z = z * 1.442695041f;
  z = __cuda_exp2f(z) * __cuda_exp2f(j + scale);
  return z;
}

static float __internal_accurate_expf(float a)
{
  float z;

  z = __internal_expf_kernel(a, 0.0f);
  if (a < -105.0f) z = 0.0f;
  if (a >  105.0f) z = __int_as_float(0x7f800000);
  return z;
}

static float __internal_accurate_exp10f(float a)
{
  float j, z;

  j = __cuda_truncf(a * 3.321928094f);
  z = __internal_fmad (j, -3.0102920532226563e-001f, a);
  z = __internal_fmad (j, -7.9034171557301747e-007f, z);
  z = z * 3.321928094f;
  z = __cuda_exp2f(z) * __cuda_exp2f(j);
  if (a < -46.0f) z = 0.0f;
  if (a >  46.0f) z = __int_as_float(0x7f800000);
  return z;
}

static float __internal_lgammaf_pos(float a)
{
  float sum;
  float s, t;

  if (a == __int_as_float(0x7f800000)) {
    return a;
  }
  if (a >= 3.0f) {
    if (a >= 7.8f) {
      


      s = 1.0f / a;
      t = s * s;
      sum =                           0.77783067e-3f;
      sum = __internal_fmad (sum, t, -0.2777655457e-2f);
      sum = __internal_fmad (sum, t,  0.83333273853e-1f);
      sum = __internal_fmad (sum, s,  0.918938533204672f);
      s = 0.5f * __internal_accurate_logf(a);
      t = a - 0.5f;
      s = s * t;
      t = s - a;
      s = __fadd_rn(s, sum); 
      t = t + s;
      return t;
    } else {
      a = a - 3.0f;
      s =                        -7.488903254816711E+002f;
      s = __internal_fmad (s, a, -1.234974215949363E+004f);
      s = __internal_fmad (s, a, -4.106137688064877E+004f);
      s = __internal_fmad (s, a, -4.831066242492429E+004f);
      s = __internal_fmad (s, a, -1.430333998207429E+005f);
      t =                     a - 2.592509840117874E+002f;
      t = __internal_fmad (t, a, -1.077717972228532E+004f);
      t = __internal_fmad (t, a, -9.268505031444956E+004f);
      t = __internal_fmad (t, a, -2.063535768623558E+005f);
      t = __fdividef (s, t);
      t = t + a;
      return t;
    }
  } else if (a >= 1.5f) {
    a = a - 2.0f;
    t =                         4.959849168282574E-005f;
    t = __internal_fmad (t, a, -2.208948403848352E-004f);
    t = __internal_fmad (t, a,  5.413142447864599E-004f);
    t = __internal_fmad (t, a, -1.204516976842832E-003f);
    t = __internal_fmad (t, a,  2.884251838546602E-003f);
    t = __internal_fmad (t, a, -7.382757963931180E-003f);
    t = __internal_fmad (t, a,  2.058131963026755E-002f);
    t = __internal_fmad (t, a, -6.735248600734503E-002f);
    t = __internal_fmad (t, a,  3.224670187176319E-001f);
    t = __internal_fmad (t, a,  4.227843368636472E-001f);
    t = t * a;
    return t;
  } else if (a >= 0.7f) {
    a = 1.0f - a;
    t =                        4.588266515364258E-002f;
    t = __internal_fmad (t, a, 1.037396712740616E-001f);
    t = __internal_fmad (t, a, 1.228036339653591E-001f);
    t = __internal_fmad (t, a, 1.275242157462838E-001f);
    t = __internal_fmad (t, a, 1.432166835245778E-001f);
    t = __internal_fmad (t, a, 1.693435824224152E-001f);
    t = __internal_fmad (t, a, 2.074079329483975E-001f);
    t = __internal_fmad (t, a, 2.705875136435339E-001f);
    t = __internal_fmad (t, a, 4.006854436743395E-001f);
    t = __internal_fmad (t, a, 8.224669796332661E-001f);
    t = __internal_fmad (t, a, 5.772156651487230E-001f);
    t = t * a;
    return t;
  } else {
    t =                         3.587515669447039E-003f;
    t = __internal_fmad (t, a, -5.471285428060787E-003f);
    t = __internal_fmad (t, a, -4.462712795343244E-002f);
    t = __internal_fmad (t, a,  1.673177015593242E-001f);
    t = __internal_fmad (t, a, -4.213597883575600E-002f);
    t = __internal_fmad (t, a, -6.558672843439567E-001f);
    t = __internal_fmad (t, a,  5.772153712885004E-001f);
    t = t * a;
    t = __internal_fmad (t, a, a);
    return -__internal_accurate_logf(t);
  }
}


static float __internal_sin_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z  =                         -1.95152959e-4f;
  z  = __internal_fmad (z, x2,  8.33216087e-3f);
  z  = __internal_fmad (z, x2, -1.66666546e-1f);
  z  = z * x2;
  z  = __internal_fmad (z, x, x);
  return z;
}


static float __internal_cos_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z  =                          2.44331571e-5f;
  z  = __internal_fmad (z, x2, -1.38873163e-3f);
  z  = __internal_fmad (z, x2,  4.16666457e-2f);
  z  = __internal_fmad (z, x2, -5.00000000e-1f);
  z  = __internal_fmad (z, x2,  1.00000000e+0f);
  return z;
}

static float __internal_accurate_sinf(float a)
{
  float z;
  int   i;

  if ((__cuda___isinff(a)) || (a == 0.0f)) {
    return __fmul_rn (a, 0.0f);
  }
  z = __internal_trig_reduction_kernel(a, &i);
  
  if (i & 1) {
    z = __internal_cos_kernel(z);
  } else {
    z = __internal_sin_kernel(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
}







static float __cuda_rintf(float a)
{


#line 1923 "c:\\cuda\\include\\math_functions.h"
  return __cuda_nearbyintf(a);
#line 1925 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_sinf(float a)
{


#line 1932 "c:\\cuda\\include\\math_functions.h"

#line 1934 "c:\\cuda\\include\\math_functions.h"
  return __internal_accurate_sinf(a);
#line 1936 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_cosf(float a)
{


#line 1943 "c:\\cuda\\include\\math_functions.h"

#line 1945 "c:\\cuda\\include\\math_functions.h"
  float z;
  int i;

  if (__cuda___isinff(a)) {
    return __fadd_rn (a, -a); 
  }
  z = __internal_trig_reduction_kernel(a, &i);
  
  i++;
  if (i & 1) {
    z = __internal_cos_kernel(z);
  } else {
    z = __internal_sin_kernel(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
#line 1964 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_tanf(float a)
{


#line 1971 "c:\\cuda\\include\\math_functions.h"

#line 1973 "c:\\cuda\\include\\math_functions.h"
  float z;
  int   i;

  if (__cuda___isinff(a)) {
    return __fadd_rn (a, -a); 
  }
  z = __internal_trig_reduction_kernel(a, &i);
  
  z = __internal_tan_kernel(z);
  if (i & 1) {
    z = - (1.0f / z);
  }
  return z;
#line 1987 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_log2f(float a)
{


#line 1994 "c:\\cuda\\include\\math_functions.h"

#line 1996 "c:\\cuda\\include\\math_functions.h"
  return __internal_accurate_log2f(a);
#line 1998 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_expf(float a)
{


#line 2005 "c:\\cuda\\include\\math_functions.h"

#line 2007 "c:\\cuda\\include\\math_functions.h"
  return __internal_accurate_expf(a);
#line 2009 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_exp10f(float a)
{


#line 2016 "c:\\cuda\\include\\math_functions.h"

#line 2018 "c:\\cuda\\include\\math_functions.h"
  return __internal_accurate_exp10f(a);
#line 2020 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_coshf(float a)
{
  float z;

  a = __cuda_fabsf(a);
  z = __internal_expf_kernel(a, -2.0f);
  z = __internal_fmad (2.0f, z,  __fdividef (0.125f, z));
  if (a >= 90.0f) {
    z = __int_as_float(0x7f800000);     
  }
  return z;
}

static float __cuda_sinhf(float a)
{
  float s, z;

  s = a;
  a = __cuda_fabsf(a);
  if (a < 1.0f) {         
    float a2 = a * a;
    
    z =                         2.816951222e-6f;
    z = __internal_fmad (z, a2, 1.983615978e-4f);
    z = __internal_fmad (z, a2, 8.333350058e-3f);
    z = __internal_fmad (z, a2, 1.666666650e-1f);
    z = z * a2;
    z = __internal_fmad (z, a, a);
  } else {
    z = __internal_expf_kernel(a, -2.0f);
    z = __internal_fmad (2.0f, z, -__fdividef (0.125f, z));
    if (a >= 90.0f) {
      z = __int_as_float(0x7f800000);     
    }
  }
  return __cuda_copysignf(z, s);
}

static float __cuda_tanhf(float a)
{
  float s, t;

  t = __cuda_fabsf(a);
  if (t < 0.55f) {
    float z, z2;
    z = t;
    z2 = z * z;
    t =                          1.643758066599993e-2f;
    t = __internal_fmad (t, z2, -5.267181327760551e-2f);
    t = __internal_fmad (t, z2,  1.332072505223051e-1f);
    t = __internal_fmad (t, z2, -3.333294663641083e-1f);
    t = t * z2;
    s = __internal_fmad (t, z, z);
  } else {
    s = 1.0f - __fdividef(2.0f,(__internal_expf_kernel(2.0f * t, 0.0f)+1.0f));
    if (t >= 88.0f) {
      s = 1.0f;
    }
  }
  return __cuda_copysignf(s, a);
}

static float __cuda_atan2f(float a, float b)
{


#line 2089 "c:\\cuda\\include\\math_functions.h"
  float t0, t1, t3, fa, fb;

  
  
  fb = __cuda_fabsf(b);
  fa = __cuda_fabsf(a);

  if (fa == 0.0f && fb == 0.0f) {
    t3 = __cuda___signbitf(b) ? 3.141592654f : 0;
  } else if ((fa == __int_as_float(0x7f800000)) && (fb == __int_as_float(0x7f800000))) {
    t3 = __cuda___signbitf(b) ? 2.356194490f : 0.785398163f;
  } else {
    
    if (fb < fa) {
      t0 = fa;
      t1 = fb;
    } else {
      t0 = fb;
      t1 = fa;
    }
    t3 = __internal_accurate_fdividef(t1, t0);
    t3 = __internal_atanf_kernel(t3);
    
    if (fa > fb)  t3 = 1.570796327f - t3;
    if (b < 0.0f) t3 = 3.141592654f - t3;
  }
  t3 = __cuda_copysignf(t3, a);

  return t3;
#line 2119 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_atanf(float a)
{
  float t0, t1;

  
  t0 = __cuda_fabsf(a);
  t1 = t0;
  if (t0 > 1.0f) {
    t1 = 1.0f / t1;
  }
  
  t1 = __internal_atanf_kernel(t1);
  
  if (t0 > 1.0f) {
    t1 = 1.570796327f - t1;
  }
  return __cuda_copysignf(t1, a);
}


static float __internal_asinf_kernel(float a)
{
  float t2, t3, t4;

  t2 = a * a;
  t3 = -0.501162291f;
  t3 = __internal_fmad (t3, t2, 0.915201485f);
  t3 = t3 * t2;
  t3 = t3 * a;
  t4 = t2 - 5.478654385f;
  t4 = __internal_fmad (t4, t2, 5.491230488f);
  t4 = 1.0f / t4;
  a = __internal_fmad (t3, t4, a);
  return a;
}

static float __cuda_asinf(float a)
{
  float t0, t1, t2;

  t0 = __cuda_fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = __cuda_sqrtf(t2);
  t1 = t0 > 0.575f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t2 = __internal_fmad (-2.0f, t1, 1.570796327f);
  if (t0 > 0.575f) {
    t1 = t2;
  }
  return __cuda_copysignf(t1, a);
}

static float __cuda_acosf(float a)
{
  float t0, t1, t2;

  t0 = __cuda_fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = __cuda_sqrtf(t2);
  t1 = t0 > 0.575f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t1 = t0 > 0.575f ? 2.0f * t1 : 1.570796327f - t1;
  if (__cuda___signbitf(a)) {
    t1 = 3.141592654f - t1;
  }
  return t1;
}

static float __cuda_logf(float a)
{


#line 2196 "c:\\cuda\\include\\math_functions.h"

#line 2198 "c:\\cuda\\include\\math_functions.h"
  return __internal_accurate_logf(a);
#line 2200 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_log10f(float a)
{


#line 2207 "c:\\cuda\\include\\math_functions.h"

#line 2209 "c:\\cuda\\include\\math_functions.h"
  return 0.434294482f * __internal_accurate_logf(a);
#line 2211 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_log1pf(float a)
{


#line 2218 "c:\\cuda\\include\\math_functions.h"
  float t;



#line 2223 "c:\\cuda\\include\\math_functions.h"
  if (a >= -0.394f && a <= 0.65f) {
    
    t = a + 2.0f;
    t = __fdividef (a, t);
    t = -a * t;
    t = __internal_atanhf_kernel (a, t);
  } else {
    t = __internal_accurate_logf (1.0f + a);
  }
  return t;
#line 2234 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_acoshf(float a)
{


#line 2241 "c:\\cuda\\include\\math_functions.h"
  float t;

  t = a - 1.0f;
  if (__cuda_fabsf(t) > 8388608.0f) {
    
    return 0.693147181f + __internal_accurate_logf(a);
  } else {
    t = t + __cuda_sqrtf(__internal_fmad (a, t, t));
    return __cuda_log1pf(t);
  }
#line 2252 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_asinhf(float a)
{


#line 2259 "c:\\cuda\\include\\math_functions.h"
  float fa, oofa, t;

  fa = __cuda_fabsf(a);
  if (fa > 8.507059173e37f) {   
    t = 0.693147181f + __logf(fa);  
  } else {
    oofa = 1.0f / fa;
    t =fa+__fdividef (fa,(oofa+__cuda_sqrtf(__internal_fmad(oofa,oofa,1.0f))));
    t = __cuda_log1pf(t);
  }
  return __cuda_copysignf(t, a);
#line 2271 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_atanhf(float a)
{


#line 2278 "c:\\cuda\\include\\math_functions.h"
  float fa, t;

  fa = __cuda_fabsf(a);
  t = __fdividef ((2.0f * fa), (1.0f - fa));
  t = 0.5f * __cuda_log1pf(t);
  return __cuda_copysignf(t, a);
#line 2285 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_expm1f(float a)
{
  float t, z, j, u;
  
  t = __cuda_rintf (a * 1.442695041f);
  z = __internal_fmad (-t, 0.6931457519f, a);
  z = __internal_fmad (-t, 1.4286067653e-6f, z);
  
  if (__cuda_fabsf(a) < 0.41f) {
    z = a;
    t = 0.0f;
  }
  
  j = t;
  if (t == 128.0f) j = j - 1.0f; 
  
  u =                        1.38795078474044430E-003f;
  u = __internal_fmad (u, z, 8.38241261853264930E-003f);
  u = __internal_fmad (u, z, 4.16678317762833940E-002f);
  u = __internal_fmad (u, z, 1.66663978874356580E-001f);
  u = __internal_fmad (u, z, 4.99999940395997040E-001f);
  u = u * z;
  u = __internal_fmad (u, z, z);
  if (a == 0.0f) u = a; 
  
  z = __cuda_exp2f (j);
  a = z - 1.0f;
  if (a != 0.0f) u = __internal_fmad (u, z, a); 
  if (t == 128.0f) u = u + u; 
  
  if (j >  128.0f) u = __int_as_float(0x7f800000);
  if (j <  -25.0f) u = -1.0f;
  return u;
}

static float __cuda_hypotf(float a, float b)
{


#line 2327 "c:\\cuda\\include\\math_functions.h"
  float v, w, t;

  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  
  if (a > b) {
    v = a;
    w = b; 
  } else {
    v = b;
    w = a;
  }
  t = __internal_accurate_fdividef(w, v);
  t = __internal_fmad (t, t, 1.0f);
  t = v * __cuda_sqrtf(t);
  if (v == 0.0f) {
    t = v + w;
  }
  if ((v == __int_as_float(0x7f800000)) || (w == __int_as_float(0x7f800000))) {
    t = __int_as_float(0x7f800000);
  }
  return t;
#line 2350 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_cbrtf(float a)
{


#line 2357 "c:\\cuda\\include\\math_functions.h"
  float s, t;

  s = __cuda_fabsf(a);
  if ((a == 0.0f) || (s == __int_as_float(0x7f800000))) {
    return a + a;
  } 
  t = __cuda_exp2f(0.333333333f * __log2f(s));   
  t = t-(t-(__fdividef(s,(t*t))))*0.333333333f;  

  if (__cuda___signbitf(a)) {
    t = -t;
  }


#line 2372 "c:\\cuda\\include\\math_functions.h"
  return t;
#line 2374 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_erff(float a)
{
  float t, r, q;

  t = __cuda_fabsf(a);
  if (t < 1.0f) {
    t = t * t;
    r =                        -5.58510127926029810E-004f;
    r = __internal_fmad (r, t,  4.90688891415893070E-003f);
    r = __internal_fmad (r, t, -2.67027980930150640E-002f);
    r = __internal_fmad (r, t,  1.12799056505903940E-001f);
    r = __internal_fmad (r, t, -3.76122956138427440E-001f);
    r = __internal_fmad (r, t,  1.12837911712623450E+000f);
    a = a * r;
  } else if (t <= __int_as_float(0x7f800000)) { 
    


    q = __internal_fmad (t, 0.3275911f, 1.0f);
    q = 1.0f / q;
    r =                         1.061405429f;
    r = __internal_fmad (r, q, -1.453152027f);
    r = __internal_fmad (r, q,  1.421413741f);
    r = __internal_fmad (r, q, -0.284496736f);
    r = __internal_fmad (r, q,  0.254829592f);
    r = r * q;
    q = __internal_expf_kernel(-a * a, 0.0f);
    r = __internal_fmad (-q, r, 1.0f);
    if (t >= 5.5f) {
      r = 1.0f;
    }
    a = __int_as_float (__float_as_int(r) | (__float_as_int(a) & 0x80000000));
  }
  return a;
}

static float __cuda_erfinvf (float a)
{
  float fa, t;
  
  fa = fabsf(a);
  if (fa >= 1.0f) {
    t = __cuda_rsqrtf (__int_as_float (0xffc00000));  
    if (fa == 1.0f) {
      t = a * __int_as_float(0x7f800000);   
    }
  } else if (fa > 0.9375f) {
    



    float p, q;

    t = __cuda_log1pf(-fa);
    t = __cuda_rsqrtf(-t);
    p =                        -1.64441567910e-1f;
    p = __internal_fmad (p, t,  6.80544246825e-1f);
    p = __internal_fmad (p, t, -1.12808139162e+0f);
    p = __internal_fmad (p, t,  6.90969348887e-1f);
    p = __internal_fmad (p, t,  1.38271964963e+0f);
    p = __internal_fmad (p, t,  1.55047000312e-1f);
    q =                     t + 1.38522814199e+0f;
    q = __internal_fmad (q, t,  1.55024849822e-1f);
    q = q * t;
    t = __fdividef (p, q);
    if (a < 0.0f) t = -t;
  } else if (fa > 0.75f) {
    



    float p, q;

    t = __internal_fmad (a, a, -0.87890625f);
    p =                        -7.1986748896e+0f;
    p = __internal_fmad (p, t, +1.3411974175e+1f);
    p = __internal_fmad (p, t, -5.1381573203e+0f);
    p = __internal_fmad (p, t,  4.9633374831e-1f);
    q =                     t  -1.1436535838e+1f;
    q = __internal_fmad (q, t,  1.3568885572e+1f);
    q = __internal_fmad (q, t, -4.1747509256e+0f);
    q = __internal_fmad (q, t,  3.5327242323e-1f);
    p = __fdividef (p, q);
    t = a * p;
  } else {  
    float a2;

    a2 = a * a;
    t =                          6.1046168794766742E-001f;
    t = __internal_fmad (t, a2, -8.9504882462753121E-001f);
    t = __internal_fmad (t, a2,  7.0224162369928511E-001f);
    t = __internal_fmad (t, a2, -1.9993784895823222E-001f);
    t = __internal_fmad (t, a2,  1.1920613463949599E-001f);
    t = __internal_fmad (t, a2,  8.0131492246997685E-002f);
    t = __internal_fmad (t, a2,  1.2793154958377403E-001f);
    t = __internal_fmad (t, a2,  2.3200529172828793E-001f);
    t = __internal_fmad (t, a2,  8.8622695604694379E-001f);
    t = t * a;
  }
  return t;
}

static float __cuda_erfcf(float a)
{


#line 2483 "c:\\cuda\\include\\math_functions.h"
  if (a <= 0.813f) {
    return 1.0f - __cuda_erff(a);
  } else if (a > 10.055f) {
    return 0.0f;
  } else {
    float p;
    float q;
    float h;
    float l;
    



    p =                        1.9997798317768276E-006f;
    p = __internal_fmad (p, a, 5.6410849770777538E-001f);
    p = __internal_fmad (p, a, 2.4579440583231387E+000f);
    p = __internal_fmad (p, a, 4.9763988947448308E+000f);
    p = __internal_fmad (p, a, 4.5767235962336885E+000f);
    q =                    a + 4.3540863476555538E+000f;
    q = __internal_fmad (q, a, 9.3453217404616584E+000f);
    q = __internal_fmad (q, a, 1.0132282183545772E+001f);
    q = __internal_fmad (q, a, 4.5781789912165518E+000f);   
    
    h = 1.0f / q;
    q = __internal_fmad (-q * h, h, 2.0f * h);
    p = p * q;
    
    h = __int_as_float(__float_as_int(a) & 0xfffff000);  
    l = __fadd_rn (a, -h);  
    q = __fmul_rn (-h, h);  
    q = __internal_expf_kernel(q, 0.0f);
    a = a + h;
    l = l * a;
    h = __internal_expf_kernel(-l, 0.0f);
    q = q * h;
    p = p * q;
    return p;
  }
}

static float __cuda_erfcinvf (float a)
{
  float t;
  if (a <= 0.0f) {
    t = __int_as_float(0x7fffffff);
    if (a == 0.0f) {
      t = (1.0f - a) * __int_as_float(0x7f800000);
    }
  } 
  else if (a >= 0.0625f) {
    t = __cuda_erfinvf (1.0f - a);
  }
  else {
    float p, q;
    t = __cuda_logf(a);
    t = __cuda_rsqrtf(-t);
    p =                        -1.64441567910e-1f;
    p = __internal_fmad (p, t,  6.80544246825e-1f);
    p = __internal_fmad (p, t, -1.12808139162e+0f);
    p = __internal_fmad (p, t,  6.90969348887e-1f);
    p = __internal_fmad (p, t,  1.38271964963e+0f);
    p = __internal_fmad (p, t,  1.55047000312e-1f);
    q =                     t + 1.38522814199e+0f;
    q = __internal_fmad (q, t,  1.55024849822e-1f);
    q = q * t;
    t = __fdividef (p, q);
  }
  return t;
}

static float __cuda_lgammaf(float a)
{
  float t;
  float i;
  int quot;
  t = __internal_lgammaf_pos(__cuda_fabsf(a));
  if (a >= 0.0f) return t;
  a = __cuda_fabsf(a);
  i = __cuda_floorf(a);                   
  if (a == i) return __int_as_float(0x7f800000); 
  if (a < 1e-19f) return -__internal_accurate_logf(a);
  i = __cuda_rintf (2.0f * a);
  quot = (int)i;
  i = __internal_fmad (-i, 0.5f, a);
  i = i * 3.141592654f;
  if (quot & 1) {
    i = __internal_cos_kernel(i);
  } else {
    i = __internal_sin_kernel(i);
  }
  i = __cuda_fabsf(i);
  t = 1.144729886f - __internal_accurate_logf(i * a) - t;
  return t;
}

static float __cuda_ldexpf(float a, int b)
{


#line 2583 "c:\\cuda\\include\\math_functions.h"
  float fa = __cuda_fabsf(a);

  if ((fa == 0.0f) || (fa == __int_as_float(0x7f800000)) || (b == 0)) {
    if (!(fa > 0.0f)) a = a + a;
    return a;
  } else if (__cuda_abs(b) < 126) {
    return a * __cuda_exp2f((float)b);
  } else if (__cuda_abs(b) < 252) {
    int bhalf = b / 2;
    return a * __cuda_exp2f((float)bhalf) * __cuda_exp2f((float)(b - bhalf));
  } else {
    int bquarter = b / 4;
    float t = __cuda_exp2f((float)bquarter);
    return a * t * t * t * __cuda_exp2f((float)(b - 3 * bquarter));
  }
#line 2599 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_scalbnf(float a, int b)
{


#line 2606 "c:\\cuda\\include\\math_functions.h"
  
  return __cuda_ldexpf(a, b);
#line 2609 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_scalblnf(float a, long int b)
{


#line 2616 "c:\\cuda\\include\\math_functions.h"
  int t;
  if (b > 2147483647L) {
    t = 2147483647;
  } else if (b < (-2147483647 - 1)) {
    t = (-2147483647 - 1);
  } else {
    t = (int)b;
  }
  return __cuda_scalbnf(a, t);
#line 2626 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_frexpf(float a, int *b)
{
  float fa = __cuda_fabsf(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 1.175494351e-38f) {
    a *= 16777216.0f;
    denorm = 24;
  } else {
    denorm = 0;
  }
  expo = ((__float_as_int(a) >> 23) & 0xff);
  if ((fa == 0.0f) || (expo == 0xff)) {
    expo = 0;
    a = a + a;
  } else {  
    expo = expo - denorm - 126;
    a = __int_as_float(((__float_as_int(a) & 0x807fffff) | 0x3f000000));
  }
  *b = expo;
  return a;
}

static float __cuda_modff(float a, float *b)
{


#line 2657 "c:\\cuda\\include\\math_functions.h"
  float t;
  if (__cuda___finitef(a)) {
    t = __cuda_truncf(a);
    *b = t;
    t = a - t;
    return __cuda_copysignf(t, a);
  } else if (__cuda___isinff(a)) {
    t = 0.0f;
    *b = a;
    return __cuda_copysignf(t, a);
  } else {
    *b = a; 
    return a;
  }
#line 2672 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_fmodf(float a, float b)
{


#line 2679 "c:\\cuda\\include\\math_functions.h"
  float orig_a = a;
  float orig_b = b;
  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return __cuda_rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {











#line 2701 "c:\\cuda\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
#line 2707 "c:\\cuda\\include\\math_functions.h"
    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5f;
    }
    return __cuda_copysignf(a, orig_a);
  } else {
    if (!(a > 0.0f)) orig_a = orig_a + orig_a;
    return orig_a;
  }
#line 2719 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_remainderf(float a, float b)
{

  float twoa = 0.0f;
  unsigned int quot0 = 0;  
  float orig_a = a;
  float orig_b = b;

  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return __cuda_rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {










#line 2748 "c:\\cuda\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
    
    if (a == scaled_b) {
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }    
#line 2758 "c:\\cuda\\include\\math_functions.h"
    while (scaled_b >= b) {
      quot0 = 0;
      if (a >= scaled_b) {
        twoa = __internal_fmad (a, 2.0f, -scaled_b) - scaled_b;
        a = a - scaled_b;
        quot0 = 1;
      }
      scaled_b *= 0.5f;
    }
  }
  






#line 2776 "c:\\cuda\\include\\math_functions.h"
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a -= b;
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  } else {
    
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a = 0.5f * __internal_fmad(b, -2.0f, twoa);
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  }
#line 2790 "c:\\cuda\\include\\math_functions.h"
  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  return a;
}

static float __cuda_remquof(float a, float b, int* quo)
{
  float twoa = 0.0f;
  unsigned int quot = 0;  
  unsigned int sign;
  float orig_a = a;
  float orig_b = b;

  
  sign = 0 - (__cuda___signbitf(a) != __cuda___signbitf(b));
  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    *quo = quot;
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    *quo = quot;
    return __cuda_rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {











#line 2827 "c:\\cuda\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
    
    if (a == scaled_b) {
      if (__float_as_int(b) > 0x7e800000) {
          a *= 0.25f;
          b *= 0.25f;
      }
      a = __fdividef(a,b) + 0.5f;
      quot = (a < 8.0f) ? (int)a : 0;
      quot = quot ^ sign;
      quot = quot - sign;
      *quo = quot;
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }    
#line 2846 "c:\\cuda\\include\\math_functions.h"
    while (scaled_b >= b) {
      quot <<= 1;
      if (a >= scaled_b) {
        twoa = (2.0f * a - scaled_b) - scaled_b;
        a -= scaled_b;
        quot += 1;
      }
      scaled_b *= 0.5f;
    }
  }
  







#line 2865 "c:\\cuda\\include\\math_functions.h"
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a -= b;
      a = __cuda_copysignf (a, -1.0f);
    }
  } else {
    
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a = 0.5f * (twoa - 2.0f * b);
      a = __cuda_copysignf (a, -1.0f);
    }
  }
#line 2881 "c:\\cuda\\include\\math_functions.h"
  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *quo = quot;
  return a;
}

static float __cuda_fmaf(float a, float b, float c)
{
  return __fmaf_rn(a, b, c);
}

static float __internal_accurate_powf(float a, float b)
{
  float2 loga, prod;


#line 2901 "c:\\cuda\\include\\math_functions.h"
  float t;
#line 2903 "c:\\cuda\\include\\math_functions.h"

  
  loga = __internal_log_ep(a);

  
  if (__cuda_fabsf(b) > 1.0e34f) b *= 1.220703125e-4f;
  prod.y = b;
  prod.x = 0.0f;
  prod = __internal_dsmul (prod, loga);

  
  if (__float_as_int(prod.y) == 0x42b17218) {
    prod.y = __int_as_float(__float_as_int(prod.y) - 1);
    prod.x = prod.x + __int_as_float(0x37000000);
  }

  
  t = __cuda_expf(prod.y);
  
  if (t != __int_as_float(0x7f800000)) {
    


    t = __internal_fmad (t, prod.x, t);
  }
  return t;
}

static float __cuda_powif(float a, int b)
{
  unsigned int e = __cuda_abs(b);
  float        r = 1.0f;

  while (1) {
    if ((e & 1) != 0) {
      r = r * a;
    }
    e = e >> 1;
    if (e == 0) {
      return b < 0 ? 1.0f / r : r;
    }
    a = a * a;
  }
}

static double __cuda_powi(double a, int b)
{
  unsigned int e = __cuda_abs(b);
  double       r = 1.0;

  while (1) {
    if ((e & 1) != 0) {
      r = r * a;
    }
    e = e >> 1;
    if (e == 0) {
      return b < 0 ? 1.0 / r : r;
    }
    a = a * a;
  }
}

static float __cuda_powf(float a, float b)
{


#line 2970 "c:\\cuda\\include\\math_functions.h"

#line 2972 "c:\\cuda\\include\\math_functions.h"
  int bIsOddInteger;
  float t;
  if (a == 1.0f || b == 0.0f) {
    return 1.0f;
  } 
  if (__cuda___isnanf(a) || __cuda___isnanf(b)) {
    return a + b;
  }
  if (a == __int_as_float(0x7f800000)) {
    return __cuda___signbitf(b) ? 0.0f : __int_as_float(0x7f800000);
  }
  if (__cuda___isinff(b)) {
    if (a == -1.0f) {
      return 1.0f;
    }
    t = (__cuda_fabsf(a) > 1.0f) ? __int_as_float(0x7f800000) : 0.0f;
    if (b < 0.0f) {
      t = 1.0f / t;
    }
    return t;
  }
  bIsOddInteger = (b - (2.0f * floorf(0.5f * b))) == 1.0f;
  if (a == 0.0f) {
    t = bIsOddInteger ? a : 0.0f;
    if (b < 0.0f) {
      t = 1.0f / t;
    }
    return t;
  } 
  if (a == -__int_as_float(0x7f800000)) {
    t = - ((b < 0.0f) ? (1.0f / a) : a);
    if (bIsOddInteger) {
      t = __int_as_float(__float_as_int(t) ^ 0x80000000);
    }
    return t;
  } 
  if ((a < 0.0f) && (b != __cuda_truncf(b))) {
    return __cuda_rsqrtf(__int_as_float(0xffc00000));
  }
  t = __cuda_fabsf(a);
  t = __internal_accurate_powf(t, b);
  if ((a < 0.0f) && bIsOddInteger) {
    t = __int_as_float(__float_as_int(t) ^ 0x80000000);
  }
  return t;
#line 3018 "c:\\cuda\\include\\math_functions.h"
}


static float __internal_tgammaf_kernel(float a)
{
  float t;
  t =                        -1.05767296987211380E-003f;
  t = __internal_fmad (t, a,  7.09279059435508670E-003f);
  t = __internal_fmad (t, a, -9.65347121958557050E-003f);
  t = __internal_fmad (t, a, -4.21736613253687960E-002f);
  t = __internal_fmad (t, a,  1.66542401247154280E-001f);
  t = __internal_fmad (t, a, -4.20043267827838460E-002f);
  t = __internal_fmad (t, a, -6.55878234051332940E-001f);
  t = __internal_fmad (t, a,  5.77215696929794240E-001f);
  t = __internal_fmad (t, a,  1.00000000000000000E+000f);
  return t;
}





static float __cuda_tgammaf(float a)
{
  float s, xx, x=a;
  if (x >= 0.0f) {
    if (x > 36.0f) x = 36.0f; 
    s = 1.0f;
    xx = x;
    if (x > 34.03f) { 
      xx -= 1.0f;
    }
    while (xx > 1.5f) {
      xx = xx - 1.0f;
      s = s * xx;
    }
    if (x >= 0.5f) {
      xx = xx - 1.0f;
    }
    xx = __internal_tgammaf_kernel(xx);
    if (x < 0.5f) {
      xx = xx * x;
    }
    s = __fdividef(s, xx);
    if (x > 34.03f) {
      
      xx = x - 1.0f;
      s = s * xx;
    }
    return s;
  } else {
    if (x == __cuda_floorf(x)) {  
      x = __int_as_float(0x7fffffff);  


#line 3074 "c:\\cuda\\include\\math_functions.h"
    } 
    if (x < -41.1f) x = -41.1f; 
    xx = x;
    if (x < -34.03f) {           
      xx += 6.0f;
    } 
    s = xx;
    while (xx < -0.5f) {
      xx = xx + 1.0f;
      s = s * xx;
    }
    xx = __internal_tgammaf_kernel(xx);
    s = s * xx;
    s = 1.0f / s;
    if (x < -34.03f) {
      xx = x;
      xx *= (x + 1.0f);
      xx *= (x + 2.0f);
      xx *= (x + 3.0f);
      xx *= (x + 4.0f);
      xx *= (x + 5.0f);
      xx = 1.0f / xx;
      s = s * xx;
      if ((a < -42.0f) && !(((int)a)&1)) {
        s = __int_as_float(0x80000000);
      }
    }    
    return s;
  }
}

static float __cuda_roundf(float a)
{


#line 3110 "c:\\cuda\\include\\math_functions.h"
  float fa = __cuda_fabsf(a);
  float u = __cuda_copysignf (0.5f, a);
  u = __cuda_truncf (a + u);
  if (fa > 8388608.0f) u = a;
  if (fa < 0.5f) u = __cuda_truncf (a);
  return u;
#line 3117 "c:\\cuda\\include\\math_functions.h"
}

static long long int __internal_llroundf_kernel(float a)
{
  unsigned long long int res, t = 0LL;
  int shift;
  unsigned int ia = __float_as_int(a);
  
  if ((ia << 1) > 0xff000000) return 0x8000000000000000LL;
  if ((int)ia >= 0x5f000000) return 0x7fffffffffffffffLL;
  if (ia >= 0xdf000000) return 0x8000000000000000LL;
  shift = 189 - ((ia >> 23) & 0xff);
  res = ((long long int)(((ia << 8) | 0x80000000) >> 1)) << 32;
  if (shift >= 64) {
    t = res;
    res = 0;
  } else if (shift) {
    t = res << (64 - shift);
    res = res >> shift;
  }
  if (t >= 0x8000000000000000LL) {
    res++;
  }
  if ((int)ia < 0) res = (unsigned long long int)(-(long long int)res);
  return (long long int)res;
}

static long long int __cuda_llroundf(float a)
{


#line 3149 "c:\\cuda\\include\\math_functions.h"
  return __internal_llroundf_kernel(a);
#line 3151 "c:\\cuda\\include\\math_functions.h"
}

static long int __cuda_lroundf(float a)
{


#line 3158 "c:\\cuda\\include\\math_functions.h"


#line 3161 "c:\\cuda\\include\\math_functions.h"




#line 3166 "c:\\cuda\\include\\math_functions.h"
  return (long int)(__cuda_roundf(a));
#line 3168 "c:\\cuda\\include\\math_functions.h"
#line 3169 "c:\\cuda\\include\\math_functions.h"
}

static float __cuda_fdimf(float a, float b)
{
  float t;
  t = a - b;    
  if (a <= b) {
    t = 0.0f;
  }
  return t;
}

static int __cuda_ilogbf(float a)
{
  unsigned int i;
  int expo;
  a = __cuda_fabsf(a);
  if (a <= 1.175494351e-38f) {
    
    if (a == 0.0f) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    } else {
      expo = -126;
      i = __float_as_int(a);
      i = i << 8;
      while ((int)i >= 0) {
        expo--;
        i = i + i;
      }
    }
  } else {
    i = __float_as_int(a);
    expo = ((int)((i >> 23) & 0xff)) - 127;
    if ((i == 0x7f800000)) {
      expo = ((int)((unsigned int)-1 >> 1));
    }
    if ((i > 0x7f800000)) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    }
  } 
  return expo;
}

static float __cuda_logbf(float a)
{


#line 3217 "c:\\cuda\\include\\math_functions.h"
  unsigned int i;
  int expo;
  float res;


#line 3223 "c:\\cuda\\include\\math_functions.h"
  a = __cuda_fabsf(a);
  if (a <= 1.175494351e-38f) {
    
    if (a == 0.0f) {
      res = -__int_as_float(0x7f800000);
    } else {
      expo = -126;
      i = __float_as_int(a);
      i = i << 8;
      while ((int)i >= 0) {
        expo--;
        i = i + i;
      }
      res = (float)expo;
    }
  } else {
    i = __float_as_int(a);
    expo = ((int)((i >> 23) & 0xff)) - 127;
    res = (float)expo;
    if ((i >= 0x7f800000)) {  
      
      res = a + a;
    }
  } 
  return res;
#line 3249 "c:\\cuda\\include\\math_functions.h"
}

static void __cuda_sincosf(float a, float *sptr, float *cptr)
{


#line 3256 "c:\\cuda\\include\\math_functions.h"

#line 3258 "c:\\cuda\\include\\math_functions.h"
  float t, u, s, c;
  int quadrant;
  t = __cuda_fabsf(a);
  if ((t == __int_as_float(0x7f800000)) || (t == 0.0f)) {
    s = __fmul_rn (a, 0.0f); 
    c = 1.0f + s;                     
    *sptr = s;
    *cptr = c;
    return;
  }
  t = __internal_trig_reduction_kernel(a, &quadrant);
  u = __internal_cos_kernel(t);
  t = __internal_sin_kernel(t);
  if (quadrant & 1) {
    s = u;
    c = t;
  } else {
    s = t;
    c = u;
  }
  if (quadrant & 2) {
    s = -s;
  }
  quadrant++;
  if (quadrant & 2) {
    c = -c;
  }
  *sptr = s;
  *cptr = c;
#line 3288 "c:\\cuda\\include\\math_functions.h"
}


















































































































































































































































































































































































































































































































































































#line 3852 "c:\\cuda\\include\\math_functions.h"

#line 3854 "c:\\cuda\\include\\math_functions.h"





#line 3860 "c:\\cuda\\include\\math_functions.h"





#line 3866 "c:\\cuda\\include\\math_functions.h"



#line 1 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"










































#line 44 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"

#line 1 "c:\\cuda\\include\\crt/func_macro.h"
































































































#line 98 "c:\\cuda\\include\\crt/func_macro.h"
#line 46 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"




#line 1 "c:\\cuda\\include\\device_functions.h"































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 4673 "c:\\cuda\\include\\device_functions.h"

#line 51 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
#line 1 "c:\\cuda\\include\\math_constants.h"











































































































































#line 141 "c:\\cuda\\include\\math_constants.h"
#line 52 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"


#line 55 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"






static double __cuda_fabs(double a)
{
  return fabs(a);
}
   
static double __cuda_fmax(double a, double b)
{
















#line 85 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return fmax(a, b);
#line 87 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
}

static double __cuda_fmin(double a, double b)
{















#line 107 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return fmin(a, b);
#line 109 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
}

static double __cuda_ceil(double a)
{
  return ceil(a);
}

static double __cuda_floor(double a)
{
  return floor(a);
}

static double __cuda_trunc(double a)
{
  return trunc(a);
}

static double __cuda_nearbyint(double a)
{

  return round(a);








#line 139 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
}







static double __cuda_rint(double a)
{
  return __cuda_nearbyint(a);
}

static long int __cuda_lrint(double a)
{


#line 157 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return (long int)__double2int_rn(a);
#line 159 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
}

static long long int __cuda_llrint(double a)
{
  return __double2ll_rn(a);
}

static int __cuda___signbit(double a)
{
  return (int)((unsigned int)__double2hiint(a) >> 31);
}

static int __cuda___finite(double a)
{
  return __cuda_fabs(a) < __longlong_as_double(0x7ff0000000000000ULL);
}

static int __cuda___isinf(double a)
{
  return __cuda_fabs(a) == __longlong_as_double(0x7ff0000000000000ULL);
}

static int __cuda___isnan(double a)
{
  return !(__cuda_fabs(a) <= __longlong_as_double(0x7ff0000000000000ULL));
}

static double __cuda_copysign(double a, double b)
{
  int alo, ahi, bhi;

  bhi = __double2hiint(b);
  alo = __double2loint(a);
  ahi = __double2hiint(a);
  ahi = (bhi & 0x80000000) | (ahi & ~0x80000000);
  return __hiloint2double(ahi, alo);
}


static __attribute__((__constant__)) unsigned long long int __cudart_i2opi_d [] = {
  0x6bfb5fb11f8d5d08ULL,
  0x3d0739f78a5292eaULL,
  0x7527bac7ebe5f17bULL,
  0x4f463f669e5fea2dULL,
  0x6d367ecf27cb09b7ULL,
  0xef2f118b5a0a6d1fULL,
  0x1ff897ffde05980fULL,
  0x9c845f8bbdf9283bULL,
  0x3991d639835339f4ULL,
  0xe99c7026b45f7e41ULL,
  0xe88235f52ebb4484ULL,
  0xfe1deb1cb129a73eULL,
  0x06492eea09d1921cULL,
  0xb7246e3a424dd2e0ULL,
  0xfe5163abdebbc561ULL,
  0xdb6295993c439041ULL,
  0xfc2757d1f534ddc0ULL,
  0xa2f9836e4e441529ULL,
};

static double __internal_trig_reduction_kerneld(double a, int *quadrant)
{
  double j;
  int q;
  if (__cuda_fabs(a) > 2147483648.0) {
    
    unsigned long long int ia;
    unsigned long long int s;
    unsigned long long int result[5];
    unsigned long long int phi, plo;
    unsigned long long int hi, lo;
    unsigned int e;
    int idx;

    ia = __double_as_longlong(a);
    s = ia & 0x8000000000000000ULL;
    e = (unsigned int)(((ia >> 52) & 0x7ff) - 1024);
    ia = (ia << 11) | 0x8000000000000000ULL;
    
    idx = 16 - (e >> 6);
    hi = 0;

#pragma unroll 1
#line 243 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
    for (q = (idx-1); q < min(18,idx+3); q++) {
      plo = __cudart_i2opi_d[q] * ia;
      phi = __umul64hi (__cudart_i2opi_d[q], ia);
      lo = hi + plo;
      hi = phi + (lo < plo);
      result[q-(idx-1)] = lo;
    }
    result[q-(idx-1)] = hi;
    e = e & 63;
    


    hi = result[3];
    lo = result[2];
    if (e) {
      q = 64 - e;
      hi = (hi << e) | (lo >> q);
      lo = (lo << e) | (result[1] >> q);
    }
    q = (int)(hi >> 62);
    
    hi = (hi << 2) | (lo >> 62);
    lo = (lo << 2);
    e = (hi | (lo > 0)) > 0x8000000000000000ULL; 
    q += e;
    if (s) q = -q;
    if (e) {
      unsigned long long int t;
      hi = ~hi;
      lo = -(long long int)lo;
      t = (lo == 0ULL);
      hi += t;
      s = s ^ 0x8000000000000000ULL;
    }
    *quadrant = q;
    
    e = 0;
    while ((long long int)hi > 0) {
      hi = (hi << 1) | (lo >> 63);
      lo = (lo << 1);
      e--;
    }
    lo = hi * 0xC90FDAA22168C235ULL;
    hi = __umul64hi (hi, 0xC90FDAA22168C235ULL);
    if ((long long int)hi > 0) {
      hi = (hi << 1) | (lo >> 63);
      lo = (lo << 1);
      e--;
    }
    hi = hi + (lo > 0);
    ia = s | ((((unsigned long long int)(e + 1022)) << 52) + (hi >> 11) +
              ((hi << 53) >= 0x8000000000000000ULL));
    return __longlong_as_double(ia);
  } 
  
  q = __double2int_rn (a * 6.3661977236758138e-1);
  j = (double)q;
  



  a = __fma_rn (-j, 1.5707963267948966e+000, a);
  a = __fma_rn (-j, 6.1232339957367574e-017, a);
  a = __fma_rn (-j, 8.4784276603688985e-032, a);
  *quadrant = q;
  return a;
}


static double __internal_sin_kerneld(double x)
{
  double x2, z;
  x2 = x * x;
  z =                   1.5896230157221844E-010;
  z = __fma_rn (z, x2, -2.5050747762850355E-008);
  z = __fma_rn (z, x2,  2.7557313621385676E-006);
  z = __fma_rn (z, x2, -1.9841269829589539E-004);
  z = __fma_rn (z, x2,  8.3333333333221182E-003);
  z = __fma_rn (z, x2, -1.6666666666666630E-001);
  z  = z * x2;
  z  = __fma_rn (z, x, x);
  return z;
}


static double __internal_cos_kerneld(double x)
{
  double x2, z;
  x2 = x * x;
  z  =                  -1.136788825395985E-011;   
  z  = __fma_rn (z, x2,  2.087588480545065E-009);
  z  = __fma_rn (z, x2, -2.755731555403950E-007);
  z  = __fma_rn (z, x2,  2.480158729365970E-005);
  z  = __fma_rn (z, x2, -1.388888888888074E-003);
  z  = __fma_rn (z, x2,  4.166666666666664E-002);
  z  = __fma_rn (z, x2, -5.000000000000000E-001);
  z  = __fma_rn (z, x2,  1.000000000000000E+000);
  return z;
}


static double __internal_tan_kerneld(double x, int i)
{
  double x2, z, q;
  x2 = x * x;
  z =                   9.8006287203286300E-006;
  z = __fma_rn (z, x2, -2.4279526494179897E-005);
  z = __fma_rn (z, x2,  4.8644173130937162E-005);
  z = __fma_rn (z, x2, -2.5640012693782273E-005);
  z = __fma_rn (z, x2,  6.7223984330880073E-005);
  z = __fma_rn (z, x2,  8.3559287318211639E-005);
  z = __fma_rn (z, x2,  2.4375039850848564E-004);
  z = __fma_rn (z, x2,  5.8886487754856672E-004);
  z = __fma_rn (z, x2,  1.4560454844672040E-003);
  z = __fma_rn (z, x2,  3.5921008885857180E-003);
  z = __fma_rn (z, x2,  8.8632379218613715E-003);
  z = __fma_rn (z, x2,  2.1869488399337889E-002);
  z = __fma_rn (z, x2,  5.3968253972902704E-002);
  z = __fma_rn (z, x2,  1.3333333333325342E-001);
  z = __fma_rn (z, x2,  3.3333333333333381E-001);
  z = z * x2;
  q = __fma_rn (z, x, x);
  if (i) {
    double s = q - x; 
    double w = __fma_rn (z, x, -s); 
    z = 1.0 / q;
    z = -z;
    s = __fma_rn (q, z, 1.0);
    q = __fma_rn (z, __fma_rn (z, w, s), z);
  }           
  return q;
}

static double __cuda_sqrt(double a)
{
  return sqrt(a);
}

static double __cuda_rsqrt(double a)
{


#line 386 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
    return rsqrt(a);
#line 388 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
}


static double __internal_expm1_kernel (double a)
{
  double t;
  t =                 2.08842685477913050E-009;
  t = __fma_rn (t, a, 2.51366409033551950E-008);
  t = __fma_rn (t, a, 2.75574612072447230E-007);
  t = __fma_rn (t, a, 2.75571539284473460E-006);
  t = __fma_rn (t, a, 2.48015869443077950E-005);
  t = __fma_rn (t, a, 1.98412699878799470E-004);
  t = __fma_rn (t, a, 1.38888888892029890E-003);
  t = __fma_rn (t, a, 8.33333333327662860E-003);
  t = __fma_rn (t, a, 4.16666666666656370E-002);
  t = __fma_rn (t, a, 1.66666666666667380E-001);
  t = __fma_rn (t, a, 5.00000000000000000E-001);
  t = t * a;
  t = __fma_rn (t, a, a);
  return t;
}


static double __internal_atanh_kernel (double a_1, double a_2)
{
  double a, a2, t;

  a = a_1 + a_2;
  a2 = a * a;
  t =                  7.597322383488143E-002/65536.0;
  t = __fma_rn (t, a2, 6.457518383364042E-002/16384.0);          
  t = __fma_rn (t, a2, 7.705685707267146E-002/4096.0);
  t = __fma_rn (t, a2, 9.090417561104036E-002/1024.0);
  t = __fma_rn (t, a2, 1.111112158368149E-001/256.0);
  t = __fma_rn (t, a2, 1.428571416261528E-001/64.0);
  t = __fma_rn (t, a2, 2.000000000069858E-001/16.0);
  t = __fma_rn (t, a2, 3.333333333333198E-001/4.0);
  t = t * a2;
  t = __fma_rn (t, a, a_2);
  t = t + a_1;
  return t;
}

static double __internal_exp2i_kernel(int b)
{
  return __hiloint2double((b + 1023) << 20, 0);
}

static double __internal_half(double a)
{
  unsigned int ihi, ilo;
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  return __hiloint2double(ihi - 0x00100000, ilo);
}

static double __internal_twice(double a)
{
  unsigned int ihi, ilo;
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  return __hiloint2double(ihi + 0x00100000, ilo);
}

static double __cuda_sin(double a)
{
  double z;
  int i;
  if (__cuda___isinf(a) || (a == 0.0)) {
    return __dmul_rn(a, 0.0);
  }
  z = __internal_trig_reduction_kerneld(a, &i);
  
  if (i & 1) {
    z = __internal_cos_kerneld(z);
  } else {
    z = __internal_sin_kerneld(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
}

static double __cuda_cos(double a)
{
  double z;
  int i;
  if (__cuda___isinf(a)) {
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  z = __internal_trig_reduction_kerneld(a, &i);
  
  i++;
  if (i & 1) {
    z = __internal_cos_kerneld(z);
  } else {
    z = __internal_sin_kerneld(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
}

static void __cuda_sincos(double a, double *sptr, double *cptr)
{
  double t, u, s, c;
  int i;
  t = __cuda_fabs(a);
  if ((t == __longlong_as_double(0x7ff0000000000000ULL)) || (t == 0.0)) {
    s = __dmul_rn (a, 0.0); 
    c = 1.0 + s;                    
    *sptr = s;
    *cptr = c;
    return;
  }
  t = __internal_trig_reduction_kerneld(a, &i);
  u = __internal_cos_kerneld(t);
  t = __internal_sin_kerneld(t);
  if (i & 1) {
    s = u;
    c = t;
  } else {
    s = t;
    c = u;
  }
  if (i & 2) {
    s = -s;
  }
  i++;
  if (i & 2) {
    c = -c;
  }
  *sptr = s;
  *cptr = c;
}

static double __cuda_tan(double a)
{
  double z;
  int i;
  if (__cuda___isinf(a)) {
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  z = __internal_trig_reduction_kerneld(a, &i);
  
  z = __internal_tan_kerneld(z, i & 1);
  return z;
}

static double __cuda_log(double a)
{
  double m, f, g, u, v, tmp, q, ulo, log_lo, log_hi;
  int ihi, ilo;

  ihi = __double2hiint(a);
  ilo = __double2loint(a);

  if ((a > 0.0) && (a < __longlong_as_double(0x7ff0000000000000ULL))) {
    int e = -1023;
    
    if ((unsigned)ihi < (unsigned)0x00100000) {
      a = a * 18014398509481984.0;
      e -= 54;
      ihi = __double2hiint(a);
      ilo = __double2loint(a);
    }
    


    e += (ihi >> 20);
    ihi = (ihi & 0x800fffff) | 0x3ff00000;
    m = __hiloint2double (ihi, ilo);
    if ((unsigned)ihi > (unsigned)0x3ff6a09e) {
      m = __internal_half(m);
      e = e + 1;
    }
    
    f = m - 1.0;
    g = m + 1.0;
    g = 1.0 / g;
    u = f * g;
    u = u + u;  
    
    v = u * u;
    q =                 6.7261411553826339E-2/65536.0;
    q = __fma_rn (q, v, 6.6133829643643394E-2/16384.0);
    q = __fma_rn (q, v, 7.6940931149150890E-2/4096.0);
    q = __fma_rn (q, v, 9.0908745692137444E-2/1024.0);
    q = __fma_rn (q, v, 1.1111111499059706E-1/256.0);
    q = __fma_rn (q, v, 1.4285714283305975E-1/64.0);
    q = __fma_rn (q, v, 2.0000000000007223E-1/16.0);
    q = __fma_rn (q, v, 3.3333333333333326E-1/4.0);
    tmp = __internal_twice (f - u);
    tmp = __fma_rn (-u, f, tmp); 
    ulo = g * tmp;               
    
    q = q * v;
    q = q * u;      
     
    log_hi = u;
    log_lo = ulo + q;
    
    q   = __fma_rn ( e, 6.9314718055994529e-1, log_hi);
    tmp = __fma_rn (-e, 6.9314718055994529e-1, q);
    tmp = tmp - log_hi;
    log_hi = q;
    log_lo = log_lo - tmp;
    log_lo = __fma_rn (e, 2.3190468138462996e-17, log_lo);
    return log_hi + log_lo;
  } else {
    if (__cuda___isnan(a)) {
      return a + a;
    }
    
    if (a == 0) {
      return -__longlong_as_double(0x7ff0000000000000ULL);
    }
    
    if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
      return a;
    }
    
    return __longlong_as_double(0xfff8000000000000ULL);
  }
}


static double2 __internal_ddadd_xgty (double2 x, double2 y)
{
  double2 z;


#line 623 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  double r, s, e;
  r = x.y + y.y;
  e = x.y - r;
  s = ((e + y.y) + y.x) + x.x;
  z.y = e = r + s;
  z.x = (r - e) + s;
  return z;
}


static double2 __internal_ddmul (double2 x, double2 y)
{


#line 638 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  double e;
  double2 t, z;
  t.y = x.y * y.y;
  t.x = __fma_rn (x.y, y.y, -t.y);
  t.x = __fma_rn (x.x, y.x, t.x);
  t.x = __fma_rn (x.y, y.x, t.x);
  t.x = __fma_rn (x.x, y.y, t.x);
  z.y = e = t.y + t.x;
  z.x = (t.y - e) + t.x;
  return z;
}

static double2 __internal_log_ext_prec(double a)
{
  double2 res;
  double2 qq, cc, uu, tt;
  double f, g, u, v, q, ulo, tmp, m;
  int ilo, ihi, expo;

  ihi = __double2hiint(a);
  ilo = __double2loint(a);
  expo = (ihi >> 20) & 0x7ff;
  
  if (expo == 0) {
    a *= 18014398509481984.0;
    ihi = __double2hiint(a);
    ilo = __double2loint(a);
    expo = (ihi >> 20) & 0x7ff;
    expo -= 54;
  }  
  expo -= 1023;
  



  ihi = (ihi & 0x800fffff) | 0x3ff00000;
  m = __hiloint2double (ihi, ilo);
  if ((unsigned)ihi > (unsigned)0x3ff6a09e) {
    m = __internal_half(m);
    expo = expo + 1;
  }
  




  f = m - 1.0;
  g = m + 1.0;
  g = 1.0 / g;
  u = f * g;
  u = u + u;  
  
  v = u * u;
  q =                 6.6253631649203309E-2/65536.0;
  q = __fma_rn (q, v, 6.6250935587260612E-2/16384.0);
  q = __fma_rn (q, v, 7.6935437806732829E-2/4096.0);
  q = __fma_rn (q, v, 9.0908878711093280E-2/1024.0);
  q = __fma_rn (q, v, 1.1111111322892790E-1/256.0);
  q = __fma_rn (q, v, 1.4285714284546502E-1/64.0);
  q = __fma_rn (q, v, 2.0000000000003113E-1/16.0);
  q = q * v;
  
  tmp = __internal_twice (f - u);
  tmp = __fma_rn (-u, f, tmp); 
  ulo = g * tmp;               
  
  qq.y = q;
  qq.x = 0.0;
  uu.y = u;
  uu.x = ulo;
  cc.y =  3.3333333333333331E-1/4.0;
  cc.x = -9.8201492846582465E-18/4.0;
  qq = __internal_ddadd_xgty (cc, qq);
  
  qq = __internal_ddmul(qq, uu);
  qq = __internal_ddmul(qq, uu);
  qq = __internal_ddmul(qq, uu);
  uu = __internal_ddadd_xgty (uu, qq);
  u   = uu.y;
  ulo = uu.x;
  
  tt.y = expo * 6.9314718055966296e-001;  
  tt.x = expo * 2.8235290563031577e-013;
  
  res = __internal_ddadd_xgty (tt, uu);
  return res;
}

static double __cuda_log2(double a)
{
  double t;
  t = __cuda_log(a);
  return __fma_rn (t, 1.4426950408889634e+0, t * 2.0355273740931033e-17);
}

static double __cuda_log10(double a)
{
  double t;
  t = __cuda_log(a);
  return __fma_rn (t, 4.3429448190325182e-1, t * 1.09831965021676510e-17);
}

static double __cuda_log1p(double a)
{
  double t;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x3fe55555) || ((int)i < (int)0xbfd99999)) {
    
    t = a + 2.0;
    t = a / t;
    t = -a * t;
    t = __internal_atanh_kernel(a, t);
    return t;
  }
  return __cuda_log (a + 1.0);
}

static double __internal_exp_kernel(double a, int scale)
{ 
  double t, fac, z;
  int i;
  
  t = __cuda_rint (a * 1.4426950408889634e+0);
  i = (int)t;
  z = __fma_rn (t, -6.9314718055994529e-1, a);
  z = __fma_rn (t, -2.3190468138462996e-17, z);
  fac = 2.0;
  if (i <= -1021) {
    i += 55;
    fac = 5.5511151231257827e-17;
  }
  
  t = __internal_expm1_kernel(z);
  z = __internal_exp2i_kernel(i + scale - 1);
  t = __fma_rn (t, z, z);
  t = t * fac;
  return t;
}

static double __cuda_exp(double a)
{
  double t;
  int i;
  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40862e43) || ((int)i < (int)0xC0874911)) {
    t = __internal_exp_kernel(a, 0);
    return t;
  }
  t = ((unsigned int)i >> 31) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__cuda___isnan(a)) {
    t = a + a;
  }
  return t;
}

static double __cuda_exp2(double a)
{
  double z;
  double t;
  double fac;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40900000) || ((int)i < (int)0xc090cc00)) {
    t = __cuda_rint (a);
    z = a - t;
    i = (int)t;
    fac = 2.0;
    if (i <= -1021) {
      i += 55;
      fac = 5.5511151231257827e-17;
    }
    
    z = __fma_rn (z, 6.9314718055994529e-1, z * 2.3190468138462996e-17);
    t = __internal_expm1_kernel(z);
    z = __internal_exp2i_kernel(i - 1);
    t = __fma_rn (t, z, z);
    t = t * fac;
    return t;
  } 
  t = ((unsigned int)i >> 31) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__cuda___isnan(a)) {
    t = a + a;
  }
  return t;
}

static double __cuda_exp10(double a)
{
  double z;
  double t;
  double fac;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40734414) || ((int)i < (int)0xc07439b8)) {
    t = __cuda_rint (a * 3.3219280948873622e+0);
    i = (int)t;
    z = __fma_rn (t, -3.0102999566398120e-1, a);
    z = __fma_rn (t, -(-2.8037281277851704e-18), z);
    fac = 2.0;
    if (i <= -1021) {
      i += 55;
      fac = 5.5511151231257827e-17;
    }
    
    z = __fma_rn (z, 2.3025850929940459e+0, z * (-2.1707562233822494e-16));
    t = __internal_expm1_kernel(z);
    z = __internal_exp2i_kernel(i - 1);
    t = __fma_rn (t, z, z);
    t = t * fac;
    return t;
  }
  t = ((unsigned int)i >> 31) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__cuda___isnan(a)) {
    t = a + a;
  }
  return t;
}

static double __cuda_expm1(double a)
{
  double t, z, u;
  int i, j, k;

  k = __double2hiint(a);
  if (((unsigned)k < (unsigned)0x40862e43) || ((int)k < (int)0xc04a8000)) {
    t = __cuda_rint (a * 1.4426950408889634e+0);
    i = (int)t;
    z = __fma_rn (t, -6.9314718055994529e-1, a);
    z = __fma_rn (t, -2.3190468138462996e-17, z);
    k = k + k;
    if ((unsigned)k < (unsigned)0x7fb3e647) {
      z = a;
      i = 0;
    }
    t = __internal_expm1_kernel(z);
    j = i;
    if (i == 1024) j--;
    u = __internal_exp2i_kernel(j);
    a = u - 1.0;
    t = __fma_rn (t, u, a);
    if (i == 1024) t = t + t;
    if (k == 0) t = z;              
    return t;
  }
  t = ((unsigned int)k >> 31) ? -1.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__cuda___isnan(a)) {
    t = a + a;
  }
  return t;
}

static double __cuda_cosh(double a)
{
  double z;
  int i;

  z = __cuda_fabs(a);
  i = __double2hiint(z);
  if ((unsigned)i < (unsigned)0x408633cf) {
    z = __internal_exp_kernel(z, -2);
    z = __fma_rn(2.0, z, 0.125 / z);
    return z;
  } else {
    if (z > 0.0) a = __int_as_float(0x7f800000);
    return a + a;
  }
}

static double __cuda_sinh(double a)
{
  double s, z;
  s = a;
  a = __cuda_fabs(a);
  if (a < 1.0) {          
    double a2 = a * a;
    
    z =                  1.632386098183803E-010;
    z = __fma_rn (z, a2, 2.504854501385687E-008);
    z = __fma_rn (z, a2, 2.755734274788706E-006);
    z = __fma_rn (z, a2, 1.984126976294102E-004);
    z = __fma_rn (z, a2, 8.333333333452911E-003);
    z = __fma_rn (z, a2, 1.666666666666606E-001);
    z = z * a2;
    z = __fma_rn (z, a, a);
  } else if (a < 2.0) {   
    z = __cuda_expm1(a);
    z = __internal_half (z + z / (z + 1.0));
  } else {
    z = __internal_exp_kernel(a, -1);
    z = z + (1.0 / (-4.0 * z));
    if (a >= 7.1047586007394398e+2) {
      z = __longlong_as_double(0x7ff0000000000000ULL);     
    }
  }
  z = __cuda_copysign(z, s);
  return z;
}

static double __cuda_tanh(double a)
{
  double t;
  t = __cuda_fabs(a);
  if (t >= 0.55) {
    double s;
    s = 1.0 - 2.0 / (__internal_exp_kernel(2.0 * t, 0) + 1.0);
    if (t > 350.0) {
      s = 1.0;       
    }
    a = __cuda_copysign(s, a);
  } else {
    double a2;
    a2 = a * a;
    t =                   5.102147717274194E-005;
    t = __fma_rn (t, a2, -2.103023983278533E-004);
    t = __fma_rn (t, a2,  5.791370145050539E-004);
    t = __fma_rn (t, a2, -1.453216755611004E-003);
    t = __fma_rn (t, a2,  3.591719696944118E-003);
    t = __fma_rn (t, a2, -8.863194503940334E-003);
    t = __fma_rn (t, a2,  2.186948597477980E-002);
    t = __fma_rn (t, a2, -5.396825387607743E-002);
    t = __fma_rn (t, a2,  1.333333333316870E-001);
    t = __fma_rn (t, a2, -3.333333333333232E-001);
    t = t * a2;
    t = __fma_rn (t, a, a);
    a = __cuda_copysign(t, a);
  }
  return a;
}

static double __internal_atan_kernel(double a)
{
  double t, a2;
  a2 = a * a;
  t =                  -2.0258553044438358E-005 ;
  t = __fma_rn (t, a2,  2.2302240345758510E-004);
  t = __fma_rn (t, a2, -1.1640717779930576E-003);
  t = __fma_rn (t, a2,  3.8559749383629918E-003);
  t = __fma_rn (t, a2, -9.1845592187165485E-003);
  t = __fma_rn (t, a2,  1.6978035834597331E-002);
  t = __fma_rn (t, a2, -2.5826796814495994E-002);
  t = __fma_rn (t, a2,  3.4067811082715123E-002);
  t = __fma_rn (t, a2, -4.0926382420509971E-002);
  t = __fma_rn (t, a2,  4.6739496199157994E-002);
  t = __fma_rn (t, a2, -5.2392330054601317E-002);
  t = __fma_rn (t, a2,  5.8773077721790849E-002);
  t = __fma_rn (t, a2, -6.6658603633512573E-002);
  t = __fma_rn (t, a2,  7.6922129305867837E-002);
  t = __fma_rn (t, a2, -9.0909012354005225E-002);
  t = __fma_rn (t, a2,  1.1111110678749424E-001);
  t = __fma_rn (t, a2, -1.4285714271334815E-001);
  t = __fma_rn (t, a2,  1.9999999999755019E-001);
  t = __fma_rn (t, a2, -3.3333333333331860E-001);
  t = t * a2;
  t = __fma_rn (t, a, a);
  return t;
}

static double __cuda_atan2(double a, double b)
{
  double t0, t1, t3;
  if (__cuda___isnan(a) || __cuda___isnan(b)) {
    return a + b;
  }
  
  
  t3 = __cuda_fabs(b);
  t1 = __cuda_fabs(a);
  if (t3 == 0.0 && t1 == 0.0) {
    t3 = __cuda___signbit(b) ? 3.1415926535897931e+0 : 0;
  } else if (__cuda___isinf(t3) && __cuda___isinf(t1)) {
    t3 = __cuda___signbit(b) ? 2.3561944901923448e+0 : 7.8539816339744828e-1;
  } else {
    t0 = __cuda_fmax (t1, t3);
    t1 = __cuda_fmin (t1, t3);
    t3 = t1 / t0;
    t3 = __internal_atan_kernel(t3);
    
    if (__cuda_fabs(a) > __cuda_fabs(b)) t3 = 1.5707963267948966e+0 - t3;
    if (b < 0.0)                         t3 = 3.1415926535897931e+0 - t3;
  }
  t3 = __cuda_copysign(t3, a);
  return t3;
}

static double __cuda_atan(double a)
{
  double t0, t1;
  
  t0 = __cuda_fabs(a);
  t1 = t0;
  if (t0 > 1.0) {
    t1 = 1.0 / t1;
  }
  
  t1 = __internal_atan_kernel(t1);
  
  if (t0 > 1.0) {
    t1 = 1.5707963267948966e+0 - t1;
  }
  return __cuda_copysign (t1, a);
}


static double __internal_asin_kernel(double a, double b)
{
  double r;
  r =                  6.259798167646803E-002;
  r = __fma_rn (r, b, -7.620591484676952E-002);
  r = __fma_rn (r, b,  6.686894879337643E-002);
  r = __fma_rn (r, b, -1.787828218369301E-002); 
  r = __fma_rn (r, b,  1.745227928732326E-002);
  r = __fma_rn (r, b,  1.000422754245580E-002);
  r = __fma_rn (r, b,  1.418108777515123E-002);
  r = __fma_rn (r, b,  1.733194598980628E-002);
  r = __fma_rn (r, b,  2.237350511593569E-002);
  r = __fma_rn (r, b,  3.038188875134962E-002);
  r = __fma_rn (r, b,  4.464285849810986E-002);
  r = __fma_rn (r, b,  7.499999998342270E-002);
  r = __fma_rn (r, b,  1.666666666667375E-001);
  r = r * b;
  return r;
}

static double __cuda_asin(double a)
{
  double fa, t0, t1;
  int ihi, ahi;
  ahi = __double2hiint(a);
  fa  = __cuda_fabs(a);
  ihi = __double2hiint(fa);
  if (ihi < 0x3fe26666) {
    t1 = fa * fa;
    t1 = __internal_asin_kernel (fa, t1);
    t1 = __fma_rn (t1, fa, fa);
    t1 = __cuda_copysign(t1, a);
  } else {
    t1 = __fma_rn (-0.5, fa, 0.5);
    t0 = __cuda_sqrt (t1);
    t1 = __internal_asin_kernel (t0, t1);
    t0 = -2.0 * t0;
    t1 = __fma_rn (t0, t1, 6.1232339957367660e-17);
    t0 = t0 + 7.8539816339744828e-1;
    t1 = t0 + t1;
    t1 = t1 + 7.8539816339744828e-1;
    if (ahi < 0x3ff00000) {
      t1 = __cuda_copysign(t1, a);
    }
  }
  return t1;
}

static double __cuda_acos(double a)
{
  double t0, t1;
  int ihi, ahi;





#line 1103 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  ahi = __double2hiint(a);
  t0 = __cuda_fabs (a);
  ihi = __double2hiint(t0);
  if (ihi < 0x3fe26666) {  
    t1 = t0 * t0;
    t1 = __internal_asin_kernel (t0, t1);
    t0 = __fma_rn (t1, t0, t0);
    if ((unsigned)ahi >= (unsigned)0x80000000) {
      t0 = __fma_rn (1.0, t0, +6.1232339957367660e-17);
      t0 = 1.5707963267948966e+0 + t0;
    } else {
      t0 = __fma_rn (1.0, t0, -6.1232339957367660e-17);
      t0 = 1.5707963267948966e+0 - t0;
    }
  } else {
    t1 = __fma_rn (-0.5, t0, 0.5);
    t0 = __cuda_sqrt(t1);
    t1 = __internal_asin_kernel (t0, t1);
    t0 = __fma_rn (t1, t0, t0);
    t0 = 2.0 * t0;
    if ((unsigned)ahi >= (unsigned)0x80000000) {    
      t0 = __fma_rn (1.0, t0, -1.2246467991473532e-16);
      t0 = 3.1415926535897931e+0 - t0;
    }
  } 
  return t0;
}

static double __cuda_acosh(double a)
{
  double t;




#line 1139 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  t = a - 1.0;
  if (__cuda_fabs(t) > 4503599627370496.0) {
    
    return 6.9314718055994529e-1 + __cuda_log(a);
  } else {
    t = t + __cuda_sqrt(__fma_rn(a, t, t));
    return __cuda_log1p(t);
  }  
}

static double __cuda_asinh(double a)
{










#line 1162 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  double fa, t;
  fa = __cuda_fabs(a);
  if (fa > 1.0e153) {
    t = 6.9314718055994529e-1 + __cuda_log(fa);
  } else {
    t = fa * fa;
    t = __cuda_log1p (fa + t / (1.0 + __cuda_sqrt(1.0 + t)));
  }
#line 1171 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return __cuda_copysign(t, a);  
}

static double __cuda_atanh(double a)
{
  double fa, t;




#line 1182 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  fa = __cuda_fabs(a);
  t = (2.0 * fa) / (1.0 - fa);
  t = 0.5 * __cuda_log1p(t);




#line 1190 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  if (__cuda___signbit(a)) {
    t = -t;
  }
  return t;
}

static double __cuda_hypot(double a, double b)
{
  double v, w, t;
  if (__cuda___isinf(a) || __cuda___isinf(b)) {
    return __longlong_as_double(0x7ff0000000000000ULL);
  }
  if (__cuda___isnan(a) || __cuda___isnan(b)) {
    return a + b;
  }
  a = __cuda_fabs(a);
  b = __cuda_fabs(b);
  v = __cuda_fmax(a, b);
  w = __cuda_fmin(a, b);
  t = w / v;
  t = __fma_rn (t, t, 1.0);
  t = v * __cuda_sqrt(t);
  if (v == 0.0) {
    t = v + w;
  }
  return t;
}

static double __cuda_cbrt(double a)
{
  float s;
  double t, r;
  int ilo, ihi, expo, nexpo, denorm;
  if ((a == 0.0) || !(__cuda___finite(a))) {
    return a + a;
  } 
  t = __cuda_fabs(a);
  ilo = __double2loint(t);
  ihi = __double2hiint(t);
  expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
  denorm = 0;
  if (expo == 0) {
    
    t = t * 18014398509481984.0;
    denorm = 18;
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
  }
  
  nexpo = __float2int_rn(0.333333333f * (float)(expo - 1022));
  ihi -= (3 * nexpo) << 20;
  r = __hiloint2double(ihi, ilo);
  
  s = (float)r;
  t = __cuda_exp2f(0.333333333f * __log2f(s));
    
  t = t - (t - (r / (t * t))) * 3.3333333333333333e-1;
  t = t - (t - (r / (t * t))) * 3.3333333333333333e-1;
  
  ilo = __double2loint(t);
  ihi = __double2hiint(t);
  ihi += (nexpo - denorm) << 20;
  t = __hiloint2double(ihi, ilo);
  if (__cuda___signbit(a)) {
     t = -t;
  }
  return t;
}

static double __internal_accurate_pow(double a, double b)
{
  double2 loga;
  double2 prod;
  double t_hi, t_lo;
  double tmp;


#line 1269 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  double e;
#line 1271 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"

  
  loga = __internal_log_ext_prec(a);

  
  if (__cuda_fabs(b) > 1e304) b *= 1.220703125e-4;
  
  t_hi = loga.y * b;
  t_lo = __fma_rn (loga.y, b, -t_hi);
  t_lo = __fma_rn (loga.x, b, t_lo);
  prod.y = e = t_hi + t_lo;
  prod.x = (t_hi - e) + t_lo;

  
  tmp = __cuda_exp(prod.y);
  
  if (!__cuda___isinf(tmp)) {
    


    tmp = __fma_rn (tmp, prod.x, tmp);
  }
  return tmp;
}

static double __cuda_pow(double a, double b)
{
  int bIsOddInteger;
  double t;
  if (a == 1.0 || b == 0.0) {
    return 1.0;
  } 
  if (__cuda___isnan(a) || __cuda___isnan(b)) {
    return a + b;
  }
  if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
    return __cuda___signbit(b) ?  0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  }
  if (__cuda___isinf(b)) {
    if (a == -1.0) {
      return 1.0;
    }
    t = __cuda_fabs(a) > 1.0 ? __longlong_as_double(0x7ff0000000000000ULL) : 0.0;
    if (b < 0.0) {
      t = 1.0 / t;
    }
    return t;
  }
  bIsOddInteger = (b - (2.0 * __cuda_floor(0.5 * b))) == 1.0;
  if (a == 0.0) {
    t = bIsOddInteger ? a : 0.0;
    if (b < 0.0) {
      t = 1.0 / t;
    }
    return t;
  } 
  if (a == -__longlong_as_double(0x7ff0000000000000ULL)) {
    t = (b < 0.0) ? -1.0/a : -a;
    if (bIsOddInteger) {
      t = __longlong_as_double(__double_as_longlong(t)^0x8000000000000000ULL);
    }
    return t;
  } 
  if ((a < 0.0) && (b != __cuda_trunc(b))) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } 
  t = __cuda_fabs(a);
  t = __internal_accurate_pow(t, b);
  if ((a < 0.0) && bIsOddInteger) {
    t = __longlong_as_double(__double_as_longlong(t) ^ 0x8000000000000000ULL); 
  }
  return t;
}

static double __cuda_erf(double a)
{
  double t, r, q;




#line 1353 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  t = __cuda_fabs(a);
  if (t >= 1.0) {
    r =                 -1.28836351230756500E-019;
    r = __fma_rn (r, t,  1.30597472161093370E-017);
    r = __fma_rn (r, t, -6.33924401259620500E-016);
    r = __fma_rn (r, t,  1.96231865908940140E-014);
    r = __fma_rn (r, t, -4.35272243559990750E-013);
    r = __fma_rn (r, t,  7.37083927929352150E-012);
    r = __fma_rn (r, t, -9.91402142550461630E-011);
    r = __fma_rn (r, t,  1.08817017167760820E-009);
    r = __fma_rn (r, t, -9.93918713097634620E-009);
    r = __fma_rn (r, t,  7.66739923255145500E-008);
    r = __fma_rn (r, t, -5.05440278302806720E-007);
    r = __fma_rn (r, t,  2.87474157099000620E-006);
    r = __fma_rn (r, t, -1.42246725399722510E-005);
    r = __fma_rn (r, t,  6.16994555079419460E-005);
    r = __fma_rn (r, t, -2.36305221938908790E-004);
    r = __fma_rn (r, t,  8.05032844055371070E-004);
    r = __fma_rn (r, t, -2.45833366629108140E-003);
    r = __fma_rn (r, t,  6.78340988296706120E-003);
    r = __fma_rn (r, t, -1.70509103597554640E-002);
    r = __fma_rn (r, t,  3.93322852515666300E-002);
    r = __fma_rn (r, t, -8.37271292613764040E-002);
    r = __fma_rn (r, t,  1.64870423707623280E-001);
    r = __fma_rn (r, t, -2.99729521787681470E-001);
    r = __fma_rn (r, t,  4.99394435612628580E-001);
    r = __fma_rn (r, t, -7.52014596480123030E-001);
    r = __fma_rn (r, t,  9.99933138314926250E-001);
    r = __fma_rn (r, t, -1.12836725321102670E+000);
    r = __fma_rn (r, t,  9.99998988715182450E-001);
    q = __internal_exp_kernel(-t * t, 0);
    r = __fma_rn (r, -q, 1.0);
    if (t >= 6.5) {
      r = 1.0;
    }    
    a = __cuda_copysign (r, a);
  } else {
    q = t * t;
    r =                 -7.77946848895991420E-010;
    r = __fma_rn (r, q,  1.37109803980285950E-008);
    r = __fma_rn (r, q, -1.62063137584932240E-007);
    r = __fma_rn (r, q,  1.64471315712790040E-006);
    r = __fma_rn (r, q, -1.49247123020098620E-005);
    r = __fma_rn (r, q,  1.20552935769006260E-004);
    r = __fma_rn (r, q, -8.54832592931448980E-004);
    r = __fma_rn (r, q,  5.22397760611847340E-003);
    r = __fma_rn (r, q, -2.68661706431114690E-002);
    r = __fma_rn (r, q,  1.12837916709441850E-001);
    r = __fma_rn (r, q, -3.76126389031835210E-001);
    r = __fma_rn (r, q,  1.12837916709551260E+000);
    a = r * a;
  }
  return a;
}

static double __cuda_erfinv(double a)
{
  double fa, t;

  fa = fabs(a);
  if (fa >= 1.0) {
    t = __longlong_as_double(0xfff8000000000000ULL);          
    if (fa == 1.0) {
      t = a * __longlong_as_double(0x7ff0000000000000ULL);    
    }
  } else if (fa >= 0.9375) {
    



    double p, q;

    t = __cuda_log1p(-fa);
    t = __cuda_rsqrt(-t);
    p =                 2.7834010353747001060e-3;
    p = __fma_rn (p, t, 8.6030097526280260580e-1);
    p = __fma_rn (p, t, 2.1371214997265515515e+0);
    p = __fma_rn (p, t, 3.1598519601132090206e+0);
    p = __fma_rn (p, t, 3.5780402569085996758e+0);
    p = __fma_rn (p, t, 1.5335297523989890804e+0);
    p = __fma_rn (p, t, 3.4839207139657522572e-1);
    p = __fma_rn (p, t, 5.3644861147153648366e-2);
    p = __fma_rn (p, t, 4.3836709877126095665e-3);
    p = __fma_rn (p, t, 1.3858518113496718808e-4);
    p = __fma_rn (p, t, 1.1738352509991666680e-6);
    q =              t+ 2.2859981272422905412e+0;
    q = __fma_rn (q, t, 4.3859045256449554654e+0);
    q = __fma_rn (q, t, 4.6632960348736635331e+0);
    q = __fma_rn (q, t, 3.9846608184671757296e+0);
    q = __fma_rn (q, t, 1.6068377709719017609e+0);
    q = __fma_rn (q, t, 3.5609087305900265560e-1);
    q = __fma_rn (q, t, 5.3963550303200816744e-2);
    q = __fma_rn (q, t, 4.3873424022706935023e-3);
    q = __fma_rn (q, t, 1.3858762165532246059e-4);
    q = __fma_rn (q, t, 1.1738313872397777529e-6);
    t = p / (q * t);
    if (a < 0.0) t = -t;
  } else if (fa >= 0.75) {
   



    double p, q;

    t = __fma_rn (a, a, -.87890625);
    p =                  .21489185007307062000e+0;
    p = __fma_rn (p, t, -.64200071507209448655e+1);
    p = __fma_rn (p, t,  .29631331505876308123e+2);
    p = __fma_rn (p, t, -.47644367129787181803e+2);
    p = __fma_rn (p, t,  .34810057749357500873e+2);
    p = __fma_rn (p, t, -.12954198980646771502e+2);
    p = __fma_rn (p, t,  .25349389220714893917e+1);
    p = __fma_rn (p, t, -.24758242362823355486e+0);
    p = __fma_rn (p, t,  .94897362808681080020e-2);
    q =              t  -.12831383833953226499e+2;
    q = __fma_rn (q, t,  .41409991778428888716e+2);
    q = __fma_rn (q, t, -.53715373448862143349e+2);
    q = __fma_rn (q, t,  .33880176779595142685e+2);
    q = __fma_rn (q, t, -.11315360624238054876e+2);
    q = __fma_rn (q, t,  .20369295047216351160e+1);
    q = __fma_rn (q, t, -.18611650627372178511e+0);
    q = __fma_rn (q, t,  .67544512778850945940e-2);
    p = p / q;
    t = a * p;
  } else {
    



    double p, q;

    t = __fma_rn (a, a, -.5625);
    p =                 -.23886240104308755900e+2;
    p = __fma_rn (p, t,  .45560204272689128170e+3);
    p = __fma_rn (p, t, -.22977467176607144887e+4);
    p = __fma_rn (p, t,  .46631433533434331287e+4);
    p = __fma_rn (p, t, -.43799652308386926161e+4);
    p = __fma_rn (p, t,  .19007153590528134753e+4);
    p = __fma_rn (p, t, -.30786872642313695280e+3);
    q =         t  -.83288327901936570000e+2;
    q = __fma_rn (q, t,  .92741319160935318800e+3);
    q = __fma_rn (q, t, -.35088976383877264098e+4);
    q = __fma_rn (q, t,  .59039348134843665626e+4);
    q = __fma_rn (q, t, -.48481635430048872102e+4);
    q = __fma_rn (q, t,  .18997769186453057810e+4);
    q = __fma_rn (q, t, -.28386514725366621129e+3);
    p = p / q;
    t = a * p;
  }
  return t;
}

static double __cuda_erfcinv(double a)
{
  double t;


#line 1511 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  if (a <= 0.0) {
    t = __longlong_as_double(0xfff8000000000000ULL);
    if (a == 0.0) {
      t = (1.0 - a) * __longlong_as_double(0x7ff0000000000000ULL);
    }
  } 
  else if (a >= 0.0625) {
    t = __cuda_erfinv (1.0 - a);
  }
  else if (a >= 1e-100) {
    



    double p, q;
    t = __cuda_log(a);
    t = __cuda_rsqrt(-t);
    p =                 2.7834010353747001060e-3;
    p = __fma_rn (p, t, 8.6030097526280260580e-1);
    p = __fma_rn (p, t, 2.1371214997265515515e+0);
    p = __fma_rn (p, t, 3.1598519601132090206e+0);
    p = __fma_rn (p, t, 3.5780402569085996758e+0);
    p = __fma_rn (p, t, 1.5335297523989890804e+0);
    p = __fma_rn (p, t, 3.4839207139657522572e-1);
    p = __fma_rn (p, t, 5.3644861147153648366e-2);
    p = __fma_rn (p, t, 4.3836709877126095665e-3);
    p = __fma_rn (p, t, 1.3858518113496718808e-4);
    p = __fma_rn (p, t, 1.1738352509991666680e-6);
    q =              t+ 2.2859981272422905412e+0;
    q = __fma_rn (q, t, 4.3859045256449554654e+0);
    q = __fma_rn (q, t, 4.6632960348736635331e+0);
    q = __fma_rn (q, t, 3.9846608184671757296e+0);
    q = __fma_rn (q, t, 1.6068377709719017609e+0);
    q = __fma_rn (q, t, 3.5609087305900265560e-1);
    q = __fma_rn (q, t, 5.3963550303200816744e-2);
    q = __fma_rn (q, t, 4.3873424022706935023e-3);
    q = __fma_rn (q, t, 1.3858762165532246059e-4);
    q = __fma_rn (q, t, 1.1738313872397777529e-6);
    t = p / (q * t);
  }
  else {
    



    double p, q;
    t = __cuda_log(a);
    t = __cuda_rsqrt(-t);
    p =                 6.9952990607058154858e-1;
    p = __fma_rn (p, t, 1.9507620287580568829e+0);
    p = __fma_rn (p, t, 8.2810030904462690216e-1);
    p = __fma_rn (p, t, 1.1279046353630280005e-1);
    p = __fma_rn (p, t, 6.0537914739162189689e-3);
    p = __fma_rn (p, t, 1.3714329569665128933e-4);
    p = __fma_rn (p, t, 1.2964481560643197452e-6);
    p = __fma_rn (p, t, 4.6156006321345332510e-9);
    p = __fma_rn (p, t, 4.5344689563209398450e-12);
    q =              t+ 1.5771922386662040546e+0;
    q = __fma_rn (q, t, 2.1238242087454993542e+0);
    q = __fma_rn (q, t, 8.4001814918178042919e-1);
    q = __fma_rn (q, t, 1.1311889334355782065e-1);
    q = __fma_rn (q, t, 6.0574830550097140404e-3);
    q = __fma_rn (q, t, 1.3715891988350205065e-4);
    q = __fma_rn (q, t, 1.2964671850944981713e-6);
    q = __fma_rn (q, t, 4.6156017600933592558e-9);
    q = __fma_rn (q, t, 4.5344687377088206783e-12);
    t = p / (q * t);
  }
  return t;
}

static double __cuda_erfc(double a)
{
  double p, q, h, l;
  int ahi;

  ahi = __double2hiint(a);
  if (ahi < (int)0x3fe80000) {  
    return 1.0 - __cuda_erf(a);
  } 
  if (a > 27.3) {
    return 0.0;
  }
  if (ahi < (int)0x40140000) {  
    
    p =                 5.6418956292134603E-001;
    p = __fma_rn (p, a, 7.9573512229784757E+000);
    p = __fma_rn (p, a, 5.4297984550299049E+001);
    p = __fma_rn (p, a, 2.2775657465890461E+002);
    p = __fma_rn (p, a, 6.2995529536738172E+002);
    p = __fma_rn (p, a, 1.1508293767713837E+003);
    p = __fma_rn (p, a, 1.3002167301542784E+003);
    p = __fma_rn (p, a, 7.2716547570180592E+002);
    q =              a+ 1.4104035812651274E+001;
    q = __fma_rn (q, a, 9.6740724349422138E+001);
    q = __fma_rn (q, a, 4.1073916054746462E+002);
    q = __fma_rn (q, a, 1.1641974580374074E+003);
    q = __fma_rn (q, a, 2.2344896486798129E+003);
    q = __fma_rn (q, a, 2.8166572432808462E+003);
    q = __fma_rn (q, a, 2.1207350981593036E+003);
    q = __fma_rn (q, a, 7.2716547619708967E+002);
    p = p / q;
    h = a * a;
    l = __fma_rn (a, a, -h);
    q = __internal_exp_kernel(-h, 0);
    q = __fma_rn (l, -q, q);
    p = p * q;
  } else {
    
    double ooa, ooasq;

    ooa = 1.0 / a;
    ooasq = ooa * ooa;
    p =                     -4.0025406686930527E+005;
    p = __fma_rn (p, ooasq,  1.4420582543942123E+005);
    p = __fma_rn (p, ooasq, -2.7664185780951841E+004);
    p = __fma_rn (p, ooasq,  4.1144611644767283E+003);
    p = __fma_rn (p, ooasq, -5.8706000519209351E+002);
    p = __fma_rn (p, ooasq,  9.1490086446323375E+001);
    p = __fma_rn (p, ooasq, -1.6659491387740221E+001);
    p = __fma_rn (p, ooasq,  3.7024804085481784E+000);
    p = __fma_rn (p, ooasq, -1.0578553994424316E+000);
    p = __fma_rn (p, ooasq,  4.2314218745087778E-001);
    p = __fma_rn (p, ooasq, -2.8209479177354962E-001);
    p = __fma_rn (p, ooasq,  5.6418958354775606E-001);
    h = a * a;
    l = __fma_rn (a, a, -h);
    q = __internal_exp_kernel(-h, 0);
    q = __fma_rn (l, -q, q);
    p = p * ooa;
    p = p * q;
  }
  return p;
}


static double __internal_tgamma_kernel(double a)
{
  double t;
  t =                 -4.42689340712524750E-010;
  t = __fma_rn (t, a, -2.02665918466589540E-007);
  t = __fma_rn (t, a,  1.13812117211195270E-006);
  t = __fma_rn (t, a, -1.25077348166307480E-006);
  t = __fma_rn (t, a, -2.01365017404087710E-005);
  t = __fma_rn (t, a,  1.28050126073544860E-004);
  t = __fma_rn (t, a, -2.15241408115274180E-004);
  t = __fma_rn (t, a, -1.16516754597046040E-003);
  t = __fma_rn (t, a,  7.21894322484663810E-003);
  t = __fma_rn (t, a, -9.62197153268626320E-003);
  t = __fma_rn (t, a, -4.21977345547223940E-002);
  t = __fma_rn (t, a,  1.66538611382503560E-001);
  t = __fma_rn (t, a, -4.20026350341054440E-002);
  t = __fma_rn (t, a, -6.55878071520257120E-001);
  t = __fma_rn (t, a,  5.77215664901532870E-001);
  t = __fma_rn (t, a,  1.00000000000000000E+000);
  return t;
}


static double __internal_stirling_poly(double a)
{
  double x = 1.0 / a;
  double z = 0.0;
  z = __fma_rn (z, x,  8.3949872067208726e-004);
  z = __fma_rn (z, x, -5.1717909082605919e-005);
  z = __fma_rn (z, x, -5.9216643735369393e-004);
  z = __fma_rn (z, x,  6.9728137583658571e-005);
  z = __fma_rn (z, x,  7.8403922172006662e-004);
  z = __fma_rn (z, x, -2.2947209362139917e-004);
  z = __fma_rn (z, x, -2.6813271604938273e-003);
  z = __fma_rn (z, x,  3.4722222222222220e-003);
  z = __fma_rn (z, x,  8.3333333333333329e-002);
  z = __fma_rn (z, x,  1.0000000000000000e+000);
  return z;
}

static double __internal_tgamma_stirling(double a)
{
  if (a < 1.7162437695630274e+002) {


#line 1693 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
    double t_hi, t_lo, e;
#line 1695 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
    double2 loga, prod;
    double z = __internal_stirling_poly (a);
    double b = a - 0.5;

    
    loga = __internal_log_ext_prec(a);

    
    t_hi = loga.y * b;
    t_lo = __fma_rn (loga.y, b, -t_hi);
    t_lo = __fma_rn (loga.x, b, t_lo);
    prod.y = e = t_hi + t_lo;
    prod.x = (t_hi - e) + t_lo;

    
    loga.y = -a;
    loga.x = 0.0;
    prod = __internal_ddadd_xgty (prod, loga);

    
    a = __cuda_exp(prod.y);
    
    if (!__cuda___isinf(a)) {
      


      a = __fma_rn (a, prod.x, a);
    }
    a = __fma_rn (a, 2.5066282746310007e+0, a * (-1.8328579980459167e-16));
    return a * z;
  } else {
    return __longlong_as_double(0x7ff0000000000000ULL);
  }
}

static double __cuda_tgamma(double a)
{
  double s, xx, x = a;
  if (__cuda___isnan(a)) {
    return a + a;
  }
  if (__cuda_fabs(x) < 15.0) {
     



    if (x >= 0.0) {
      s = 1.0;
      xx = x;
      while (xx > 1.5) {
        s = __fma_rn(s, xx, -s);
        xx = xx - 1.0;
      }
      if (x >= 0.5) {
        xx = xx - 1.0;
      }
      xx = __internal_tgamma_kernel (xx);
      if (x < 0.5) {
        xx = xx * x;
      }
      s = s / xx;
    } else {
      xx = x;
      s = xx;
      if (x == __cuda_floor(x)) {
        return __longlong_as_double(0xfff8000000000000ULL);
      }
      while (xx < -0.5) {
        s = __fma_rn (s, xx, s);
        xx = xx + 1.0;
      }
      xx = __internal_tgamma_kernel (xx);
      s = s * xx;
      s = 1.0 / s;
    }
    return s;
  } else {
    if (x >= 0.0) {
      return __internal_tgamma_stirling (x);
    } else {
      double t;
      int quot;
      if (x == __cuda_floor(x)) {
        return __longlong_as_double(0xfff8000000000000ULL);
      }
      if (x < -185.0) {
        int negative;
        x = __cuda_floor(x);
        negative = ((x - (2.0 * __cuda_floor(0.5 * x))) == 1.0);
        return negative ? __longlong_as_double(0x8000000000000000ULL) : 0.0;
      }
      
      xx = __cuda_rint (__internal_twice(x));
      quot = (int)xx;
      xx = __fma_rn (-0.5, xx, x);
      xx = xx * 3.1415926535897931e+0;
      if (quot & 1) {
        xx = __internal_cos_kerneld (xx);
      } else {
        xx = __internal_sin_kerneld (xx);
      }
      if (quot & 2) {
        xx = -xx;
      }
      x = __cuda_fabs (x);
      s = __cuda_exp (-x);
      t = x - 0.5;
      if (x > 140.0) t = __internal_half(t);
      t = __cuda_pow (x, t);
      if (x > 140.0) s = s * t;
      s = s * __internal_stirling_poly (x);
      s = s * x;
      s = s * xx;
      s = 1.0 / s;
      s = __fma_rn (s, 1.2533141373155003e+0, (-9.1642899902295834e-17) * s);
      s = s / t;
      return s;
    }
  }
}

static double __internal_lgamma_pos(double a)
{
  double sum;
  double s, t;

  if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
    return a;
  }
  if (a >= 3.0) {
    if (a >= 8.0) {
      


      s = 1.0 / a;
      t = s * s;
      sum =                   -0.1633436431e-2;
      sum = __fma_rn (sum, t,  0.83645878922e-3);
      sum = __fma_rn (sum, t, -0.5951896861197e-3);
      sum = __fma_rn (sum, t,  0.793650576493454e-3);
      sum = __fma_rn (sum, t, -0.277777777735865004e-2);
      sum = __fma_rn (sum, t,  0.833333333333331018375e-1);
      sum = __fma_rn (sum, s,  0.918938533204672);
      s = __internal_half(__cuda_log (a));
      t = a - 0.5;
      s = s * t;
      t = s - a;
      s = s + sum;
      t = t + s;
      return t;
    } else {
      a = a - 3.0;
      s =                 -4.02412642744125560E+003;
      s = __fma_rn (s, a, -2.97693796998962000E+005);
      s = __fma_rn (s, a, -6.38367087682528790E+006);
      s = __fma_rn (s, a, -5.57807214576539320E+007);
      s = __fma_rn (s, a, -2.24585140671479230E+008);
      s = __fma_rn (s, a, -4.70690608529125090E+008);
      s = __fma_rn (s, a, -7.62587065363263010E+008);
      s = __fma_rn (s, a, -9.71405112477113250E+008);
      t =              a  -1.02277248359873170E+003;
      t = __fma_rn (t, a, -1.34815350617954480E+005);
      t = __fma_rn (t, a, -4.64321188814343610E+006);
      t = __fma_rn (t, a, -6.48011106025542540E+007);
      t = __fma_rn (t, a, -4.19763847787431360E+008);
      t = __fma_rn (t, a, -1.25629926018000720E+009);
      t = __fma_rn (t, a, -1.40144133846491690E+009);
      t = s / t;
      t = t + a;
      return t;
    }
  } else if (a >= 1.5) {
    a = a - 2.0;
    t =                  9.84839283076310610E-009;
    t = __fma_rn (t, a, -6.69743850483466500E-008);
    t = __fma_rn (t, a,  2.16565148880011450E-007);
    t = __fma_rn (t, a, -4.86170275781575260E-007);
    t = __fma_rn (t, a,  9.77962097401114400E-007);
    t = __fma_rn (t, a, -2.03041287574791810E-006);
    t = __fma_rn (t, a,  4.36119725805364580E-006);
    t = __fma_rn (t, a, -9.43829310866446590E-006);
    t = __fma_rn (t, a,  2.05106878496644220E-005);
    t = __fma_rn (t, a, -4.49271383742108440E-005);
    t = __fma_rn (t, a,  9.94570466342226000E-005);
    t = __fma_rn (t, a, -2.23154589559238440E-004);
    t = __fma_rn (t, a,  5.09669559149637430E-004);
    t = __fma_rn (t, a, -1.19275392649162300E-003);
    t = __fma_rn (t, a,  2.89051032936815490E-003);
    t = __fma_rn (t, a, -7.38555102806811700E-003);
    t = __fma_rn (t, a,  2.05808084278121250E-002);
    t = __fma_rn (t, a, -6.73523010532073720E-002);
    t = __fma_rn (t, a,  3.22467033424113040E-001);
    t = __fma_rn (t, a,  4.22784335098467190E-001);
    t = t * a;
    return t;
  } else if (a >= 0.7) {
    a = 1.0 - a;
    t =                 1.17786911519331130E-002;  
    t = __fma_rn (t, a, 3.89046747413522300E-002);
    t = __fma_rn (t, a, 5.90045711362049900E-002);
    t = __fma_rn (t, a, 6.02143305254344420E-002);
    t = __fma_rn (t, a, 5.61652708964839180E-002);
    t = __fma_rn (t, a, 5.75052755193461370E-002);
    t = __fma_rn (t, a, 6.21061973447320710E-002);
    t = __fma_rn (t, a, 6.67614724532521880E-002);
    t = __fma_rn (t, a, 7.14856037245421020E-002);
    t = __fma_rn (t, a, 7.69311251313347100E-002);
    t = __fma_rn (t, a, 8.33503129714946310E-002);
    t = __fma_rn (t, a, 9.09538288991182800E-002);
    t = __fma_rn (t, a, 1.00099591546322310E-001);
    t = __fma_rn (t, a, 1.11334278141734510E-001);
    t = __fma_rn (t, a, 1.25509666613462880E-001);
    t = __fma_rn (t, a, 1.44049896457704160E-001);
    t = __fma_rn (t, a, 1.69557177031481600E-001);
    t = __fma_rn (t, a, 2.07385551032182120E-001);
    t = __fma_rn (t, a, 2.70580808427600350E-001);
    t = __fma_rn (t, a, 4.00685634386517050E-001);
    t = __fma_rn (t, a, 8.22467033424113540E-001);
    t = __fma_rn (t, a, 5.77215664901532870E-001);
    t = t * a;
    return t;
  } else {
    t=                  -9.04051686831357990E-008;
    t = __fma_rn (t, a,  7.06814224969349250E-007);
    t = __fma_rn (t, a, -3.80702154637902830E-007);
    t = __fma_rn (t, a, -2.12880892189316100E-005);
    t = __fma_rn (t, a,  1.29108470307156190E-004);
    t = __fma_rn (t, a, -2.15932815215386580E-004);
    t = __fma_rn (t, a, -1.16484324388538480E-003);
    t = __fma_rn (t, a,  7.21883433044470670E-003);
    t = __fma_rn (t, a, -9.62194579514229560E-003);
    t = __fma_rn (t, a, -4.21977386992884450E-002);
    t = __fma_rn (t, a,  1.66538611813682460E-001);
    t = __fma_rn (t, a, -4.20026350606819980E-002);
    t = __fma_rn (t, a, -6.55878071519427450E-001);
    t = __fma_rn (t, a,  5.77215664901523870E-001);
    t = t * a;
    t = __fma_rn (t, a, a);
    return -__cuda_log (t);
  }
}

static double __cuda_lgamma(double a)
{
  double t;
  double i;
  long long int quot;
  if (__cuda___isnan(a)) {
    return a + a;
  }
  t = __internal_lgamma_pos(__cuda_fabs(a));
  if (a >= 0.0) return t;
  a = __cuda_fabs(a);
  i = __cuda_floor(a);       
  if (a == i) return __longlong_as_double(0x7ff0000000000000ULL); 
  if (a < 1e-19) return -__cuda_log(a);
  i = __cuda_rint (2.0 * a);
  quot = (long long int)i;
  i = __fma_rn (-0.5, i, a);
  i = i * 3.1415926535897931e+0;
  if (quot & 1) {
    i = __internal_cos_kerneld(i);
  } else {
    i = __internal_sin_kerneld(i);
  }
  i = __cuda_fabs(i);
  t = __cuda_log(3.1415926535897931e+0 / (i * a)) - t;
  return t;
}

static double __cuda_ldexp(double a, int b)
{
  double fa = __cuda_fabs (a);
  if ((fa == 0.0) || (fa == __longlong_as_double(0x7ff0000000000000ULL)) || (!(fa <= __longlong_as_double(0x7ff0000000000000ULL)))) {
    return a + a;
  }
  if (b == 0) {
    return a;
  }
  if (b >  2200) b =  2200;
  if (b < -2200) b = -2200;
  if (__cuda_abs (b) < 1022) {
    return a * __internal_exp2i_kernel(b);
  }
  if (__cuda_abs (b) < 2044) {
    int bhalf = b / 2;
    return a * __internal_exp2i_kernel (bhalf) * 
           __internal_exp2i_kernel (b - bhalf);
  } else {
    int bquarter = b / 4;
    double t = __internal_exp2i_kernel(bquarter);
    return a * t * t * t *__internal_exp2i_kernel (b - 3 * bquarter);
  }
}

static double __cuda_scalbn(double a, int b)
{
  
  return __cuda_ldexp(a, b);
}

static double __cuda_scalbln(double a, long int b)
{




#line 2003 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return __cuda_scalbn(a, (int)b);
}

static double __cuda_frexp(double a, int *b)
{
  double fa = __cuda_fabs(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 2.22507385850720140e-308) {
    a *= 18014398509481984.0;
    denorm = 54;
  } else {
    denorm = 0;
  }
  expo = (__double2hiint(a) >> 20) & 0x7ff;
  if ((fa == 0.0) || (expo == 0x7ff)) {
    expo = 0;
    a = a + a;
  } else {
    expo = expo - denorm - 1022;
    a = __longlong_as_double((__double_as_longlong(a) & 0x800fffffffffffffULL)|
                              0x3fe0000000000000ULL);
  }
  *b = expo;
  return a;  
}

static double __cuda_modf(double a, double *b)
{
  double t;
  if (__cuda___finite(a)) {
    t = __cuda_trunc(a);
    *b = t;
    t = a - t;
    return __cuda_copysign(t, a);
  } else if (__cuda___isinf(a)) {
    t = 0.0;
    *b = a;
    return __cuda_copysign(t, a);
  } else {
    *b = a + a; 
    return a + a;
  }  
}

static double __cuda_fmod(double a, double b)
{
  double orig_a = a;
  double orig_b = b;
  a = __cuda_fabs(a);
  b = __cuda_fabs(b);
  if (!((a <= __longlong_as_double(0x7ff0000000000000ULL)) && (b <= __longlong_as_double(0x7ff0000000000000ULL)))) {
      return orig_a + orig_b;
  }
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    int bhi = __double2hiint(b);
    int blo = __double2loint(b);
    int ahi = __double2hiint(a);
    double scaled_b = 0.0;
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5;
    }
    return __cuda_copysign (a, orig_a);
  } else {
    return orig_a;
  }
}

static double __cuda_remainder(double a, double b)
{
  double orig_a;
  double twoa = 0.0;
  unsigned int quot0 = 0;  
  int bhi;
  int blo;
  int ahi;
  if (__cuda___isnan(a) || __cuda___isnan(b)) {
    return a + b;
  }
  orig_a = a;
  a = __cuda_fabs(a);
  b = __cuda_fabs(b);
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    double scaled_b = 0.0;
    bhi = __double2hiint(b);
    blo = __double2loint(b);
    ahi = __double2hiint(a);
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      quot0 = 0;
      if (a >= scaled_b) {
        a -= scaled_b;
        quot0 = 1;
      }
      scaled_b *= 0.5;
    }
  }
  
  twoa = a + a;
  if ((twoa > b) || ((twoa == b) && quot0)) {
    a -= b;
  }
  bhi = __double2hiint(a);
  blo = __double2loint(a);
  ahi = __double2hiint(orig_a);
  a = __hiloint2double((ahi & 0x80000000) ^ bhi, blo);
  return a;
}

static double __cuda_remquo(double a, double b, int *c)
{
  double orig_a;
  double twoa = 0.0;
  unsigned int quot = 0;  
  unsigned int sign;
  int bhi;
  int blo;
  int ahi;
  if (__cuda___isnan(a) || __cuda___isnan(b)) {
    *c = quot;
    return a + b;
  }
  orig_a = a;
  sign = 0 - (__cuda___signbit(a) != __cuda___signbit(b));
  a = __cuda_fabs(a);
  b = __cuda_fabs(b);
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    *c = quot;
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    double scaled_b = 0.0;
    bhi = __double2hiint(b);
    blo = __double2loint(b);
    ahi = __double2hiint(a);
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      quot <<= 1;
      if (a >= scaled_b) {
        a -= scaled_b;
        quot += 1;
      }
      scaled_b *= 0.5;
    }
  }
  
  twoa = a + a;
  if ((twoa > b) || ((twoa == b) && (quot & 1))) {
    quot++;
    a -= b;
  }
  bhi = __double2hiint(a);
  blo = __double2loint(a);
  ahi = __double2hiint(orig_a);
  a = __hiloint2double((ahi & 0x80000000) ^ bhi, blo);
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *c = quot;
  return a;
}

static double __cuda_nextafter(double a, double b)
{
  unsigned long long int ia;
  unsigned long long int ib;
  ia = __double_as_longlong(a);
  ib = __double_as_longlong(b);
  if (__cuda___isnan(a) || __cuda___isnan(b)) return a + b; 
  if (((ia | ib) << 1) == 0ULL) return b;
  if ((ia + ia) == 0ULL) {
    return __cuda_copysign (__longlong_as_double(0x0000000000000001ULL), b); 
  }
  if ((a < b) && (a < 0.0)) ia--;
  if ((a < b) && (a > 0.0)) ia++;
  if ((a > b) && (a < 0.0)) ia++;
  if ((a > b) && (a > 0.0)) ia--;
  a = __longlong_as_double(ia);
  return a;
}

static double __cuda_nan(const char *s)
{
  unsigned long long i = 0;
  int c;
  int ovfl = 0;
  int invld = 0;
  if (*s == '0') {
    s++;
    if ((*s == 'x') || (*s == 'X')) {
      s++; 
      while (*s == '0') s++;
      while (*s) {
        if (i > 0x0fffffffffffffffULL) {
          ovfl = 1;
        }
        c = (((*s) >= 'A') && ((*s) <= 'F')) ? (*s + 'a' - 'A') : (*s);
        if ((c >= 'a') && (c <= 'f')) { 
          c = c - 'a' + 10;
          i = i * 16 + c;
        } else if ((c >= '0') && (c <= '9')) { 
          c = c - '0';
          i = i * 16 + c;
        } else {
          invld = 1;
        }
        s++;
      }
    } else {
      while (*s == '0') s++;
      while (*s) {
        if (i > 0x1fffffffffffffffULL) {
          ovfl = 1;
        }
        c = *s;
        if ((c >= '0') && (c <= '7')) { 
          c = c - '0';
          i = i * 8 + c;
        } else {
          invld = 1; 
        }
        s++;
      }
    }
  } else {
    while (*s) {
      c = *s;
      if ((i > 1844674407370955161ULL) || 
          ((i == 1844674407370955161ULL) && (c > '5'))) {
        ovfl = 1;
      }
      if ((c >= '0') && (c <= '9')) { 
        c = c - '0';
        i = i * 10 + c;
      } else {
        invld = 1;
      }
      s++;
    }
  }
  if (ovfl) {
    i = ~0ULL;
  }
  if (invld) {
    i = 0ULL;
  }
  i = (i & 0x000fffffffffffffULL) | 0x7ff8000000000000ULL;
  return __longlong_as_double(i);
}

static double __cuda_round(double a)
{
  double fa = __cuda_fabs(a);
  if (fa > 4503599627370496.0) {
    return a;
  } else {
    double u = __cuda_floor(fa + 0.5);
    if (fa < 0.5) u = 0;
    return __cuda_copysign(u, a);
  }
}

static long long int __cuda_llround(double a)
{



#line 2321 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return (long long int)(__cuda_round(a));
}

static long int __cuda_lround(double a)
{


#line 2329 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"




#line 2334 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
  return (long int)(__cuda_round(a));
#line 2336 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"
}

static double __cuda_fdim(double a, double b)
{
  double t;
  t = a - b;    
  if (a <= b) {
    t = 0.0;
  }
  return t;
}

static int __cuda_ilogb(double a)
{
  unsigned long long int i;
  unsigned int ihi;
  unsigned int ilo;
  if (__cuda___isnan(a)) return -((int)((unsigned int)-1 >> 1))-1;
  if (__cuda___isinf(a)) return ((int)((unsigned int)-1 >> 1));
  if (a == 0.0) return -((int)((unsigned int)-1 >> 1))-1;
  a = __cuda_fabs(a);
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  i = ((unsigned long long int)ihi) << 32 | (unsigned long long int)ilo;
  if (a >= 2.22507385850720140e-308) {
    return ((int)((ihi >> 20) & 0x7ff)) - 1023;
  } else {
    int expo = -1022;
    while (i < 0x0010000000000000ULL) {
      expo--;
      i = i + i;
    }
    return expo;
  }
}

static double __cuda_logb(double a)
{
  unsigned long long int i;
  unsigned int ihi;
  unsigned int ilo;
  if (__cuda___isnan(a)) return a + a;
  a = __cuda_fabs(a);
  if (a == __longlong_as_double(0x7ff0000000000000ULL)) return a;
  if (a == 0.0) return -__longlong_as_double(0x7ff0000000000000ULL);
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  i = ((unsigned long long int)ihi) << 32 | (unsigned long long int)ilo;
  if (a >= 2.22507385850720140e-308) {
    return (double)((int)((ihi >> 20) & 0x7ff)) - 1023;
  } else {
    int expo = -1022;
    while (i < 0x0010000000000000ULL) {
      expo--;
      i = i + i;
    }
    return (double)expo;
  }
}

static double __cuda_fma(double a, double b, double c)
{
  return __fma_rn(a, b, c);
}











#line 2412 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"

#line 2414 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"

#line 2416 "c:\\cuda\\include\\math_functions_dbl_ptx3.h"

#line 3870 "c:\\cuda\\include\\math_functions.h"

#line 3872 "c:\\cuda\\include\\math_functions.h"

#line 3874 "c:\\cuda\\include\\math_functions.h"

#line 94 "C:\\CUDA\\bin64/../include\\common_functions.h"

#line 96 "C:\\CUDA\\bin64/../include\\common_functions.h"

#line 1950 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1954 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1958 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1962 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1966 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1970 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1974 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1978 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1982 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1986 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1990 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1994 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 1998 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2002 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2006 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2010 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2014 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2018 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2022 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2026 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2030 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2034 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2038 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2042 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2046 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2050 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2054 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2058 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2062 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2066 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2070 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2074 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2078 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2082 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2086 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2090 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2094 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2098 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2102 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2106 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2110 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2114 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2118 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2122 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2126 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2130 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2134 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2138 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2142 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2146 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2150 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2154 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2158 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2162 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2166 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2170 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2174 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2178 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2182 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2186 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2190 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2194 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2198 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2202 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2206 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2210 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2214 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2218 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2222 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2226 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2230 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2234 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2238 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2242 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2246 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2250 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2254 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2258 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2262 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2266 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2270 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2274 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2278 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2282 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2286 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2290 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2294 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2298 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2302 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2306 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2310 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2314 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2318 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2322 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2326 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2330 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2334 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2338 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2342 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2346 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2350 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2354 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2358 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2362 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2366 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2370 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2374 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2378 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2382 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2386 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2390 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2394 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2398 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2402 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2406 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2410 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2414 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2418 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2422 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2426 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2430 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2434 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2438 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2442 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2446 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2450 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2454 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2458 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2462 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2466 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2470 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2474 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2478 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2482 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2486 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2490 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2494 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2498 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2502 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2506 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2510 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2514 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2518 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2522 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2526 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2530 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2534 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2538 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2542 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2546 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2550 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2554 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2558 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2562 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2566 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2570 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2574 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2578 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2582 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2586 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2590 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2594 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2598 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2602 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2606 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2610 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2614 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2618 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2622 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2626 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2630 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2634 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2638 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2642 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2646 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2650 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2654 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2658 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2662 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2666 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2670 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2674 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2678 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2682 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2686 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2690 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2694 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2698 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2702 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2706 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2710 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2714 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2718 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2722 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2726 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2730 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2734 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2738 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2742 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2746 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2750 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2754 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2758 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2762 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2766 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2770 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2774 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2778 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2782 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2786 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2790 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2794 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2798 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2802 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2806 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2810 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2814 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2818 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2822 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2826 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2830 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2834 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2838 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2842 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2846 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2850 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2854 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2858 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2862 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2866 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2870 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2874 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2878 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2882 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2886 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2890 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2894 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2898 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2902 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2906 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2910 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2914 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2918 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2922 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2926 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2930 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2934 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2938 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2942 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2946 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2950 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2954 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2958 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2962 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2966 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2970 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2974 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2978 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2982 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2986 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2990 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2994 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 2998 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3002 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3006 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3010 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3014 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3018 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3022 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3026 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3030 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3034 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3038 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3042 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3046 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3050 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3054 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3058 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3062 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3066 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3070 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3074 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3078 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3082 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3086 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3090 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3094 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3098 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3102 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3106 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3110 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3114 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3118 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3122 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3126 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3130 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3134 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3138 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3142 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3146 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3150 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3154 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3158 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3162 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3166 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3170 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3174 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3178 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3182 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"



#line 3186 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"





#line 3192 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"

