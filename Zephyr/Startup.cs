using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Zephyr.Startup))]
namespace Zephyr
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
