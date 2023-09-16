using System;
using System.Collections.Generic;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;

namespace LiveCricketScores
{
    public class Match
    {
        public string id { get; set; }
        public string name { get; set; }
        public string matchType { get; set; }
        public string status { get; set; }
        public string venue { get; set; }
        public DateTime date { get; set; }
        public string dateTimeGMT { get; set; }
        public List<string> teams { get; set; }
        public List<TeamInfo> teamInfo { get; set; }
        public List<Score> score { get; set; }
        public string seriesId { get; set; }
        public bool fantasyEnabled { get; set; }
        public bool bbbEnabled { get; set; }
        public bool hasSquad { get; set; }
        public bool matchStarted { get; set; }
        public bool matchEnded { get; set; }
    }

    public class TeamInfo
    {
        public string Name { get; set; }
        public string Shortname { get; set; }
        public string Img { get; set; }
    }

    public class Score
    {
        public int r { get; set; }
        public int w { get; set; }
        public float o { get; set; }
        public string inning { get; set; }
    }
}