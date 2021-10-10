

public class Program{
    public static void Main(string[] args){
        var lib1 = new ClassLib1.Class1();
        var lib2 = new ClassLib2.Class1();
        var lib3 = new ClassLib3.Class1();
        var lib4 = new ClassLib4.Class1();
        var lib5 = new ClassLib5.Class1();

        var builder = WebApplication.CreateBuilder(args);
        var app = builder.Build();

        app.MapGet("/", () => "Hello World!");

        app.Run();
    }
}
