<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="journalwebsite.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
				
                <h3>Admin</h3>
                  
                <ul class="nav side-menu">
					 <li><a href="dashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard </a></li>				
				 
				 <li><a><i class="fa fa-sitemap"></i> Site Manager <span class="fas fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="sitesetting.aspx">Slider</a></li>                                                                       
                    </ul>
                     
                  </li>
				  				
                   <li><a><i class="fa fa-edit"></i> Manuscript <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       
                     		
                       <li><a href="AdminSection.aspx">Admin Section</a></li>
                                        </ul>
                  </li>				  

				   <li><a><i class="fa fa-desktop"></i>Publisher<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="publisher">Issues</a></li>           
                       <li><a href="publisher/articles">Articles</a></li>   
                    </ul>
                  </li>				
                    <li><a href="Users.aspx"><i class="fa fa-user"></i>Users</a></li>	
                    <li><a href="Subscription.aspx"><i class="fa fa-credit-card"></i>Subscription</a></li>				 
				  
				  <li><a><i class="fa fa-cog"></i>Settings<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                      <li><a href="sectionsetting.aspx">Article Sections</a></li>        
                      
                      <li><a href="Journal.aspx">Journal Details</a></li>					  
                      <li><a href="Subscribers.aspx">Subscribers</a></li>                   
                     
                      <li><a href="guidesetting.aspx"> Instructions to Author</a></li> 						
									  
                    </ul>
                  </li> 
				 
                </ul>
              </div>              
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Submitted Manuscript</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
				  <div class="x_title">
        
				
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>' DeleteCommand="DELETE FROM [users] WHERE [usersid] = @usersid" InsertCommand="INSERT INTO [users] ([usersname], [usersphone], [usersemail], [userspw], [userstypeno]) VALUES (@usersname, @usersphone, @usersemail, @userspw, @userstypeno)" SelectCommand="SELECT        dbo.users.usersid, dbo.users.usersname, dbo.users.usersphone, dbo.users.usersemail, dbo.users.userspw, dbo.usertype.usertypename
FROM            dbo.users INNER JOIN
                         dbo.usertype ON dbo.users.userstypeno = dbo.usertype.usertypeid" UpdateCommand="UPDATE [users] SET [usersname] = @usersname, [usersphone] = @usersphone, [usersemail] = @usersemail, [userspw] = @userspw, [userstypeno] = @userstypeno WHERE [usersid] = @usersid">
                          <DeleteParameters>
                              <asp:Parameter Name="usersid" Type="Int32"></asp:Parameter>
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="usersname" Type="String"></asp:Parameter>
                              <asp:Parameter Name="usersphone" Type="String"></asp:Parameter>
                              <asp:Parameter Name="usersemail" Type="String"></asp:Parameter>
                              <asp:Parameter Name="userspw" Type="String"></asp:Parameter>
                              <asp:Parameter Name="userstypeno" Type="Int32"></asp:Parameter>
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="usersname" Type="String"></asp:Parameter>
                              <asp:Parameter Name="usersphone" Type="String"></asp:Parameter>
                              <asp:Parameter Name="usersemail" Type="String"></asp:Parameter>
                              <asp:Parameter Name="userspw" Type="String"></asp:Parameter>
                              <asp:Parameter Name="userstypeno" Type="Int32"></asp:Parameter>
                              <asp:Parameter Name="usersid" Type="Int32"></asp:Parameter>
                          </UpdateParameters>
                      </asp:SqlDataSource>
 
                     </div>
                  <div class="x_content">
                   
                      <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive wrap" Width="100%" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" DataKeyNames="usersid" DataSourceID="SqlDataSource1">
                          <Columns>
                              <asp:BoundField DataField="usersid" HeaderText="usersid" ReadOnly="True" InsertVisible="False" SortExpression="usersid"></asp:BoundField>
                              <asp:BoundField DataField="usersname" HeaderText="usersname" SortExpression="usersname"></asp:BoundField>
                              <asp:BoundField DataField="usersphone" HeaderText="usersphone" SortExpression="usersphone"></asp:BoundField>
                              <asp:BoundField DataField="usersemail" HeaderText="usersemail" SortExpression="usersemail"></asp:BoundField>
                     
                              <asp:BoundField DataField="usertypename" HeaderText="usertypename" SortExpression="usertypename"></asp:BoundField>
                                   <asp:TemplateField  HeaderText="Action">
                                   <ItemTemplate>
                                       <asp:Button ID="Button1" runat="server" Text="Change Type" OnClick="Button1_Click" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                   </ItemTemplate>
                              </asp:TemplateField> 
                          </Columns>
                      </asp:GridView>  
                  </div>
                </div>
              </div>
            </div>
    
    
          
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
