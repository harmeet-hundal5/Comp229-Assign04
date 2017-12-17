<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Models.aspx.cs" Inherits="Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
    <div style="width: 959px; margin: auto">

        <asp:Repeater ID="RptAllItems" runat="server">
            <ItemTemplate>
                <table class="tblCustomer" cellpadding="2" cellspacing="0" border="0" width="100%">
                    <tr>
                        <td style="width: 50%">
                            <table>
                                <tr>
                                    <td><b>Name: </b></td>
                                    <td><span><%# Eval("name") %></span></td>
                                </tr>
                                <tr>
                                    <td><b>Faction: </b></td>
                                    <td><span><%# Eval("faction") %></span></td>
                                </tr>
                                <tr>
                                    <td><b>Rank: </b></td>
                                    <td><span><%# Eval("rank")%></span></td>
                                </tr>
                                <tr>
                                    <td><b>Base: </b></td>
                                    <td><span><%# Eval("base")%></span></td>
                                </tr>
                                <tr>
                                    <td><b>Size: </b></td>
                                    <td><span><%# Eval("size")%></span></td>
                                </tr>
                                <tr>
                                    <td><b>DeploymentZone: </b></td>
                                    <td><span><%# Eval("deploymentZone") %></span></td>
                                </tr>
                                <tr>
                                    <td><b>Traits: </b></td>
                                    <td>
                                        <asp:Repeater ID="Rpttraits" runat="server" DataSource='<%# Eval("traits") %>'>
                                            <ItemTemplate>
                                                <span><%# Container.DataItem%></span>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Types: </b></td>
                                    <td>
                                        <asp:Repeater ID="Rpttypes" runat="server" DataSource='<%# Eval("types") %>'>
                                            <ItemTemplate>
                                                <span><%# Container.DataItem%></span>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </td>
                                </tr>

                                <tr>
                                    <td><b>Mobility: </b></td>
                                    <td><span><%# Eval("mobility")%></span></td>
                                </tr>
                                <tr>
                                    <td><b>Willpower: </b></td>
                                    <td><span><%# Eval("willpower") %></span></td>
                                </tr>
                                <tr>
                                    <td><b>Resiliance: </b></td>
                                    <td><span><%# Eval("resiliance")%></span></td>
                                </tr>
                                <tr>
                                    <td><b>Wounds: </b></td>
                                    <td><span><%# Eval("wounds")%></span></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top"><b>DefenseChart: </b></td>
                                    <td>
                                        <table style="width: 50%">
                                            <tr>
                                                <td>
                                                    <asp:Repeater ID="RptdefenseChart" runat="server" DataSource='<%# Eval("defenseChart") %>'>
                                                        <ItemTemplate>
                                                            <span><%# Container.DataItem%></span>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </td>
                                            </tr>
                                        </table>

                                    </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top"><b>Actions</b></td><td>
                            <asp:Repeater ID="RptActions" runat="server" DataSource='<%# Eval("actions") %>'>
                                <ItemTemplate>
                                    <table style="margin-left: 20px">
                                        <tr>
                                            <td><b>Name</b></td>
                                            <td><span><%# DataBinder.Eval(Container.DataItem, "name") %></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Type</b></td>
                                            <td><span><%# DataBinder.Eval(Container.DataItem, "type") %></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Rating</b></td>
                                            <td><span><%# DataBinder.Eval(Container.DataItem, "rating") %></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Range</b></td>
                                            <td><span><%# DataBinder.Eval(Container.DataItem, "range") %></span></td>
                                        </tr>
                                    </table>
                                    <hr />
                                </ItemTemplate>
                            </asp:Repeater>
                         </td>
                        </tr>
                            <tr>
                                <td style="vertical-align:top"><b>Special Abilities</b></td>
                                <td>
                                    <asp:Repeater ID="RptspecialAbilities" runat="server" DataSource='<%# Eval("specialAbilities") %>'>
                                        <ItemTemplate>
                                            <table style="margin-left: 20px">
                                                <tr>
                                                    <td><b>Name</b></td>
                                                    <td><span><%# DataBinder.Eval(Container.DataItem, "name") %></span></td>
                                                </tr>
                                                <tr>
                                                    <td><b>Type</b></td>
                                                    <td><span><%# DataBinder.Eval(Container.DataItem, "description") %></span></td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </td>
                            </tr>
                            <tr>
                                <td><a href="Update.aspx?name=<%# Eval("name") %>">Update</a></td>
                                <td>
                                    <asp:Label ID="lblGameName" runat="server" Text='<%# Eval("name") %>' style="display:none" />
                                   <asp:LinkButton ID="LnkDelete" Text="Delete" runat="server" OnClientClick="return confirm('Do you want to delete this Item?');"
                    OnClick="DeleteItem" />
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
</asp:Content>

