<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="ReviewerSection.aspx.cs" Inherits="journalwebsite.ReviewerSection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
				
                <h3>Reviewer</h3>
                
                <ul class="nav side-menu">
					
				  				
                   <li><a><i class="fa fa-edit"></i> Manuscript <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       
                       <li><a href="reviewer/new_manuscript.html">Reviewer Section</a></li>
                       <!-- Reviewer section hidden from admin home -->  
					   <li><a href="admin/withReviewer.html">With Reviewer </a></li>        

                    </ul>
                  </li>				  
			
                   
				 
                </ul>
              </div>              
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                  
					    <!--ul class="pagination pagination-split" style="margin-top:0px;margin-bottom:0px">  
					<li ><a  >SUBMITTED <b>(0)</b></a></li>
						  <li ><a >IN REVISION <b>(0)</b></a></li>
						  <li ><a>IN REVIEW <b>(0)</b></a></li>
						  <li ><a>ACCEPTED <b>(0)</b></a></li>
						  <li ><a>REJECTED <b>(0)</b></a></li>
						  <li ><a>PUBLISHED <b>(0)</b></a></li>
						                          </!--ul-->
            
                      \     
                               </div>
                  <div class="x_content">
					    
                      <asp:GridView ID="GridView1"  class="table table-striped table-bordered dt-responsive wrap" width="100%" OnRowCommand="GridView1_RowCommand" runat="server" DataSourceID="SDSMenus"  AutoGenerateColumns="False" DataKeyNames="menuscriptid" AllowPaging="True"  >
                          <Columns>
                               
                              
                              <asp:BoundField DataField="menuscriptid" HeaderText="MenuScript No." ReadOnly="True" SortExpression="menuscriptid"  />
                             
                                <asp:BoundField DataField="sectionname" HeaderText="Type" SortExpression="sectionname" />
                              <asp:BoundField DataField="menuscript_title" HeaderText="Title" SortExpression="menuscript_title" />
                              <asp:BoundField DataField="allstatusdate" HeaderText="Submission Date" SortExpression="allstatusdate"  />
                              <asp:BoundField DataField="menustatusnname" HeaderText="Current Status" SortExpression="menustatusnname" />
                              <asp:TemplateField  HeaderText="Action">
                                   <ItemTemplate>
                                       <asp:Button ID="Button1" runat="server" Text="Change Phase" OnClick="Button1_Click" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                   </ItemTemplate>
                              </asp:TemplateField> 
                            
                          </Columns>
                                        
                                         </asp:GridView>
                      
                  </div>
                </div>
              </div>
            </div>
    
    
          
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
