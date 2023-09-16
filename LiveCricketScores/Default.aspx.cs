using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
namespace LiveCricketScores
{
    public partial class _Default : Page
    {
        public List<Match> matches = new List<Match>();
        protected async void Page_Load(object sender, EventArgs e)
        {

          await apiData();
        }

         protected async  Task apiData()
        {
            HttpClient client = new HttpClient();
            string api = "0c699871-5989-4290-8ea4-80adc1d6a316";
            string apiurl = "https://api.cricapi.com/v1/currentMatches?apikey=0c699871-5989-4290-8ea4-80adc1d6a316&offset=0";
            HttpResponseMessage response =  await client.GetAsync(apiurl);
            if (response.IsSuccessStatusCode)
            {
                List<object> _matches = new List<object>();
                string responseBody = await response.Content.ReadAsStringAsync();
                dynamic j = JsonConvert.DeserializeObject(responseBody);
                var obj = j["data"];
                matches = JsonConvert.DeserializeObject<List<Match>>(obj.ToString());

                
            }
        }
    }
}