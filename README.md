# Test SWIG 4.0 generated C# code with .NET Core 2.0/2.1 on amd64 Linux (x64) and arm64v8 Linux (armhf) #

**The purpose of this sample is to demonstrate the need for .NET Core 2.1 framework on arm64v8 platform.**

## Working ##
- **Framework**: .NET Core 2.0 Linux (x64)
- **Runtime**: Microsoft.NETCore.App 2.1.0-preview3-26323-01 (dotnet --list-runtimes)
- **SDK**: 2.1.300-preview3-008391 (dotnet --list-sdks)
- **Platform**: amd64 Linux (x64)
- **OS**: Ubuntu 16.04.4, xenial
- **Host**: Ubuntu-VM (Hyper-V on Windoes 10 Pro x64) 

**Build instructions on Ubuntu-VM:**

1. `cd ~/`
1. `git clone https://github.com/IvanFarkas/dotnetcore-arm-swig.git`
1. `cd dotnetcore-arm-swig`
1. `mkdir app`
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

    Hello World!
    [DllImport("libc.so.6") -> getpid(): 23519
    
    Unhandled Exception: System.TypeInitializationException: The type initializer for 'examplePINVOKE' threw an exception. ---> System.TypeInitializationException: The type initializer for 'SWIGExceptionHelper' threw an exception. ---> System.DllNotFoundException: Unable to load DLL 'example': The specified module or one of its dependencies could not be found.
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
    