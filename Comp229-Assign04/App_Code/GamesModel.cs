using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GamesModel
/// </summary>
//public class GamesModel
//{
    //public GamesModel()
    //{
    //    //
    //    // TODO: Add constructor logic here
    //    //
    //}
   public class Action
{
    public string name { get; set; }
    public string type { get; set; }
    public int rating { get; set; }
    public string range { get; set; }
}

public class SpecialAbility
{
    public string name { get; set; }
    public string description { get; set; }
}

public class GamesModel
{
    public string name { get; set; }
    public string faction { get; set; }
    public int rank { get; set; }
    public int @base { get; set; }
    public int size { get; set; }
    public string deploymentZone { get; set; }
    public List<string> traits { get; set; }
    public List<string> types { get; set; }
    public List<string> defenseChart { get; set; }
    public int mobility { get; set; }
    public int willpower { get; set; }
    public int resiliance { get; set; }
    public int wounds { get; set; }
    public List<Action> actions { get; set; }
    public List<SpecialAbility> specialAbilities { get; set; }
    public string imageUrl { get; set; }
	}
//}