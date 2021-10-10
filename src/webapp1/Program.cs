using ClassLib1;
using ClassLib2;
using ClassLib3;
using ClassLib4;
using ClassLib5;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace webapp1
{
    public class Program
    {
        public static void Main(string[] args)
        {
            
            var lib1 = new Class1();
            var lib2 = new Class2();
            var lib3 = new Class3();
            var lib4 = new Class4();
            var lib5 = new Class5();
            
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
    }
}

