# Test SWIG 4.0 generated C# code with .NET Core 2.1 on amd64 Linux (x64) and arm64v8 Linux (arm64) *NEW!!!* #

**The purpose of this sample is to demonstrate the need for .NET Core 2.1 framework on arm64v8 platform.**

## Prerequisites: ##
**Install on Debian-VM amd64**

- [Runtime-Deps](https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-deps-latest-debian.9-x64.deb)
- [Host](https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-host-latest-x64.deb)
- [Host FX Resolver](https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-hostfxr-latest-x64.deb)
- [Shared Framework](https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-x64.deb)
- [SDK](https://dotnetcli.blob.core.windows.net/dotnet/Sdk/master/dotnet-sdk-latest-linux-x64.tar.gz) (`sudo tar -xzf dotnet-sdk-latest-linux-x64.tar.gz -C /usr/share/dotnet`)

**Install runtime on DragonBoard 410c arm64v8 SBC**

- [Runtime](https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-linux-arm64.tar.gz) (`sudo tar -xzf dotnet-runtime-latest-linux-arm64.tar.gz -C /usr/share/dotnet`)
- `sudo ln -sf /usr/share/dotnet/dotnet /usr/bin/dotnet`


## Debian-VM amd64 ##
- **Framework**: .NET Core 2.1 Linux (x64)
- **Runtime**: Microsoft.NETCore.App 2.1.0-preview3-26327-03 (dotnet --list-runtimes)
- **SDK**: 2.1.300-preview3-008414 (dotnet --list-sdks)
- **Platform**: amd64 Linux (x64)
- **OS**:  Debian 9.4 (stretch)
- **Host**: Debian-VM (Hyper-V on Windoes 10 Pro x64) 

**Build instructions:**

1. `cd ~/`
1. `git clone`
1. `cd dotnetcore-arm-swig`
1. `# Optional if you have swig 4.0 installed`
1. `#make swig` 
1. `make clean`
1. `make`
1. `dotnet publish console.csproj -c Debug -o app`
1. `dotnet app/console.dll`

**Output** (your pid and date is different)

	Hello World!
	[DllImport("libc.so.6") -> getpid(): 6895
	SWIG 4.0 Generated code: 3, 120, Tue Mar 27 17:40:06 2018
	Success!

## DragonBoard 410c arm64v8 SBC ##
- **Framework**: .NET Core 2.1 Linux (arm64)
- **Runtime**: Microsoft.NETCore.App 2.1.0-preview3-26327-03 (dotnet --list-runtimes)
- **SDK**: N/A (dotnet --list-sdks)
- **Platform**: arm64v8 Linux (arm64)
- **OS**: Debian 9.4 (stretch)
- **Host**: DragonBoard 410c arm64v8 SBC 

**Build instructions:**

**Cross compile on Debian-VM**

1. `cd ~/dotnetcore-arm-swig`
1. `make clean`
1. `# Copy ~/dotnetcore-arm-swig/ from Debian-VM to DB410c ~/ (I used WinSCP)`

On the  DragonBoard 410c arm64v8 SBC

1. `cd ~/dotnetcore-arm-swig`
1. `# Optional if you have swig 4.0 installed`
1. `#make swig` 
1. `make clean`
1. `make`
1. `chmod -R 777 app`
1. `dotnet app/console.dll`

**Output** (your pid and date is different)

	Hello World!
	[DllImport("libc.so.6") -> getpid(): 811
	SWIG 4.0 Generated code: 3, 120, Tue Mar 27 17:40:24 2018
	Success!
    