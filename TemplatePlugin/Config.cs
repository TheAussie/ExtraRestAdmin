using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using Newtonsoft.Json;
using System.Net;
using Terraria;
namespace extraAdminREST
{
    class Config
    {
        public bool debugChat = false;
        public int chatPort = 25565;
        public bool chatOn = false;
        public string consoleName = "Console";
        public string ipServer = Terraria.Netplay.serverListenIP.ToString();
		public void Write(string path)
		{
			File.WriteAllText(path, JsonConvert.SerializeObject(this, Formatting.Indented));
		}

		public static Config Read(string path)
		{
            Config c;
            try {
                c = JsonConvert.DeserializeObject<Config>(File.ReadAllText(path));
            }
            catch {
                c = new Config();
            }
            return c;
		}
	}
}

