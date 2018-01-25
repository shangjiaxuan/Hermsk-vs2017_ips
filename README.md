# Hermsk

This is Dr. Mark D. Pauli's reorganized and adapted Hermann - Skillman code. The original files can be found at

http://hermes.phys.uwm.edu/projects/elecstruct/hermsk/HS.TOC.html

Please refer to the original conditions when using the original code, which includes the following four files:

[hermsk.v07.8.f](https://github.com/shangjiaxuan/Hermsk-vs2017_ips/blob/original/hermsk.v07.8.f) | [parseall.hermsk.f](https://github.com/shangjiaxuan/Hermsk-vs2017_ips/blob/original/parseall.hermsk.f) | [parsewf.hermsk.f](https://github.com/shangjiaxuan/Hermsk-vs2017_ips/blob/original/parsewf.hermsk.f) | [input.dat](https://github.com/shangjiaxuan/Hermsk-vs2017_ips/blob/original/input.dat)
-----------------|---------------------|--------------------|------------

Original authors of the Hermann - Skillman code other than Dr. Pauli can be found in the original [hermsk.v07.8.f](https://github.com/shangjiaxuan/Hermsk-vs2017_ips/blob/original/hermsk.v07.8.f) file.

Anyone is welcome to contribte, but I also included a Mozilla Public License 2.0 in the reposiptory to at least make sure that original authors are credited for their work, and a copy of the original work can be found at the "original" branch. Additions to the repository other than those files are **NOT** licensed and free to use and modify in any way.

I am including the build products int the repository, but since I am using an acedemic license of Intel(R) Parallel Studio XE, the Mozilla Public License 2.0 does not apply to those binaries and **PLEASE DO NOT** use them out of the conditions specified in the **[DPD-EULA-for-Intel-Software_May 2017_Version_Final_060217.pdf](https://github.com/shangjiaxuan/Hermsk-vs2017_ips/blob/master/DPD-EULA-for-Intel-Software_May%202017_Version_Final_060217.pdf)** under the Non-Commercial Use terms.

## Building from source

It is tested on Macbook Pro 2015 running Bootcamp Windows 10 to compile and run with Visual Studio Community 2017 and Intel(R) Parallel Studio XE 2018 Update 1. Other Windows platforms have not been tested.

You may need to customize some settings to set things straight if you run on a different environment.

## Test Case

A test case from the original Hermsk source is included in the directory .\Test\, but you may need to seperately set up the work directories since Visual Studio does not support setting it in the whole solution or project.
