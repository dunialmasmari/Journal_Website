<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="IncompletedMenuScript.aspx.cs" Inherits="journalwebsite.AddFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
				
                <h3>Author</h3>
                
                <ul class="nav side-menu">
					
				  				
                   <li><a><i class="fa fa-edit"></i> Manuscript <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       
                       <li><a href="auhtorguid.aspx">Instructions for authors </a></li>      
                       <li><a href="submit_new_manuscript.aspx">Submit new Manuscript</a></li>  
                       <li><a href="UncompletedMenuScript.aspx">Incomplete Manuscripts</a></li>  
                       <li><a href="SubmittedArticals.aspx">Submitted Manuscripts</a></li>		
                           </ul>
                  </li>				  

                   
                </ul>
              </div>              
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SDSMenusUncombleted" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" DeleteCommand="DELETE FROM [menuscript] WHERE [menuscriptid] = @menuscriptid" InsertCommand="INSERT INTO [menuscript] ([menuscript_title], [menuscriptapstract], [expacted_dateofpublish], [sectionno], [menuscriptstatus], [userid]) VALUES (@menuscript_title, @menuscriptapstract, @expacted_dateofpublish, @sectionno, @menuscriptstatus, @userid)" SelectCommand="SELECT menuscriptid, sectionname, menuscript_title, allstatusdate, menustatusnname, usersname FROM menuscriptview WHERE (usersname = @user ) AND (menustatusnname = 'Uncompleted')" UpdateCommand="UPDATE [menuscript] SET [menuscript_title] = @menuscript_title, [menuscriptapstract] = @menuscriptapstract, [expacted_dateofpublish] = @expacted_dateofpublish, [sectionno] = @sectionno, [menuscriptstatus] = @menuscriptstatus, [userid] = @userid WHERE [menuscriptid] = @menuscriptid">
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
        <SelectParameters>
            <asp:Parameter Name="user" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="menuscript_title" Type="String" />
            <asp:Parameter Name="menuscriptapstract" Type="String" />
            <asp:Parameter Name="expacted_dateofpublish" Type="DateTime" />
            <asp:Parameter Name="sectionno" Type="Int32" />
            <asp:Parameter Name="menuscriptstatus" Type="Int32" />
            <asp:Parameter Name="userid" Type="Int32" />
            <asp:Parameter Name="menuscriptid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
       
                     <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Incomplete Manuscripts</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <asp:GridView ID="GridView1" class="table table-striped table-bordered dt-responsive wrap" width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="menuscriptid" DataSourceID="SDSMenusUncombleted" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                          <Columns>
                      
                              <asp:BoundField DataField="menuscriptid" HeaderText="menuscriptid" ReadOnly="True" SortExpression="menuscriptid" />
                              <asp:BoundField DataField="sectionname" HeaderText="sectionname" SortExpression="sectionname" />
                              <asp:BoundField DataField="menuscript_title" HeaderText="menuscript_title" SortExpression="menuscript_title" />
                              <asp:BoundField DataField="allstatusdate" HeaderText="allstatusdate" SortExpression="allstatusdate" />
                              <asp:BoundField DataField="menustatusnname" HeaderText="menustatusnname" SortExpression="menustatusnname" />
                              <asp:BoundField DataField="usersname" HeaderText="usersname" SortExpression="usersname" />
                           <asp:TemplateField  HeaderText="Action">
                               <ItemTemplate>
                                   <asp:Button ID="Button4" runat="server" Text="Complelete" OnClick="Button4_Click" />
                                 
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
