<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="site.aspx.cs" Inherits="journalwebsite.site" %>
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
                      <li><a href="site.aspx">Slider</a></li>                                                                       
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
                    <li><a href="admin/users"><i class="fa fa-user"></i>Users</a></li>	
                    <li><a href="admin/subscription.html"><i class="fa fa-credit-card"></i>Subscription</a></li>				 
				   <li><a href="admin/login_history.html"><i class="fa fa-sign-in"></i>Login History</a></li>				 
				  
				  <li><a><i class="fa fa-cog"></i>Settings<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="http://plus.ubijournal.com/admin/settings.html">Article Subjects</a></li>  
                      <li><a href="settings/articletype.html">Article Type</a></li>        
                     
                      <li><a href="http://plus.ubijournal.com/admin/settings/submissionchecklist">Submission Checklist</a></li>                     
                      <li><a href="settings/company_details.html">Journal Details</a></li>					  
                      <li><a href="settings/subscriber.html">Subscribers</a></li>                   
                    
                      <li><a href="http://plus.ubijournal.com/admin/settings/author_ins"> Instructions to Author</a></li> 						
									  
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
                    <h2>Site Manager</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
				  <div class="x_title">
               
			
  
                      </div>
                  <div class="x_content">
					    
                  
                  </div>
                </div>
              </div>
            </div>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
