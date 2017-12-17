using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Models : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string game_name = Request["name"].ToString();
            string file_path = Server.MapPath("~/App_Data/Assign04.json");
            string json = File.ReadAllText(file_path);
            var games_list = JsonConvert.DeserializeObject<List<GamesModel>>(json);
            var selected_game = from s in games_list where s.name == game_name select s;
            RptAllItems.DataSource = selected_game;
            RptAllItems.DataBind();
        }
    }

    protected void DeleteItem(object sender, EventArgs e)
    {
        string game_name = ((sender as LinkButton).NamingContainer.FindControl("lblGameName") as Label).Text;
        string file_path = Server.MapPath("~/App_Data/Assign04.json");
        string json = File.ReadAllText(file_path);
        var games_list = JsonConvert.DeserializeObject<List<GamesModel>>(json);
        var newJsonList = games_list.Where(i => i.name != game_name);
        String updated_json = JsonConvert.SerializeObject(newJsonList);
        File.WriteAllText(file_path, updated_json);
        Response.Redirect("home.aspx");
    }

}