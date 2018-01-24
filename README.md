# Hermsk

This is Dr. Mark D. Pauli's adapted Hermann - Skillman code. The original files can be found at

http://hermes.phys.uwm.edu/projects/elecstruct/hermsk/HS.TOC.html

Please refer to the original conditions when using the original code, which includes the following three files:

hermsk.v07.8.f | parseall.hermsk.f | parsewf.hermsk.f | input.dat
---------------|-------------------|------------------|----------

Anyone is welcome to contribte, but I also included a Mozilla Public License 2.0 in the reposiptory to make sure that Dr. Pauli is credited for his work, and a copy of the original work can be found at the "original" branch.

I am including the build products int the repository, but since I am using an acedemic license of Intel(R) Parallel Studio XE, the Mozilla Public License 2.0 does not apply to those binaries and PLEASE DO NOT use them out of the conditions specified in the file license.ips

# Building from source

It is tested on Macbook Pro 2015 running Bootcamp Windows 10 to compile and run with Visual Studio Community 2017 and Intel(R) Parallel Studio XE 2018 Update 1. Other Windows platforms have not been tested.

You may need to customize some settings to set things straight if you run on a different environment.

# Test Case

A test case from the original Hermsk source is included in the directory .\Test\, but you may need to seperately set up the work directories since Visual Studio does not support setting it in the whole solution or project.
