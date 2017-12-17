using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string game_name = Request["name"].ToString();
            string file_path = Server.MapPath("~/App_Data/Assign04.json");
            string json = File.ReadAllText(file_path);
            var games_list = JsonConvert.DeserializeObject<List<GamesModel>>(json);
            var selected_game = from s in games_list where s.name == game_name select s;
            var game_details = selected_game.FirstOrDefault();
            RptAllItems.DataSource = selected_game;
            RptAllItems.DataBind();
        }
    }
    protected void BtnUpdate_click(object sender, EventArgs e)
    {
        try
        {
            string game_name = Request["name"].ToString();
            string file_path = Server.MapPath("~/App_Data/Assign04.json");
            string json = File.ReadAllText(file_path);
            var games_list = JsonConvert.DeserializeObject<List<GamesModel>>(json);
            foreach (var items in games_list)
            {
                if (items.name == game_name)
                {

                    TextBox txtfaction = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtfaction");
                    TextBox txtrank = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtrank");
                    TextBox txtbase = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtbase");
                    TextBox txtsize = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtsize");
                    TextBox txtdeploymentZone = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtdeploymentZone");
                    TextBox txtmobility = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtmobility");
                    TextBox txtwillpower = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtwillpower");
                    TextBox txtresiliance = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtresiliance");
                    TextBox txtwounds = (TextBox)RptAllItems.Controls[0].Controls[0].FindControl("txtwounds");
                    items.faction = txtfaction.Text;
                    items.rank = Convert.ToInt32(txtrank.Text);
                    items.@base = Convert.ToInt32(txtbase.Text);
                    items.size = Convert.ToInt32(txtsize.Text);
                    items.deploymentZone = txtdeploymentZone.Text;
                    items.mobility = Convert.ToInt32(txtmobility.Text);
                    items.willpower = Convert.ToInt32(txtwillpower.Text);
                    items.resiliance = Convert.ToInt32(txtresiliance.Text);
                    items.wounds = Convert.ToInt32(txtwounds.Text);

                    Repeater RptdefenseChart = (Repeater)RptAllItems.Controls[0].Controls[0].FindControl("RptdefenseChart");
                    for (int i = 0; i < RptdefenseChart.Items.Count; i++)
                    {
                        var txtUserInput = (TextBox)RptdefenseChart.Controls[i].Controls[0].FindControl("txtdefenseChart");
                        items.defenseChart[i] = txtUserInput.Text.ToString();
                    }

                    Repeater Rpttraits = (Repeater)RptAllItems.Controls[0].Controls[0].FindControl("Rpttraits");
                    for (int i = 0; i < Rpttraits.Items.Count; i++)
                    {
                        var txtUserInput = (TextBox)Rpttraits.Controls[i].Controls[0].FindControl("txttraits");
                        items.traits[i] = txtUserInput.Text.ToString();
                    }
                    Repeater Rpttypes = (Repeater)RptAllItems.Controls[0].Controls[0].FindControl("Rpttypes");
                    for (int i = 0; i < Rpttypes.Items.Count; i++)
                    {
                        var txtUserInput = (TextBox)Rpttypes.Controls[i].Controls[0].FindControl("txtTypes");
                        items.types[i] = txtUserInput.Text.ToString();
                    }

                    Repeater RptActions = (Repeater)RptAllItems.Controls[0].Controls[0].FindControl("RptActions");
                    for (int i = 0; i < RptActions.Items.Count; i++)
                    {
                        var txtActionsName = (TextBox)RptActions.Controls[i].Controls[0].FindControl("txtActionsName");
                        var txtActionsType = (TextBox)RptActions.Controls[i].Controls[0].FindControl("txtActionsType");
                        var txtActionsRating = (TextBox)RptActions.Controls[i].Controls[0].FindControl("txtActionsRating");
                        var txtActionsRange = (TextBox)RptActions.Controls[i].Controls[0].FindControl("txtActionsRange");
                        items.actions[i].name = txtActionsName.Text;
                        items.actions[i].type = txtActionsType.Text;
                        items.actions[i].rating = Convert.ToInt32(txtActionsRating.Text);
                        items.actions[i].range = txtActionsRange.Text;
                    }

                    Repeater RptspecialAbilities = (Repeater)RptAllItems.Controls[0].Controls[0].FindControl("RptspecialAbilities");
                    for (int i = 0; i < RptspecialAbilities.Items.Count; i++)
                    {
                        var txtSpecialAbilitiesName = (TextBox)RptspecialAbilities.Controls[i].Controls[0].FindControl("txtSpecialAbilitiesName");
                        var txtSpecialAbilitiesdescription = (TextBox)RptspecialAbilities.Controls[i].Controls[0].FindControl("txtSpecialAbilitiesdescription");
                        items.specialAbilities[i].name = txtSpecialAbilitiesName.Text;
                        items.specialAbilities[i].description = txtSpecialAbilitiesdescription.Text;

                    }
                }
            }
            String updated_json = JsonConvert.SerializeObject(games_list);
            File.WriteAllText(file_path, updated_json);
            string message = "alert('Records Updated Successfully.')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
        }
        catch(System.Exception ex)
        {
            string message = "alert('Updatedion failed !try Again.')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
        }
    }
}