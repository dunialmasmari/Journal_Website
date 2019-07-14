<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="journalwebsite.EditUser" %>
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

    <div class="col-md-12">		
              <div class="row">
                <div class="col-lg-3 text-right ">
                     User No.:
                </div>
                <div class="col-lg-6"> 
                    <asp:TextBox ID="no"   runat="server" Height="35px" Width="200px" Enabled="false"></asp:TextBox>
                    </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                  User Name:
                </div>
                <div class="col-lg-6"> 
                      <asp:TextBox ID="name"   runat="server" Height="35px" Width="400px" ReadOnly="True"></asp:TextBox>
                </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                    Current Type:
                </div>
                <div class="col-lg-6"> 
                      
                    <asp:Label ID="currenttype" runat="server" Text="gdfgfdg" ></asp:Label>
                </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                     Select new Type:
                </div>
                <div class="col-lg-6">
                    <asp:DropDownList ID="Type" runat="server" DataSourceID="SDSType" DataTextField="usertypename" DataValueField="usertypeid"></asp:DropDownList>
                     </div> 
              </div>
                                 <br />
                               
                             <asp:Button ID="Done" runat="server" Text="Button" onClick="Done_Click" CssClass="pull-right"  />
                               <hr />
                              <hr/>
					
						 </div>
    <asp:SqlDataSource ID="SDSType" runat="server" ConnectionString='<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>' SelectCommand="SELECT * FROM [usertype]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSuser" runat="server" ConnectionString='<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>' DeleteCommand="DELETE FROM [users] WHERE [usersid] = @usersid" InsertCommand="INSERT INTO [users] ([usersname], [usersphone], [usersemail], [userspw], [userstypeno]) VALUES (@usersname, @usersphone, @usersemail, @userspw, @userstypeno)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET   [userstypeno] = @userstypeno WHERE [usersid] = @usersid">
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
            <asp:ControlParameter ControlID="Type" Name="userstypeno" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="no" Name="usersid" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
