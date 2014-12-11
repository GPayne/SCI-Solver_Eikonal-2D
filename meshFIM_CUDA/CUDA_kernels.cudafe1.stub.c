#if defined(__cplusplus)
extern "C" {
#endif
#include "CUDA_kernels.fatbin.c"
#include "crt/host_runtime.h"
#if defined(__device_emulation) && defined(__cplusplus)
namespace __cuda_emu {struct __T20 {int *__par0;int *__par1;int *__par2;int __par3;int *__par4;int __dummy_field;};
}
#endif
struct __T20 {int *__par0;int *__par1;int *__par2;int __par3;int *__par4;int __dummy_field;};
#if defined(__device_emulation) && defined(__cplusplus)
namespace __cuda_emu {struct __T21 {float *__par0;float *__par1;int *__par2;int *__par3;float *__par4;float *__par5;float *__par6;float *__par7;int *__par8;int *__par9;int *__par10;int __par11;int __par12;int __par13;float __par14;int __dummy_field;};
}
#endif
struct __T21 {float *__par0;float *__par1;int *__par2;int *__par3;float *__par4;float *__par5;float *__par6;float *__par7;int *__par8;int *__par9;int *__par10;int __par11;int __par12;int __par13;float __par14;int __dummy_field;};
#if defined(__device_emulation) && defined(__cplusplus)
namespace __cuda_emu {struct __T22 {float *__par0;float *__par1;int *__par2;int *__par3;float *__par4;float *__par5;float *__par6;float *__par7;int *__par8;int *__par9;int *__par10;int __par11;int __par12;int __par13;int __par14;int __par15;int __dummy_field;};
}
#endif
struct __T22 {float *__par0;float *__par1;int *__par2;int *__par3;float *__par4;float *__par5;float *__par6;float *__par7;int *__par8;int *__par9;int *__par10;int __par11;int __par12;int __par13;int __par14;int __par15;int __dummy_field;};
static void __sti____cudaRegisterAll_20_CUDA_kernels_cpp1_ii_1e5c49c2(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (__cdecl *__dummy_static_init__sti____cudaRegisterAll_20_CUDA_kernels_cpp1_ii_1e5c49c2[])(void) = {__sti____cudaRegisterAll_20_CUDA_kernels_cpp1_ii_1e5c49c2};
void __device_stub__Z13run_reductionPiS_S_iS_(int *__par0, int *__par1, int *__par2, int __par3, int *__par4){auto struct __T20 *__T23;
__cudaInitArgBlock(__T23);__cudaSetupArg(__par0, __T23);__cudaSetupArg(__par1, __T23);__cudaSetupArg(__par2, __T23);__cudaSetupArg(__par3, __T23);__cudaSetupArg(__par4, __T23);__cudaLaunch(((char *)__device_stub_name(__device_stub__Z13run_reductionPiS_S_iS_,((void ( *)(int *, int *, int *, int, int *))run_reduction__entry))));}
#if defined(__cplusplus)
}
void run_reduction__entry( int *__cuda_0,int *__cuda_1,int *__cuda_2,int __cuda_3,int *__cuda_4)
{__device_stub__Z13run_reductionPiS_S_iS_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4);}
extern "C"{
#endif
void __device_stub__Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif(float *__par0, float *__par1, int *__par2, int *__par3, float *__par4, float *__par5, float *__par6, float *__par7, int *__par8, int *__par9, int *__par10, int __par11, int __par12, int __par13, float __par14){auto struct __T21 *__T24;
__cudaInitArgBlock(__T24);__cudaSetupArg(__par0, __T24);__cudaSetupArg(__par1, __T24);__cudaSetupArg(__par2, __T24);__cudaSetupArg(__par3, __T24);__cudaSetupArg(__par4, __T24);__cudaSetupArg(__par5, __T24);__cudaSetupArg(__par6, __T24);__cudaSetupArg(__par7, __T24);__cudaSetupArg(__par8, __T24);__cudaSetupArg(__par9, __T24);__cudaSetupArg(__par10, __T24);__cudaSetupArg(__par11, __T24);__cudaSetupArg(__par12, __T24);__cudaSetupArg(__par13, __T24);__cudaSetupArg(__par14, __T24);__cudaLaunch(((char *)__device_stub_name(__device_stub__Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif,((void ( *)(float *, float *, int *, int *, float *, float *, float *, float *, int *, int *, int *, int, int, int, float))FIMCuda__entry))));}
#if defined(__cplusplus)
}
void FIMCuda__entry( float *__cuda_0,float *__cuda_1,int *__cuda_2,int *__cuda_3,float *__cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,int *__cuda_8,int *__cuda_9,int *__cuda_10,int __cuda_11,int __cuda_12,int __cuda_13,float __cuda_14)
{__device_stub__Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13,__cuda_14);}
extern "C"{
#endif
void __device_stub__Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii(float *__par0, float *__par1, int *__par2, int *__par3, float *__par4, float *__par5, float *__par6, float *__par7, int *__par8, int *__par9, int *__par10, int __par11, int __par12, int __par13, int __par14, int __par15){auto struct __T22 *__T25;
__cudaInitArgBlock(__T25);__cudaSetupArg(__par0, __T25);__cudaSetupArg(__par1, __T25);__cudaSetupArg(__par2, __T25);__cudaSetupArg(__par3, __T25);__cudaSetupArg(__par4, __T25);__cudaSetupArg(__par5, __T25);__cudaSetupArg(__par6, __T25);__cudaSetupArg(__par7, __T25);__cudaSetupArg(__par8, __T25);__cudaSetupArg(__par9, __T25);__cudaSetupArg(__par10, __T25);__cudaSetupArg(__par11, __T25);__cudaSetupArg(__par12, __T25);__cudaSetupArg(__par13, __T25);__cudaSetupArg(__par14, __T25);__cudaSetupArg(__par15, __T25);__cudaLaunch(((char *)__device_stub_name(__device_stub__Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii,((void ( *)(float *, float *, int *, int *, float *, float *, float *, float *, int *, int *, int *, int, int, int, int, int))run_check_neighbor__entry))));}
#if defined(__cplusplus)
}
void run_check_neighbor__entry( float *__cuda_0,float *__cuda_1,int *__cuda_2,int *__cuda_3,float *__cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,int *__cuda_8,int *__cuda_9,int *__cuda_10,int __cuda_11,int __cuda_12,int __cuda_13,int __cuda_14,int __cuda_15)
{__device_stub__Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13,__cuda_14,__cuda_15);}
extern "C"{
#endif
#if defined(__device_emulation)
#if defined(__cplusplus)
namespace __cuda_emu {
#endif
static void __device_wrapper__Z13run_reductionPiS_S_iS_(char *__T26){_Z13run_reductionPiS_S_iS_((((*((struct __T20 *)__T26)).__par0)), (((*((struct __T20 *)__T26)).__par1)), (((*((struct __T20 *)__T26)).__par2)), (((*((struct __T20 *)__T26)).__par3)), (((*((struct __T20 *)__T26)).__par4)));}
#if defined(__cplusplus)
}
#endif
#endif
#if defined(__device_emulation)
#if defined(__cplusplus)
namespace __cuda_emu {
#endif
static void __device_wrapper__Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif(char *__T27){_Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif((((*((struct __T21 *)__T27)).__par0)), (((*((struct __T21 *)__T27)).__par1)), (((*((struct __T21 *)__T27)).__par2)), (((*((struct __T21 *)__T27)).__par3)), (((*((struct __T21 *)__T27)).__par4)), (((*((struct __T21 *)__T27)).__par5)), (((*((struct __T21 *)__T27)).__par6)), (((*((struct __T21 *)__T27)).__par7)), (((*((struct __T21 *)__T27)).__par8)), (((*((struct __T21 *)__T27)).__par9)), (((*((struct __T21 *)__T27)).__par10)), (((*((struct __T21 *)__T27)).__par11)), (((*((struct __T21 *)__T27)).__par12)), (((*((struct __T21 *)__T27)).__par13)), (((*((struct __T21 *)__T27)).__par14)));}
#if defined(__cplusplus)
}
#endif
#endif
#if defined(__device_emulation)
#if defined(__cplusplus)
namespace __cuda_emu {
#endif
static void __device_wrapper__Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii(char *__T28){_Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii((((*((struct __T22 *)__T28)).__par0)), (((*((struct __T22 *)__T28)).__par1)), (((*((struct __T22 *)__T28)).__par2)), (((*((struct __T22 *)__T28)).__par3)), (((*((struct __T22 *)__T28)).__par4)), (((*((struct __T22 *)__T28)).__par5)), (((*((struct __T22 *)__T28)).__par6)), (((*((struct __T22 *)__T28)).__par7)), (((*((struct __T22 *)__T28)).__par8)), (((*((struct __T22 *)__T28)).__par9)), (((*((struct __T22 *)__T28)).__par10)), (((*((struct __T22 *)__T28)).__par11)), (((*((struct __T22 *)__T28)).__par12)), (((*((struct __T22 *)__T28)).__par13)), (((*((struct __T22 *)__T28)).__par14)), (((*((struct __T22 *)__T28)).__par15)));}
#if defined(__cplusplus)
}
#endif
#endif
static void __sti____cudaRegisterAll_20_CUDA_kernels_cpp1_ii_1e5c49c2(void){__cudaRegisterBinary();__cudaRegisterEntry(__device_stub_name(__device_stub__Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii,((void ( *)(float *, float *, int *, int *, float *, float *, float *, float *, int *, int *, int *, int, int, int, int, int))run_check_neighbor__entry)), _Z18run_check_neighborPfS_PiS0_S_S_S_S_S0_S0_S0_iiiii, (-1));__cudaRegisterEntry(__device_stub_name(__device_stub__Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif,((void ( *)(float *, float *, int *, int *, float *, float *, float *, float *, int *, int *, int *, int, int, int, float))FIMCuda__entry)), _Z7FIMCudaPfS_PiS0_S_S_S_S_S0_S0_S0_iiif, (-1));__cudaRegisterEntry(__device_stub_name(__device_stub__Z13run_reductionPiS_S_iS_,((void ( *)(int *, int *, int *, int, int *))run_reduction__entry)), _Z13run_reductionPiS_S_iS_, (-1));__cudaRegisterUnsizedShared(s_array);__cudaRegisterUnsizedShared(s_run_check_neghbor_array);}
#if defined(__cplusplus)
}
#endif
