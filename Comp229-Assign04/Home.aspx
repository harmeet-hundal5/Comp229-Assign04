<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
    <section id="Section1">
    </section>
    <header id="home">
        <div class="row banner">
            <div style="width: 959px; margin: auto">
                <br />
                <div style="width: 100%">Wrath of Kings is a steam-fantasy wargame that gives players five distinctive factions to wage war in Arikania, a savage continent shattered by incredible rivalries. Military doctrines across the factions are as unique as their aesthetics, with savage werewolves, tenacious horrors from the ocean depths, magically empowered samurai, and everything in between&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</div>
                <%-- <ul style="margin-top:7px;"><li style="margin-left:200px">Enter Email to Send json file :<asp:TextBox  ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:Button id="btnEmail" runat="server" Text="Send Email" OnClick="btnEmail_Click"></asp:Button> <asp:Button id="btnCopy" runat="server" Text="Copy Models to new File" OnClick="btnCopy_Click"></asp:Button></li>
             <li style="margin-left:200px"></li>
         </ul>--%>
                <div class="row">
                <div class="column">Enter Email to Send json file :</div>
                <div class="column">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div>
                     <div class="column">
                        <asp:Button ID="btnEmail" runat="server" Text="Send Email" OnClick="btnEmail_Click"></asp:Button>
                    <asp:Button ID="btnCopy" runat="server" Text="Copy Models to new File" OnClick="btnCopy_Click"></asp:Button>
                </div>
               
               <%-- <div class="column">
                    
                </div>--%>
                <%-- </div>--%>
           
                </div>
                <div style="width: 959px; margin: auto">
               <%--     <h3>Games</h3>--%>
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
                                                <td><b>DefenseChart: </b></td>
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
                                    <td style="width: 50%">
                                        <img src="<%# Eval("imageUrl")%>" height="250" width="200" /></td>
                                </tr>
                                <tr>
                                    <td><a href="Models.aspx?name=<%# Eval("name") %>">Select</a></td>
                                </tr>
                                <hr />
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </header>
</asp:Content>

