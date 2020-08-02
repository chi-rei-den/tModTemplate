$code = @"
using System;
using System.IO;
using System.Text.RegularExpressions;
public class Program
{
    public static void Main()
    {
        const string BUILD = "../.github/workflows/build.yml";
        const string SLN = "../Mod.sln";
        const string CSPROJ = "../tModTemplate/Mod.csproj";
        const string CS = "../tModTemplate/tModTemplate.cs";
        Environment.CurrentDirectory = @"$pwd";
        Console.Write("请输入模组的内部名称（建议使用英文字符）：");
        var name = Console.ReadLine();
        File.WriteAllText(BUILD, Regex.Replace(File.ReadAllText(BUILD), "command: publish(\\s+)path: .*", "command: publish`$1path: " + name));
        File.WriteAllText(SLN, Regex.Replace(File.ReadAllText(SLN), "tModTemplate\\\\Mod.csproj", name + "\\Mod.csproj"));
        File.WriteAllText(CSPROJ, Regex.Replace(File.ReadAllText(CSPROJ), "<AssemblyName>tModTemplate</AssemblyName>", "<AssemblyName>" + name + "</AssemblyName>"));
        File.WriteAllText(CS, Regex.Replace(File.ReadAllText(CS), "tModTemplate", name));
        Directory.Move("../tModTemplate", "../" + name);
    }
}
"@
 
Add-Type -TypeDefinition $code -Language CSharp	
iex "[Program]::Main()"