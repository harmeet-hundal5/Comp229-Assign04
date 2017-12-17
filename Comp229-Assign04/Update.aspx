<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
    <div style="width: 959px; margin: auto">      
        <div style="width: 959px; margin: auto">
            <asp:Repeater ID="RptAllItems" runat="server">
                <ItemTemplate>
                    <table class="tblCustomer" cellpadding="2" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td style="width: 50%">
                                <table>
                                    <tr>
                                        <td>
                                            <b>Name: </b></td>
                                        <td><span>
                                            <h3><%# Eval("name") %></h3>
                                        </span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Faction: </b></td>
                                        <td>
                                            <asp:TextBox ID="txtfaction" runat="server" Width="120" Text='<%# Eval("faction") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Rank: </b>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtrank" runat="server" Width="120" Text='<%# Eval("rank") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Base: </b></td>
                                        <td>
                                            <asp:TextBox ID="txtbase" runat="server" Width="120" Text='<%# Eval("base") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Size: </b></td>
                                        <td>
                                            <asp:TextBox ID="txtsize" runat="server" Width="120" Text='<%# Eval("size") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td><b>DeploymentZone: </b></td>
                                        <td>
                                            <asp:TextBox ID="txtdeploymentZone" runat="server" Width="120" Text='<%# Eval("deploymentZone") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Traits: </b></td>
                                        <td>
                                            <asp:Repeater ID="Rpttraits" runat="server" DataSource='<%# Eval("traits") %>'>
                                                <ItemTemplate>
                                           
                                                        <asp:TextBox runat="server" Width="120" ID='txttraits' Text='<%# Container.DataItem %>' />
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </td>
                                        <tr>
                                            <td style="vertical-align:top"><b>Types: </b></td>
                                            <td>
                                                <asp:Repeater ID="Rpttypes" runat="server" DataSource='<%# Eval("types") %>'>
                                                    <ItemTemplate>                                                
                                                            <asp:TextBox ID="txtTypes" runat="server" Width="120" Text='<%# Container.DataItem %>' />                                                
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </td>
                                        </tr>
                                    <tr>
                                        <td style="vertical-align:top"><b>DefenseChart: </b></td>
                                        <td>
                                            <asp:Repeater ID="RptdefenseChart" runat="server" DataSource='<%# Eval("defenseChart") %>'>
                                                <ItemTemplate>                            
                                                        <asp:TextBox ID="txtdefenseChart" runat="server" Width="120" Text='<%# Container.DataItem %>' />
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Mobility: </b></td>
                                        <td><span>
                                            <asp:TextBox ID="txtmobility" runat="server" Width="120" Text='<%# Eval("mobility") %>' /></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Willpower: </b></td>
                                        <td><span>
                                            <asp:TextBox ID="txtwillpower" runat="server" Width="120" Text='<%# Eval("willpower") %>' /></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Resiliance: </b></td>
                                        <td><span>
                                            <asp:TextBox ID="txtresiliance" runat="server" Width="120" Text='<%# Eval("resiliance") %>' /></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Wounds: </b><span></td>
                                        <td>
                                            <asp:TextBox ID="txtwounds" runat="server" Width="120" Text='<%# Eval("wounds") %>' /></span></td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align:top"><b>Actions</b></td>
                                        <td>
                                            <asp:Repeater ID="RptActions" runat="server" DataSource='<%# Eval("actions") %>'>
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <b>Name</b></td>
                                                            <td><span>
                                                                <asp:TextBox ID="txtActionsName" runat="server" Width="120" Text='<%# DataBinder.Eval(Container.DataItem, "name") %>' /></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <b>Type</b></td>
                                                            <td><span>
                                                                <asp:TextBox ID="txtActionsType" runat="server" Width="120" Text='<%# DataBinder.Eval(Container.DataItem, "type") %>' /></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <b>rating</b></td>
                                                            <td><span>
                                                                <asp:TextBox ID="txtActionsRating" runat="server" Width="120" Text='<%# DataBinder.Eval(Container.DataItem, "rating") %>' /></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <b>range</b></td>
                                                            <td><span>
                                                                <asp:TextBox ID="txtActionsRange" runat="server" Width="120" Text='<%# DataBinder.Eval(Container.DataItem, "range") %>' /></span></td>
                                                        </tr>
                                                    </table>     <hr />
                                                </ItemTemplate>
                                            
                                            </asp:Repeater>
                                       
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align:top"><b>Special Abilities</b></td>
                                        <td>
                                            <asp:Repeater ID="RptspecialAbilities" runat="server" DataSource='<%# Eval("specialAbilities") %>'>
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <b>Name</b></td>
                                                            <td><span>
                                                                <asp:TextBox ID="txtSpecialAbilitiesName" runat="server" Width="120" Text='<%# DataBinder.Eval(Container.DataItem, "name") %>' />

                                                                </span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Type</b></td><td>
                                                            <span>
                                                                <asp:TextBox ID="txtSpecialAbilitiesdescription" runat="server" Width="120" Text='<%# DataBinder.Eval(Container.DataItem, "description") %>' /></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <img src="<%# Eval("imageUrl")%>" height="500" width="500" /></td>
                        </tr>
                        <hr />
                    </table>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_click" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
</asp:Content>

