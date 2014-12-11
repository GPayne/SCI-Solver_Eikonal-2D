#ifdef _WIN32
#pragma warning(disable:4164 4003)
#endif 
#line 1 "d:/Lab2/FIM/meshFIM_CUDA_partition_color_square_ModifiedB_modifiedDatastucture_globalCo/meshFIM_CUDA//CUDA_kernels.cu"
#line 29 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\wtime.inl"
#pragma warning(push)
#pragma warning(disable:4996)
#line 60 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\wtime.inl"
#pragma warning(pop)
#line 141 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\string.h"
#pragma warning(push)
#pragma warning(disable:6059)


#pragma warning(pop)
#line 266 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\string.h"
#pragma warning(push)
#pragma warning(disable:6059)

#pragma warning(pop)
#line 772 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning (push)
#pragma warning (disable:6540)
#line 780 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning (pop)
#line 857 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning(push)
#pragma warning(disable: 4141)
#line 867 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning(pop)
#line 114 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\use_ansi.h"
#pragma comment(lib,"libcpmt")
#line 37 "C:/ProgramData/NVIDIA Corporation/NVIDIA CUDA SDK/common/inc\\cutil.h"
#pragma warning( disable : 4996 )
#line 7 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\climits"
#pragma warning(disable: 4514)
#line 258 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:6530)
#line 318 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 318 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 318 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 322 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 322 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 322 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 356 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:4793)

#pragma warning(pop)
#line 364 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:4793)

#pragma warning(pop)
#line 468 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 468 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 468 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 478 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 478 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 478 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)


#pragma warning(push)
#pragma warning(disable:4793)

#pragma warning(pop)
#line 537 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:4141 4996 4793)


#pragma warning(pop)
#line 34 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( push )
#pragma warning( disable : 4793 4412 )
#line 45 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )




#pragma warning( pop )
#line 58 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( push )
#pragma warning( disable : 4793 4412 )
#line 69 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )




#pragma warning( pop )


#pragma warning( push )
#pragma warning( disable : 4996 )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
#line 93 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )




#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
#line 113 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )




#pragma warning( pop )

#pragma warning( pop )
#line 591 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 14 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstddef"
#pragma warning(push,3)
#line 108 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstddef"
#pragma warning(pop)
#line 11 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\exception"
#pragma warning(push,3)
#line 201 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\malloc.h"
#pragma warning(push)
#pragma warning(disable:6540)
#line 212 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\malloc.h"
#pragma warning(pop)
#line 413 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\exception"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
#pragma warning(push,3)
#line 52 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
#pragma warning (suppress: 4985)
#line 106 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
#pragma warning(pop)
#line 1236 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\wchar.h"
#pragma warning( pop )
#line 1122 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdbg.h"
#pragma warning(suppress: 4985)
#line 1133 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdbg.h"
#pragma warning(suppress: 4985)
#line 14 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
#pragma warning(push,3)
#line 761 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\utility"
#pragma warning(push,3)
#line 259 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\utility"
#pragma warning(pop)
#line 12 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
#pragma warning(push,3)
#line 3983 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
#pragma warning(pop)
#line 13 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
#pragma warning(push,3)
#pragma warning(disable: 4100)
#line 246 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
#pragma warning(default: 4100)
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
#pragma warning(push,3)
#pragma warning(disable:4412)
#line 2231 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
#pragma warning(default: 4251)
#pragma warning(pop)
#line 11 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdexcept"
#pragma warning(push,3)
#line 273 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdexcept"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xdebug"
#pragma warning(push,3)
#line 154 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xdebug"
#pragma warning(pop)
#line 12 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
#pragma warning(push,3)
#pragma warning(disable:4412)
#line 263 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
#pragma warning(pop)
#line 15 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(push,3)
#pragma warning(disable:4412)
#line 2507 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(pop)
#line 11 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
#pragma warning(push,3)
#pragma warning(disable:4412)
#line 626 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\streambuf"
#pragma warning(push,3)
#line 626 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\streambuf"
#pragma warning(pop)
#line 13 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
#pragma warning(push,3)
#line 1578 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ios"
#pragma warning(push,3)
#line 314 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ios"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ostream"
#pragma warning(push,3)
#pragma warning(disable: 4390)
#line 1022 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ostream"
#pragma warning(default: 4390)
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\istream"
#pragma warning(push,3)
#line 1162 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\istream"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iostream"
#pragma warning(push,3)
#line 64 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iostream"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iterator"
#pragma warning(push,3)
#line 554 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iterator"
#pragma warning(pop)
#line 11 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\memory"
#pragma warning(push,3)
#line 998 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\memory"
#pragma intrinsic(_InterlockedIncrement)
#pragma intrinsic(_InterlockedDecrement)
#pragma intrinsic(_InterlockedCompareExchange)
#line 1827 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\memory"
#pragma warning(pop)
#line 10 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\algorithm"
#pragma warning(push,3)
#pragma warning(disable: 4244)
#line 5767 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\algorithm"
#pragma warning(default: 4244)


#pragma warning(pop)
#line 11 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\vector"
#pragma warning(push,3)
#pragma warning(disable: 4244)
#line 2397 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\vector"
#pragma warning(default: 4244)
#pragma warning(pop)
#line 11 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\functional"
#pragma warning(push,3)
#pragma warning(disable: 4100 4180 4244)
#line 1322 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\functional"
#pragma warning(default: 4100 4180 4244)
#pragma warning(pop)
#line 192 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(push)
#pragma warning(disable:4275)
#line 257 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(pop)
#line 573 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
#pragma warning(push)
#pragma warning(disable:4412)
#line 809 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
#pragma warning(pop)
#line 1805 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
#pragma warning(push)
#pragma warning(disable: 6295)
#line 1816 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
#pragma warning(pop)
#line 19 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
#pragma warning(disable:4251)
#line 56 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
#pragma warning(push)
#pragma warning(disable:4412)
#line 198 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
#pragma warning(pop)
#line 59 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(push)
#pragma warning(disable:4412)
#line 456 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(pop)
#line 671 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(push)
#pragma warning(disable:4275)
#line 723 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(pop)
#line 1341 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(push)
#pragma warning(disable:4275)
#line 1371 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
#pragma warning(pop)
#line 54 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
#pragma warning(push)
#pragma warning(disable:4275)
#line 1574 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
#pragma warning(pop)
#line 1341 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\list"
#pragma warning(default:4284)
struct __type_info;
struct __class_type_info;
#line 575 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
struct _ZSt7_Lockit;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIiLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIjLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIlLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureImLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIfLi1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float1Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float2Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float4Li1EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li1EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIiLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIjLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIlLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureImLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIfLi2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float1Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float2Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float4Li2EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li2EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIiLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIjLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIlLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureImLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIfLi3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float1Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float2Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float4Li3EL19cudaTextureReadMode0EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li3EL19cudaTextureReadMode1EE;
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li3EL19cudaTextureReadMode1EE;
#line 92 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstddef"
enum _ZSt14_Uninitialized {

__St7_Noinit};
#line 413 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSt11char_traitsIcE;
#line 547 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt22_Container_base_secure;
#line 642 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt18input_iterator_tag;
#line 650 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt20forward_iterator_tag;
#line 665 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt17_Int_iterator_tag;
#line 449 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
struct _ZSt12_String_base;
#line 75 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
struct _ZSt15_Allocator_baseIcE;
#line 641 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSaIcE;
#line 104 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
struct _ZNSaIcE6rebindIcEE;
#line 463 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
struct _ZSt11_String_valIcSaIcEE;
#line 2062 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
enum _ZNSs16__cuda__BUF_SIZEE {
__NSs9_BUF_SIZEE = 16};
#line 2162 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
union _ZNSs5_BxtyE;
#line 495 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
struct _ZSs;
#line 67 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo.h"
struct _Cvtvec;
#line 58 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
struct _ZSt8_Locinfo;
#line 23 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZSt8_LocbaseIiE;
#line 68 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZNSt6locale2idE;
#line 104 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZNSt6locale5facetE;
#line 195 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZNSt6locale7_LocimpE;
#line 61 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZSt6locale;
#line 43 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
struct _ZSt5_IosbIiE;
#line 206 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
enum _ZNSt8ios_base5eventE {

__NSt8ios_base11erase_eventE, __NSt8ios_base11imbue_eventE, __NSt8ios_base13copyfmt_eventE};
#line 530 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
struct _ZNSt8ios_base9_IosarrayE;
#line 545 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
struct _ZNSt8ios_base8_FnarrayE;
#line 194 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
struct _ZSt8ios_base;
#line 645 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSt9basic_iosIcSt11char_traitsIcEE;
#line 660 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSo;
#line 654 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSt15basic_streambufIcSt11char_traitsIcEE;
#line 2062 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
enum _ZNSbIwSt11char_traitsIwESaIwEE16__cuda__BUF_SIZEE {
__NSbIwSt11char_traitsIwESaIwEE9_BUF_SIZEE = 8};
#line 1020 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
struct _ZSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE;
#line 567 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\streambuf"
struct _ZSt19ostreambuf_iteratorIcSt11char_traitsIcEE;
#line 58 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
struct _ZSt8numpunctIcE;
#line 490 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
typedef unsigned size_t;
#include "crt/host_runtime.h"
struct __type_info { const int *__vptr; const char *__name;};
struct __class_type_info { struct __type_info base;};
#line 93 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"
typedef long clock_t;
#pragma pack(8)
#line 575 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
struct _ZSt7_Lockit {
#line 611 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
int _Locktype;};
#pragma pack()
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIiLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIjLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIlLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureImLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIfLi1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float1Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float2Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float4Li1EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li1EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIiLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIjLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIlLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureImLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIfLi2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float1Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float2Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float4Li2EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li2EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIiLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIjLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI4int4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5uint4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIlLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureImLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5long4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6ulong4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIfLi3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float1Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float2Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6float4Li3EL19cudaTextureReadMode0EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIcLi3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIaLi3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIhLi3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char1Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar1Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char2Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar2Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI5char4Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6uchar4Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureIsLi3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureItLi3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short1Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort1Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short2Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort2Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI6short4Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 60 "c:\\cuda\\include\\cuda_texture_types.h"
struct _Z7textureI7ushort4Li3EL19cudaTextureReadMode1EE { struct textureReference __b_16textureReference;};
#line 26 "d:\\lab2\\fim\\meshfim_cuda_partition_color_square_modifiedb_modifieddatastucture_globalco\\meshfim_cuda\\CUDADefines.h"
typedef unsigned uint;
#line 25 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
typedef int _ZSt10streamsize;
#pragma pack(8)
#line 547 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt22_Container_base_secure {char __dummy;};
#pragma pack()
#pragma pack(8)
#line 642 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt18input_iterator_tag {char __dummy;};
#pragma pack()
#pragma pack(8)





struct _ZSt20forward_iterator_tag {char __dummy;};
#pragma pack()
#pragma pack(8)
#line 665 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xutility"
struct _ZSt17_Int_iterator_tag {char __dummy;};
#pragma pack()
#pragma pack(8)
#line 449 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
struct _ZSt12_String_base {char __dummy;};
#pragma pack()
#line 2210 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
typedef struct _ZSs _ZSt6string;
#pragma pack(8)
#line 75 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
struct _ZSt15_Allocator_baseIcE {char __dummy;};
#pragma pack()
#line 100 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
typedef size_t _ZNSaIcE9size_typeE;
#pragma pack(8)
#line 641 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSaIcE {char __dummy;};
#pragma pack()
#line 106 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
typedef struct _ZSaIcE _ZNSaIcE6rebindIcE5otherE;
#pragma pack(8)
#line 104 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xmemory"
struct _ZNSaIcE6rebindIcEE {char __dummy;};
#pragma pack()
#line 468 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
typedef _ZNSaIcE6rebindIcE5otherE _ZNSt11_String_valIcSaIcEE5_AltyE;
#pragma pack(8)
#line 463 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
struct _ZSt11_String_valIcSaIcEE {
#line 488 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
_ZNSt11_String_valIcSaIcEE5_AltyE _Alval;};
#pragma pack()
#line 502 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
typedef _ZNSaIcE9size_typeE _ZNSs9size_typeE;
#pragma pack(8)
#line 2162 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
union _ZNSs5_BxtyE {

char _Buf[16];
char *_Ptr;};
#pragma pack()
#pragma pack(8)
#line 495 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
struct _ZSs { struct _ZSt11_String_valIcSaIcEE __b_St11_String_valIcSaIcEE;__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
#line 2166 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
union _ZNSs5_BxtyE _Bx;
#line 2178 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstring"
_ZNSs9size_typeE _Mysize;
_ZNSs9size_typeE _Myres;};
#pragma pack()
#pragma pack(8)
#line 67 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo.h"
struct _Cvtvec {

unsigned long _Hand;
unsigned _Page;};
#pragma pack()
#line 71 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo.h"
typedef struct _Cvtvec _Cvtvec;
#line 63 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
typedef _Cvtvec _ZNSt8_Locinfo7_CvtvecE;
#pragma pack(8)
#line 58 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
struct _ZSt8_Locinfo {
#line 191 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
struct _ZSt7_Lockit _Lock;
#line 193 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocinfo"
_ZSt6string _Days;
_ZSt6string _Months;
_ZSt6string _Oldlocname;
_ZSt6string _Newlocname;};
#pragma pack()
#pragma pack(8)
#line 23 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZSt8_LocbaseIiE {char __dummy;};
#pragma pack()
#pragma pack(8)
#line 68 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZNSt6locale2idE {
#line 92 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
size_t _Id;};
#pragma pack()
#pragma pack(8)
#line 104 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZNSt6locale5facetE { const int *__vptr;
#line 189 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
size_t _Refs;};
#pragma pack()
#pragma pack(8)
#line 61 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZSt6locale {
#line 454 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocale"
struct _ZNSt6locale7_LocimpE *_Ptr;};
#pragma pack()
#pragma pack(8)
#line 43 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
struct _ZSt5_IosbIiE {char __dummy;};
#pragma pack()
#line 198 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
typedef int _ZNSt8ios_base8fmtflagsE;
typedef int _ZNSt8ios_base7iostateE;
#pragma pack(8)
#line 194 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
struct _ZSt8ios_base { const int *__vptr;
#line 507 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
size_t _Stdstr;
#line 600 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xiosbase"
_ZNSt8ios_base7iostateE _Mystate;
_ZNSt8ios_base7iostateE _Except;
_ZNSt8ios_base8fmtflagsE _Fmtfl;
_ZSt10streamsize _Prec;
_ZSt10streamsize _Wide;
struct _ZNSt8ios_base9_IosarrayE *_Arr;
struct _ZNSt8ios_base8_FnarrayE *_Calls;
struct _ZSt6locale *_Ploc;};
#pragma pack()
#line 23 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ios"
typedef struct _ZSo _ZNSt9basic_iosIcSt11char_traitsIcEE5_MyosE;
typedef struct _ZSt15basic_streambufIcSt11char_traitsIcEE _ZNSt9basic_iosIcSt11char_traitsIcEE5_MysbE;
#pragma pack(8)
#line 645 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSt9basic_iosIcSt11char_traitsIcEE { struct _ZSt8ios_base __b_St8ios_base;
#line 154 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ios"
_ZNSt9basic_iosIcSt11char_traitsIcEE5_MysbE *_Mystrbuf;
_ZNSt9basic_iosIcSt11char_traitsIcEE5_MyosE *_Tiestr;
char _Fillch;__pad__(volatile char __dummy[3];)};
#pragma pack()
#line 47 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\ostream"
typedef struct _ZSt19ostreambuf_iteratorIcSt11char_traitsIcEE _ZNSo5_IterE;
#pragma pack(8)
#line 660 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\iosfwd"
struct _ZSo { const int *__vptr; struct _ZSt9basic_iosIcSt11char_traitsIcEE __v_St9basic_iosIcSt11char_traitsIcEE;};
#pragma pack()
#pragma pack(8)
#line 1020 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
struct _ZSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE { struct _ZNSt6locale5facetE __b_NSt6locale5facetE;
#line 1050 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
_ZNSt8_Locinfo7_CvtvecE _Cvt;};
#pragma pack()
#pragma pack(8)
#line 58 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
struct _ZSt8numpunctIcE { struct _ZNSt6locale5facetE __b_NSt6locale5facetE;
#line 196 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
const char *_Grouping;
char _Dp;
char _Kseparator;
const char *_Falsename;
const char *_Truename;};
#pragma pack()
void *memcpy(void*, const void*, size_t); void *memset(void*, int, size_t);
#line 174 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\time.h"
extern clock_t __cdecl clock(void);
#line 53 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\string.h"
extern void *__cdecl memcpy(void *, const void *, size_t);
#line 57 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\string.h"
extern void *__cdecl memset(void *, int, size_t);
#line 65 "c:\\cuda\\include\\math_functions.h"
extern int __cdecl abs(int);

extern long __cdecl labs(long);

extern __int64 llabs(__int64);

extern double __cdecl fabs(double);




extern int min(int, int);

extern unsigned umin(unsigned, unsigned);

extern __int64 llmin(__int64, __int64);

extern unsigned __int64 ullmin(unsigned __int64, unsigned __int64);

extern float fminf(float, float);

extern double fmin(double, double);


extern int max(int, int);

extern unsigned umax(unsigned, unsigned);

extern __int64 llmax(__int64, __int64);

extern unsigned __int64 ullmax(unsigned __int64, unsigned __int64);

extern float fmaxf(float, float);

extern double fmax(double, double);


extern double __cdecl sin(double);




extern double __cdecl cos(double);




extern void sincos(double, double *, double *);

extern void sincosf(float, float *, float *);


extern double __cdecl tan(double);




extern double __cdecl sqrt(double);




extern double rsqrt(double);

extern float rsqrtf(float);


extern double exp2(double);

extern float exp2f(float);


extern double exp10(double);

extern float exp10f(float);


extern double expm1(double);

extern float expm1f(float);


extern double log2(double);

extern float log2f(float);


extern double __cdecl log10(double);




extern double __cdecl log(double);




extern double log1p(double);

extern float log1pf(float);


extern double __cdecl floor(double);




extern double __cdecl exp(double);




extern double __cdecl cosh(double);




extern double __cdecl sinh(double);




extern double __cdecl tanh(double);




extern double acosh(double);

extern float acoshf(float);


extern double asinh(double);

extern float asinhf(float);


extern double atanh(double);

extern float atanhf(float);


extern double __cdecl ldexp(double, int);




extern double logb(double);

extern float logbf(float);


extern int ilogb(double);

extern int ilogbf(float);


extern double scalbn(double, int);

extern float scalbnf(float, int);


extern double scalbln(double, long);

extern float scalblnf(float, long);


extern double __cdecl frexp(double, int *);




extern double round(double);

extern float roundf(float);


extern long lround(double);

extern long lroundf(float);


extern __int64 llround(double);

extern __int64 llroundf(float);


extern double rint(double);

extern float rintf(float);


extern long lrint(double);

extern long lrintf(float);


extern __int64 llrint(double);

extern __int64 llrintf(float);


extern double nearbyint(double);

extern float nearbyintf(float);


extern double __cdecl ceil(double);




extern double trunc(double);

extern float truncf(float);


extern double fdim(double, double);

extern float fdimf(float, float);


extern double __cdecl atan2(double, double);




extern double __cdecl atan(double);




extern double __cdecl asin(double);




extern double __cdecl acos(double);




extern double __cdecl hypot(double, double);

extern float hypotf(float, float);


extern double cbrt(double);

extern float cbrtf(float);


extern double __cdecl pow(double, double);




extern double __cdecl modf(double, double *);




extern double __cdecl fmod(double, double);




extern double remainder(double, double);

extern float remainderf(float, float);


extern double remquo(double, double, int *);

extern float remquof(float, float, int *);


extern double erf(double);

extern float erff(float);


extern double erfinv(double);

extern float erfinvf(float);


extern double erfc(double);

extern float erfcf(float);


extern double erfcinv(double);

extern float erfcinvf(float);


extern double lgamma(double);

extern float lgammaf(float);


extern double tgamma(double);

extern float tgammaf(float);


extern double copysign(double, double);

extern float copysignf(float, float);


extern double nextafter(double, double);

extern float nextafterf(float, float);


extern double nan(const char *);

extern float nanf(const char *);


extern int __isinf(double);

extern int __isinff(float);


extern int __isnan(double);

extern int __isnanf(float);
#line 408 "c:\\cuda\\include\\math_functions.h"
extern int __finite(double);

extern int __finitef(float);

extern int __signbit(double);
#line 417 "c:\\cuda\\include\\math_functions.h"
extern int __signbitf(float);


extern double fma(double, double, double);

extern float fmaf(float, float, float);
#line 379 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
extern  /* COMDAT group: frexpf */ float frexpf(float, int *);



extern  /* COMDAT group: fabsf */ float fabsf(float);

extern  /* COMDAT group: ldexpf */ float ldexpf(float, int);


extern  /* COMDAT group: acosf */ float acosf(float);

extern  /* COMDAT group: asinf */ float asinf(float);

extern  /* COMDAT group: atanf */ float atanf(float);

extern  /* COMDAT group: atan2f */ float atan2f(float, float);

extern  /* COMDAT group: ceilf */ float ceilf(float);

extern  /* COMDAT group: cosf */ float cosf(float);

extern  /* COMDAT group: coshf */ float coshf(float);

extern  /* COMDAT group: expf */ float expf(float);

extern  /* COMDAT group: floorf */ float floorf(float);

extern  /* COMDAT group: fmodf */ float fmodf(float, float);

extern  /* COMDAT group: logf */ float logf(float);

extern  /* COMDAT group: log10f */ float log10f(float);

extern  /* COMDAT group: modff */ float modff(float, float *);



extern  /* COMDAT group: powf */ float powf(float, float);

extern  /* COMDAT group: sinf */ float sinf(float);

extern  /* COMDAT group: sinhf */ float sinhf(float);

extern  /* COMDAT group: sqrtf */ float sqrtf(float);

extern  /* COMDAT group: tanf */ float tanf(float);

extern  /* COMDAT group: tanhf */ float tanhf(float);
static void __sti___20_CUDA_kernels_cpp1_ii_1e5c49c2(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (__cdecl *__dummy_static_init__sti___20_CUDA_kernels_cpp1_ii_1e5c49c2[])(void) = {__sti___20_CUDA_kernels_cpp1_ii_1e5c49c2};
extern const int _ZTVN10__cxxabiv117__class_type_infoE[];
extern  /* COMDAT group: _ZTISt5_IosbIiE */ const struct __class_type_info _ZTISt5_IosbIiE;
extern  /* COMDAT group: _ZTSSt5_IosbIiE */ const char _ZTSSt5_IosbIiE[12];
#line 1554 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
 /* COMDAT group: _ZNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE */ struct _ZNSt6locale2idE _ZNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE = {0};
#line 222 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
 /* COMDAT group: _ZNSt8numpunctIcE2idE */ struct _ZNSt6locale2idE _ZNSt8numpunctIcE2idE = {0};
 /* COMDAT group: _ZNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE */ unsigned __int64 _ZGVNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE;
 /* COMDAT group: _ZNSt8numpunctIcE2idE */ unsigned __int64 _ZGVNSt8numpunctIcE2idE;
#include "CUDA_kernels.cudafe1.stub.h"
 /* COMDAT group: _ZTISt5_IosbIiE */ const struct __class_type_info _ZTISt5_IosbIiE = {{(_ZTVN10__cxxabiv117__class_type_infoE + 2),_ZTSSt5_IosbIiE}};
 /* COMDAT group: _ZTSSt5_IosbIiE */ const char _ZTSSt5_IosbIiE[12] = "St5_IosbIiE";
#line 379 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
 /* COMDAT group: frexpf */ __inline float frexpf( float _X,  int *_Y)
{ return (float)(frexp(((double)_X), _Y)); }


 /* COMDAT group: fabsf */ __inline float fabsf( float _X)
{ return (float)(fabs(((double)_X))); }
 /* COMDAT group: ldexpf */ __inline float ldexpf( float _X,  int _Y)
{ return (float)(ldexp(((double)_X), _Y)); }

 /* COMDAT group: acosf */ __inline float acosf( float _X)
{ return (float)(acos(((double)_X))); }
 /* COMDAT group: asinf */ __inline float asinf( float _X)
{ return (float)(asin(((double)_X))); }
 /* COMDAT group: atanf */ __inline float atanf( float _X)
{ return (float)(atan(((double)_X))); }
 /* COMDAT group: atan2f */ __inline float atan2f( float _Y,  float _X)
{ return (float)(atan2(((double)_Y), ((double)_X))); }
 /* COMDAT group: ceilf */ __inline float ceilf( float _X)
{ return (float)(ceil(((double)_X))); }
 /* COMDAT group: cosf */ __inline float cosf( float _X)
{ return (float)(cos(((double)_X))); }
 /* COMDAT group: coshf */ __inline float coshf( float _X)
{ return (float)(cosh(((double)_X))); }
 /* COMDAT group: expf */ __inline float expf( float _X)
{ return (float)(exp(((double)_X))); }
 /* COMDAT group: floorf */ __inline float floorf( float _X)
{ return (float)(floor(((double)_X))); }
 /* COMDAT group: fmodf */ __inline float fmodf( float _X,  float _Y)
{ return (float)(fmod(((double)_X), ((double)_Y))); }
 /* COMDAT group: logf */ __inline float logf( float _X)
{ return (float)(log(((double)_X))); }
 /* COMDAT group: log10f */ __inline float log10f( float _X)
{ return (float)(log10(((double)_X))); }
 /* COMDAT group: modff */ __inline float modff( float _X,  float *_Y)
{ auto double _Di;
#line 413 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
auto double _Df;
#line 413 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
_Df = (modf(((double)_X), (&_Di)));
(*_Y) = ((float)_Di);
return (float)_Df; }
 /* COMDAT group: powf */ __inline float powf( float _X,  float _Y)
{ return (float)(pow(((double)_X), ((double)_Y))); }
 /* COMDAT group: sinf */ __inline float sinf( float _X)
{ return (float)(sin(((double)_X))); }
 /* COMDAT group: sinhf */ __inline float sinhf( float _X)
{ return (float)(sinh(((double)_X))); }
 /* COMDAT group: sqrtf */ __inline float sqrtf( float _X)
{ return (float)(sqrt(((double)_X))); }
 /* COMDAT group: tanf */ __inline float tanf( float _X)
{ return (float)(tan(((double)_X))); }
 /* COMDAT group: tanhf */ __inline float tanhf( float _X)
{ return (float)(tanh(((double)_X))); }
static void __sti___20_CUDA_kernels_cpp1_ii_1e5c49c2(void) {  if (((*((char *)(&_ZGVNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE)))) == ((char)0)) {
#line 1554 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
{ (_ZNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE._Id) = 0U; } } if (((*((char *)(&_ZGVNSt8numpunctIcE2idE)))) == ((char)0)) {
#line 222 "c:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xlocnum"
{ (_ZNSt8numpunctIcE2idE._Id) = 0U; } }  }

#include "CUDA_kernels.cudafe1.stub.c"
