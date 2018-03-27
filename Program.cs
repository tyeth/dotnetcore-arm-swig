using System;
using System.Runtime.InteropServices;

namespace console
{
  class Program
  {
    [DllImport("libc.so.6")]
    private static extern int getpid();

    static void Main(string[] args)
    {
      Console.WriteLine("Hello World!");

      // Invoke the function and get the process ID.
      Console.WriteLine($"[DllImport(\"libc.so.6\") -> getpid(): {getpid()}");

      Console.WriteLine($"SWIG 4.0 Generated code: {example.My_variable}, {example.fact(5)}, {example.get_time()}");
      Console.WriteLine("Success!");
    }
  }
}
