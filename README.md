# Test SWIG 4.0 generated C# code with .NET Core 2.0/2.1 on amd64 Linux (x64) and arm64v8 Linux (armhf) #

**The purpose of this sample is to demonstrate the need for .NET Core 2.1 framework on arm64v8 platform.**

## Working ##
- **Framework**: .NET Core 2.0 Linux (x64)
- **Runtime**: Microsoft.NETCore.App 2.1.0-preview3-26323-01 (dotnet --list-runtimes)
- **SDK**: 2.1.300-preview3-008391 (dotnet --list-sdks)
- **Platform**: amd64 Linux (x64)
- **OS**: Ubuntu 16.04.4, xenial
- **Host**: Ubuntu-VM (Hyper-V on Windoes 10 Pro x64) 

**Build instructions:**

1. `cd ~/`
1. `git clone`
1. `cd dotnetcore-arm-swig`
1. `# Optional if you have swig 4.0 installed`
1. `#make swig` 
1. `make clean`
1. `make`
1. `dotnet publish console.csproj -c Debug -r linux-x64 -o app`
1. `app/console`

**Output** (your pid and date is different)

    Hello World!
	[DllImport("libc.so.6") -> getpid(): 28614
	SWIG 4.0 Generated code: 3, 120, Fri Mar 23 10:58:34 2018
	Success!

## Not Working ##
- **Framework**: .NET Core 2.0 Linux (armhf)
- **Runtime**: Microsoft.NETCore.App 2.1.0-preview3-26322-05 (dotnet --list-runtimes)
- **SDK**: N/A (dotnet --list-sdks)
- **Platform**: arm64v8 Linux (arm64)
- **OS**: Debian 9.4 (stretch)
- **Host**: DragonBoard 410c arm64v8 SBC 

**Build instructions:**

**Cross compile on Ubuntu-VM**

1. `cd ~/dotnetcore-arm-swig`
1. `make clean`
1. `dotnet publish console.csproj -c Debug -r linux-arm -o app`
1. `# Copy ~/dotnetcore-arm-swig/ from Ubuntu-VM to DB410c ~/ (I used WinSCP)`

On the  DragonBoard 410c arm64v8 SBC
1. `cd ~/dotnetcore-arm-swig`
1. `# Optional if you have swig 4.0 installed`
1. `#make swig` 
1. `make clean`
1. `make`
1. `chmod -R 777 app`
1. `app/console`

**Output** (your pid is different)

      1970:
      1970: file=libdl.so.2 [0];  needed by app/console [0]
      1970: file=libdl.so.2 [0];  generating link map
      1970:   dynamic: 0xf7554ef8  base: 0xf7543000   size: 0x000120c4
      1970: entry: 0xf7543a14  phdr: 0xf7543034  phnum:  6
      1970:
      1970:
      1970: file=libpthread.so.0 [0];  needed by app/console [0]
      1970: file=libpthread.so.0 [0];  generating link map
      1970:   dynamic: 0xf753fee8  base: 0xf751e000   size: 0x0002428c
      1970: entry: 0xf7522755  phdr: 0xf751e034  phnum:  9
      1970:
      1970:
      1970: file=libstdc++.so.6 [0];  needed by app/console [0]
      1970: file=libstdc++.so.6 [0];  generating link map
      1970:   dynamic: 0xf7519ef0  base: 0xf7413000   size: 0x0010a6cc
      1970: entry: 0xf74815a8  phdr: 0xf7413034  phnum:  8
      1970:
      1970:
      1970: file=libm.so.6 [0];  needed by app/console [0]
      1970: file=libm.so.6 [0];  generating link map
      1970:   dynamic: 0xf7411ef0  base: 0xf7392000   size: 0x00080078
      1970: entry: 0xf7398d90  phdr: 0xf7392034  phnum:  6
      1970:
      1970:
      1970: file=libgcc_s.so.1 [0];  needed by app/console [0]
      1970: file=libgcc_s.so.1 [0];  generating link map
      1970:   dynamic: 0xf7390f08  base: 0xf7369000   size: 0x00028134
      1970: entry: 0xf73761f0  phdr: 0xf7369034  phnum:  7
      1970:
      1970:
      1970: file=libc.so.6 [0];  needed by app/console [0]
      1970: file=libc.so.6 [0];  generating link map
      1970:   dynamic: 0xf7364f20  base: 0xf7271000   size: 0x000f75c0
      1970: entry: 0xf72880f9  phdr: 0xf7271034  phnum: 10
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/libpthread.so.0
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/libc.so.6
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/libgcc_s.so.1
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/libm.so.6
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/libdl.so.2
      1970:
      1970:
      1970: initialize program: app/console
      1970:
      1970:
      1970: transferring control: app/console
      1970:
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libhostfxr.so [0];  dynamically loaded by app/console [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libhostfxr.so [0];  generating link map
      1970:   dynamic: 0xf726fef0  base: 0xf71ef000   size: 0x00081460
      1970: entry: 0xf722b108  phdr: 0xf71ef034  phnum:  7
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/libhostfxr.so
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libhostfxr.so [0]; direct_opencount=1
      1970:
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libhostpolicy.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libhostfxr.so [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libhostpolicy.so [0];  generating link map
      1970:   dynamic: 0xf71edef0  base: 0xf7157000   size: 0x00097504
      1970: entry: 0xf71a1650  phdr: 0xf7157034  phnum:  7
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/libhostpolicy.so
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libhostpolicy.so [0]; direct_opencount=1
      1970:
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libhostpolicy.so [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0];  generating link map
      1970:   dynamic: 0xf7136eac  base: 0xf6c02000   size: 0x0055483c
      1970: entry: 0xf6c40c60  phdr: 0xf6c02034  phnum:  8
      1970:
      1970:
      1970: file=librt.so.1 [0];  needed by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=librt.so.1 [0];  generating link map
      1970:   dynamic: 0xf6c00ee0  base: 0xf6bec000   size: 0x00015218
      1970: entry: 0xf6bed810  phdr: 0xf6bec034  phnum:  7
      1970:
      1970:
      1970: file=libunwind.so.8 [0];  needed by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=libunwind.so.8 [0];  generating link map
      1970:   dynamic: 0xf6bc5f30  base: 0xf6bad000   size: 0x0003e708
      1970: entry: 0xf6baeedc  phdr: 0xf6bad034  phnum:  8
      1970:
      1970:
      1970: file=libuuid.so.1 [0];  needed by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=libuuid.so.1 [0];  generating link map
      1970:   dynamic: 0xf6babf00  base: 0xf6b97000   size: 0x00015104
      1970: entry: 0xf6b98020  phdr: 0xf6b97034  phnum:  8
      1970:
      1970:
      1970: file=libunwind-arm.so.8 [0];  needed by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=libunwind-arm.so.8 [0];  generating link map
      1970:   dynamic: 0xf6b70f28  base: 0xf6b55000   size: 0x000416e8
      1970: entry: 0xf6b56758  phdr: 0xf6b55034  phnum:  8
      1970:
      1970:
      1970: file=liblzma.so.5 [0];  needed by /usr/lib/arm-linux-gnueabihf/libunwind.so.8 [0]
      1970: file=liblzma.so.5 [0];  generating link map
      1970:   dynamic: 0xf6b53ef0  base: 0xf6b2b000   size: 0x000291b0
      1970: entry: 0xf6b2d2b8  phdr: 0xf6b2b034  phnum:  6
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/liblzma.so.5
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/libuuid.so.1
      1970:
      1970:
      1970: calling init: /lib/arm-linux-gnueabihf/librt.so.1
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so
      1970:
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclrtraceptprovider.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclrtraceptprovider.so [0];  generating link map
      1970:   dynamic: 0xf6b29ef0  base: 0xf6ab9000   size: 0x00071800
      1970: entry: 0xf6ace1d8  phdr: 0xf6ab9034  phnum:  7
      1970:
      1970:
      1970: file=liblttng-ust.so.0 [0];  needed by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclrtraceptprovider.so [0]
      1970: file=liblttng-ust.so.0 [0];  generating link map
      1970:   dynamic: 0xf6aaf8fc  base: 0xf6a58000   size: 0x00060e34
      1970: entry: 0xf6a60e58  phdr: 0xf6a58034  phnum:  8
      1970:
      1970:
      1970: file=liblttng-ust-tracepoint.so.0 [0];  needed by /usr/lib/arm-linux-gnueabihf/liblttng-ust.so.0 [0]
      1970: file=liblttng-ust-tracepoint.so.0 [0];  generating link map
      1970:   dynamic: 0xf6a4edd4  base: 0xf6a38000   size: 0x0001f0d8
      1970: entry: 0xf6a392e8  phdr: 0xf6a38034  phnum:  7
      1970:
      1970:
      1970: file=liburcu-bp.so.6 [0];  needed by /usr/lib/arm-linux-gnueabihf/liblttng-ust.so.0 [0]
      1970: file=liburcu-bp.so.6 [0];  generating link map
      1970:   dynamic: 0xf6a36df0  base: 0xf6a22000   size: 0x0001523c
      1970: entry: 0xf6a236c4  phdr: 0xf6a22034  phnum:  7
      1970:
      1970:
      1970: file=liburcu-cds.so.6 [0];  needed by /usr/lib/arm-linux-gnueabihf/liblttng-ust.so.0 [0]
      1970: file=liburcu-cds.so.6 [0];  generating link map
      1970:   dynamic: 0xf6a20df8  base: 0xf6a0b000   size: 0x00016090
      1970: entry: 0xf6a0c688  phdr: 0xf6a0b034  phnum:  6
      1970:
      1970:
      1970: file=liburcu-common.so.6 [0];  needed by /usr/lib/arm-linux-gnueabihf/liburcu-bp.so.6 [0]
      1970: file=liburcu-common.so.6 [0];  generating link map
      1970:   dynamic: 0xf6a09eb0  base: 0xf69f7000   size: 0x00013058
      1970: entry: 0xf69f7ed4  phdr: 0xf69f7034  phnum:  6
      1970:
      1970:
      1970: file=/usr/lib/arm-linux-gnueabihf/liburcu-bp.so.6 [0];  needed by /usr/lib/arm-linux-gnueabihf/liburcu-common.so.6 [0] (relocation dependency)
      1970:
      1970:
      1970: file=/usr/lib/arm-linux-gnueabihf/liburcu-bp.so.6 [0];  needed by /usr/lib/arm-linux-gnueabihf/liburcu-cds.so.6 [0] (relocation dependency)
      1970:
      1970:
      1970: file=/usr/lib/arm-linux-gnueabihf/liblttng-ust.so.0 [0];  needed by /usr/lib/arm-linux-gnueabihf/liblttng-ust-tracepoint.so.0 [0] (relocation dependency)
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/liburcu-common.so.6
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/liburcu-cds.so.6
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/liburcu-bp.so.6
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/liblttng-ust-tracepoint.so.0
      1970:
      1970: opening file=/usr/lib/arm-linux-gnueabihf/liblttng-ust-tracepoint.so.0 [0]; direct_opencount=1
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/liblttng-ust.so.0
      1970:
      1970: opening file=/usr/lib/arm-linux-gnueabihf/liblttng-ust-tracepoint.so.0 [0]; direct_opencount=2
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclrtraceptprovider.so
      1970:
      1970: opening file=/usr/lib/arm-linux-gnueabihf/liblttng-ust-tracepoint.so.0 [0]; direct_opencount=3
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclrtraceptprovider.so [0]; direct_opencount=1
      1970:
      1970: opening file=/usr/lib/arm-linux-gnueabihf/liblttng-ust-tracepoint.so.0 [0]; direct_opencount=4
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]; direct_opencount=1
      1970:
      1970: opening file= [0]; direct_opencount=2
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]; direct_opencount=2
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]; direct_opencount=3
      1970:
      1970:
      1970: closing file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so; direct_opencount=2
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: PAL_GetNumaHighestNodeNumber (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: GetNumaHighestNodeNumber (fatal)
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libclrjit.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libclrjit.so [0];  generating link map
      1970:   dynamic: 0xf0da5ea8  base: 0xf0c0b000   size: 0x001a7164
      1970: entry: 0xf0c17d28  phdr: 0xf0c0b034  phnum:  8
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/libclrjit.so
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libclrjit.so [0]; direct_opencount=1
      1970:
      1970: opening file= [0]; direct_opencount=3
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libclrjit.so [0]; direct_opencount=2
      1970:
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=System.Globalization.Native [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libSystem.Globalization.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=libSystem.Globalization.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0];  generating link map
      1970:   dynamic: 0xf457cef0  base: 0xf4567000   size: 0x00016540
      1970: entry: 0xf456a9cc  phdr: 0xf4567034  phnum:  7
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]; direct_opencount=1
      1970:
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: DllMain (fatal)
      1970:
      1970: file=libicuuc.so.72.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.72.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.72.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.72.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.72.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.71.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.71.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.71.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.71.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.71.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.70.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.70.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.70.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.70.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.70.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.69.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.69.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.69.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.69.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.69.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.68.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.68.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.68.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.68.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.68.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.67.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.67.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.67.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.67.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.67.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.66.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.66.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.66.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.66.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.66.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.65.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.65.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.65.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.65.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.65.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.64.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.64.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.64.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.64.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.64.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.63.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.63.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.63.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.63.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.63.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.62.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.62.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.62.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.62.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.62.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.61.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.61.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.61.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.61.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.61.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.60.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.60.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.60.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.60.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.60.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.59.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.59.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.59.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.59.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.59.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.58.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.58.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.58.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.58.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.58.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.57.5 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.57.4 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.57.3 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.57.2 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970:
      1970: file=libicuuc.so.57.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970: file=libicuuc.so.57.1 [0];  generating link map
      1970:   dynamic: 0xf0917ed0  base: 0xf07f3000   size: 0x00127ab8
      1970: entry: 0xf08340b8  phdr: 0xf07f3034  phnum:  7
      1970:
      1970:
      1970: file=libicudata.so.57 [0];  needed by /usr/lib/arm-linux-gnueabihf/libicuuc.so.57.1 [0]
      1970: file=libicudata.so.57 [0];  generating link map
      1970:   dynamic: 0xf07f1f08  base: 0xeef66000   size: 0x0188c02c
      1970: entry: 0xeef66404  phdr: 0xeef66034  phnum:  6
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/libicudata.so.57
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/libicuuc.so.57.1
      1970:
      1970: opening file=/usr/lib/arm-linux-gnueabihf/libicuuc.so.57.1 [0]; direct_opencount=1
      1970:
      1970:
      1970: file=libicui18n.so.57.1 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so [0]
      1970: file=libicui18n.so.57.1 [0];  generating link map
      1970:   dynamic: 0xeef63ec8  base: 0xeedbb000   size: 0x001aa770
      1970: entry: 0xeee56168  phdr: 0xeedbb034  phnum:  7
      1970:
      1970:
      1970: calling init: /usr/lib/arm-linux-gnueabihf/libicui18n.so.57.1
      1970:
      1970: opening file=/usr/lib/arm-linux-gnueabihf/libicui18n.so.57.1 [0]; direct_opencount=1
      1970:
      1970: /usr/lib/arm-linux-gnueabihf/libicuuc.so.57.1: error: symbol lookup error: undefined symbol: u_strlen (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_GetDefaultLocaleNameW (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_GetSortHandleW (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_GetLocaleNameW (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_GetLocaleInfoStringW (fatal)
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Native [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Native [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=System.Native [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libSystem.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libSystem.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=libSystem.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Native.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/System.Native.so [0];  generating link map
      1970:   dynamic: 0xf4555ef0  base: 0xf4545000   size: 0x000115dc
      1970: entry: 0xf454928c  phdr: 0xf4545034  phnum:  7
      1970:
      1970:
      1970: calling init: /home/ifarkas/dotnetcore-arm-swig/app/System.Native.so
      1970:
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/System.Native.so [0]; direct_opencount=1
      1970:
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Native.so: error: symbol lookup error: undefined symbol: DllMain (fatal)
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=libcoreclr [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/liblibcoreclr.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/liblibcoreclr.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=liblibcoreclr.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: opening file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]; direct_opencount=3
      1970:
      1970:
      1970: closing file=/home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so; direct_opencount=2
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: PAL_WideCharToMultiByte (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: PAL_GetEnvironmentVariable (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: GetEnvironmentVariable (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: PAL_GetEnvironmentVariableW (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_CompareStringW (fatal)
    Hello World!
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libc.so.6 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libc.so.6 [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: opening file=/lib/arm-linux-gnueabihf/libc.so.6 [0]; direct_opencount=1
      1970:
      1970: /lib/arm-linux-gnueabihf/libc.so.6: error: symbol lookup error: undefined symbol: DllMain (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_GetLocaleInfoIntW (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/System.Globalization.Native.so: error: symbol lookup error: undefined symbol: GlobalizationNative_GetLocaleInfoGroupingSizesW (fatal)
    [DllImport("libc.so.6") -> getpid(): 1970
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/example [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/example [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=example [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libexample.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libexample.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=libexample.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/example.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/example.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=example.so [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libexample [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=/home/ifarkas/dotnetcore-arm-swig/app/libexample [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970:
      1970: file=libexample [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
    
    Unhandled Exception:   1970:
      1970: file=Microsoft.DiaSymReader.Native.arm.dll [0];  dynamically loaded by /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so [0]
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: PAL_LocalAlloc (fatal)
      1970: /home/ifarkas/dotnetcore-arm-swig/app/libcoreclr.so: error: symbol lookup error: undefined symbol: PAL_LocalFree (fatal)
    System.TypeInitializationException: The type initializer for 'examplePINVOKE' threw an exception. ---> System.TypeInitializationException: The type initializer for 'SWIGExceptionHelper' threw an exception. ---> System.DllNotFoundException: Unable to load DLL 'example': The specified module or one of its dependencies could not be found.
     (Exception from HRESULT: 0x8007007E)
       at examplePINVOKE.SWIGExceptionHelper.SWIGRegisterExceptionCallbacks_example(ExceptionDelegate applicationDelegate, ExceptionDelegate arithmeticDelegate, ExceptionDelegate divideByZeroDelegate, ExceptionDelegate indexOutOfRangeDelegate, ExceptionDelegate invalidCastDelegate, ExceptionDelegate invalidOperationDelegate, ExceptionDelegate ioDelegate, ExceptionDelegate nullReferenceDelegate, ExceptionDelegate outOfMemoryDelegate, ExceptionDelegate overflowDelegate, ExceptionDelegate systemExceptionDelegate)
       at examplePINVOKE.SWIGExceptionHelper..cctor() in /home/ifarkas/dotnetcore-arm-swig/examplePINVOKE.cs:line 104
       --- End of inner exception stack trace ---
       at examplePINVOKE.SWIGExceptionHelper..ctor()
       at examplePINVOKE..cctor() in /home/ifarkas/dotnetcore-arm-swig/examplePINVOKE.cs:line 124
       --- End of inner exception stack trace ---
       at examplePINVOKE.My_variable_get()
       at example.get_My_variable() in /home/ifarkas/dotnetcore-arm-swig/example.cs:line 18
       at console.Program.Main(String[] args) in /home/ifarkas/dotnetcore-arm-swig/Program.cs:line 24
    Aborted
    