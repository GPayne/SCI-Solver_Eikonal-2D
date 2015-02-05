SCI-Solver_Eikonal-2D
=====================

_Currently in pre-alpha stage, estimated stable release: March 2015_

SCI-Solver_Eikonal-2D is a C++/CUDA library written to solve the Eikonal equation on a 2D triangular mesh. It uses the fast iterative method (FIM) to solve efficiently, and uses GPU hardware.

The code was written by Zhisong Fu. The theory behind this code is published in the paper: "A Fast Iterative Method for Solving the Eikonal Equation on Triangulated Surfaces"

**AUTHORS:** Zhisong Fu(*a*), Won-Ki Jeong(*b*), Yongsheng Pan(*a*), Robert M. Kirby(*a*), Ross T. Whitaker(*a*)

`  `*a*-Scientific Computing and Imaging Institute, University of Utah, Salt Lake City, USA

`  `*b*-Electrical and Computer Engineering, UNIST (Ulsan National Institute of Science and Technology), Ulju-gun Ulsan, Korea

**ABSTRACT:**
This paper presents an efficient, fine-grained parallel algorithm for solving the Eikonal equation on triangular meshes. The Eikonal equation, and the broader class of Hamilton–Jacobi equations to which it belongs, have a wide range of applications from geometric optics and seismology to biological modeling and analysis of geometry and images. The ability to solve such equations accurately and efficiently provides new capabilities for exploring and visualizing parameter spaces and for solving inverse problems that rely on such equations in the forward model. Efficient solvers on state-of-the-art, parallel architectures require new algorithms that are not, in many cases, optimal, but are better suited to synchronous updates of the solution. In previous work [W. K. Jeong and R. T. Whitaker, SIAM J. Sci. Comput., 30 (2008), pp. 2512–2534], the authors proposed the fast iterative method (FIM) to efficiently solve the Eikonal equation on regular grids. In this paper we extend the fast iterative method to solve Eikonal equations efficiently on triangulated domains on the CPU and on parallel architectures, including graphics processors. We propose a new local update scheme that provides solutions of first-order accuracy for both architectures. We also propose a novel triangle-based update scheme and its corresponding data structure for efficient irregular data mapping to parallel single-instruction multiple-data (SIMD) processors. We provide detailed descriptions of the implementations on a single CPU, a multicore CPU with shared memory, and SIMD architectures with comparative results against state-of-the-art Eikonal solvers.
