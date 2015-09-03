# Getting Started With MSP430 GNU Eclipse on Windows
Do you like to play with TI MSP430 Launchpad and use open source software only? If you follow the instructions below you end up with a Hello-World-Program on your MSP430-Launchpad
* developed on a host of type Windows 7 x64,
* built in environment MSYS2+Mingw64,
* written from inside the IDE Eclipse,
* written with C,
* compiled, linked, downloaded and debugged with the MSP430-GCC toolchain,

## Step 0: Get a MSP430 Launchpad
I have a MSP-EXP430G2, see http://www.ti.com/ww/en/launchpad/launchpads-msp430-msp-exp430g2.html#tabs

The tutorial assumes that you have the same.

## Step 1: Install MSYS2
* Go to http://sourceforge.net/projects/msys2
* Download MSYS2 (its a 64Bit environment)
* Install. We chose the default ''c:\msys64'' here. If you are using another path, adapt the following instructions accordingly.
* The Setup should now start your shell.
* In general, it is a standard shell you will find on many Linux and Unix systems out there. It might look old-school but the reason that this kind of interaction still exists is that it is proven to be effective if used accordingly. MSYS2 provides a package management system to the user.
* First, update package database and your setup:
 $ pacman -Syu
* Exit the shell because after these heavy updates the shell becomes unreliable when working w/o a clean re-start:
 $ exit
* Start the shell again via "C:\msys64\mingw64_shell.bat"
* Install git (with "gui-stuff), make and gcc:
 $ pacman -S git mingw64/mingw-w64-x86_64-tk make mingw64/mingw-w64-x86_64-gcc
* Exit the shell:
 $ exit

General informations about MSYS2 and the package manager system "pacman": See http://sourceforge.net/p/msys2/wiki/MSYS2%20installation/

''(Remark: Thanks to the Open Source Project "OpenWalnut" http://www.openwalnut.org/projects/openwalnut/wiki/InstallMSYS2 OpenWalnut for the really nice wiki I used to derive the above steps from.)''

## Step 2: Install Eclipse for C/C++ Developers
* Download "Eclipse IDE for C/C++ Developers" for Windows 64-bit from http://www.eclipse.org/downloads/
* Unzip it (we we did it so the eclipse.exe is under c:\eclipse\eclipse.exe)

From now on we always start eclipse from within MinGW64's shell. This is nice because then all the tools (most important make) can be easily reached from within Eclipse.

So start Eclipse by doing following
* Start the shell via "C:\msys64\mingw64_shell.bat"
* Call eclipse:
 $ /c/eclipse/eclipse.exe &
 
Mind the ampersand at the end of the command line. This causes eclipse running in the background as an forked process of the shell. You now still can work in the shell and also in Eclipse.

## Step 3: Download and install MSP430 toolchain
Unfortunately MSP430 toolchain is not available as MSYS2-Package. So we cannot install it via pacman. No problem:
* Download it from http://xpg.dk/files/File/msp430/msp430-toolchain-win-x86-3.0.zip
* Unzip it (we did it so msp430-gcc.exe is available under "C:\msp430-toolchain-win-x86-3.0\bin\msp430-gcc.exe"

## Step 4: Download and install GDB-Proxy

Now we need also to install GDB-Proxy. MSPDebug is an open-source tool used to debug MSP430 devices over JTAG using GDB with the original MSP430.DLL from Texas Instruments.
* Download the latest zip from http://gnutoolchains.com/msp430/gdbproxy/
* In the zip there is the executable plus some dlls. We just copy all the files into the directory "C:\msp430-toolchain-win-x86-3.0\bin\", so that they reside along with the rest of the GDB-stuff.

## Step 5: Download and install Flash-tool (skipped, because not necessary)
http://software-dl.ti.com/msp430/msp430_public_sw/mcu/msp430/MSP430Flasher/latest/index_FDS.html

Because we download via gdb we do not need the TI flash tool. The Flashtool could be downloaded from the vendor's (TI) page. But there registering is necessary, and so on. So we skip this for now.

## Step 6: 


 
