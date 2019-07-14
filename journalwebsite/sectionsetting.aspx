<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="sectionsetting.aspx.cs" Inherits="journalwebsite.sectionsetting" %>
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


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
