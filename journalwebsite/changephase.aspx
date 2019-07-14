<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="changephase.aspx.cs" Inherits="journalwebsite.changephase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SDSphase" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" SelectCommand="SELECT * FROM [menustatus]"></asp:SqlDataSource>
      <h2 class="StepTitle">Change Phase</h2>
						 <div class="col-md-12">		
              <div class="row">
                <div class="col-lg-3 text-right ">
                     Menuscript Type:
                </div>
                <div class="col-lg-6"> 
                    <asp:TextBox ID="menutype"   runat="server" Height="35px" Width="200px" Enabled="false"></asp:TextBox>
                    </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                   MenuScript Title:
                </div>
                <div class="col-lg-6"> 
                      <asp:TextBox ID="menutitle"   runat="server" Height="35px" Width="400px" ReadOnly="True"></asp:TextBox>
                </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                    Current Phase:
                </div>
                <div class="col-lg-6"> 
                      
                    <asp:Label ID="currentphase" runat="server" Text="gdfgfdg" ></asp:Label>
                </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                     Select new phase:
                </div>
                <div class="col-lg-6">
                     <asp:DropDownList ID="phase" runat="server" DataSourceID="SDSphase" DataTextField="menustatusnname" DataValueField="menustatusid"></asp:DropDownList>
                     </div> 
              </div>
                                 <br />
                                 <div class="row">
                <div class="col-lg-3 text-right">
                    Comment:
                </div>
                <div class="col-lg-6"> 
                    <asp:TextBox ID="comment"    runat="server" Height="35px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                </div> 
              </div>
                                 <br /> 
                             <asp:Button ID="Done" runat="server" Text="Button" OnClick="Done_Click" CssClass="pull-right"  />
                               <hr />
                              <hr/>
					
						 </div>
    <asp:SqlDataSource ID="SDSAllstatus" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" InsertCommand="INSERT INTO allstatus(menuscriptno, menustatusno, usersno, allstatusdate, allstatuscomments) VALUES (@menuscriptid,@statusno,@userno,@date,@comment)" SelectCommand="SELECT * FROM [allstatus]">
        <InsertParameters>
            <asp:Parameter Name="menuscriptid" />
            <asp:ControlParameter ControlID="phase" Name="statusno" PropertyName="SelectedValue" />
            <asp:Parameter Name="userno" />
            <asp:Parameter Name="date" />
            <asp:ControlParameter ControlID="comment" Name="comment" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSmenustatus" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" DeleteCommand="DELETE FROM [menuscript] WHERE [menuscriptid] = @menuscriptid" InsertCommand="INSERT INTO [menuscript] ([menuscript_title], [menuscriptapstract], [expacted_dateofpublish], [sectionno], [menuscriptstatus], [userid]) VALUES (@menuscript_title, @menuscriptapstract, @expacted_dateofpublish, @sectionno, @menuscriptstatus, @userid)" SelectCommand="SELECT * FROM [menuscript]" UpdateCommand="UPDATE [menuscript] SET  [menuscriptstatus] = @menuscriptstatus WHERE [menuscriptid] = @menuscriptid">
        <DeleteParameters>
            <asp:Parameter Name="menuscriptid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="menuscript_title" Type="String" />
            <asp:Parameter Name="menuscriptapstract" Type="String" />
            <asp:Parameter Name="expacted_dateofpublish" Type="DateTime" />
            <asp:Parameter Name="sectionno" Type="Int32" />
            <asp:Parameter Name="menuscriptstatus" Type="Int32" />
            <asp:Parameter Name="userid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="phase" Name="menuscriptstatus" PropertyName="SelectedValue" Type="Int32" />
            <asp:Parameter Name="menuscriptid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
