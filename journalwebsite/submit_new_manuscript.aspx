<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="submit_new_manuscript.aspx.cs" Inherits="journalwebsite.submit_new_manuscript" %>
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
          <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Submit new Manuscript</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">   
                     
					  <!-- Smart Wizard 
                    <p>This is a basic form wizard example that inherits the colors from the selected scheme.</p>-->
					 <form class="form-horizontal form-label-left" action="http://plus.ubijournal.com/admin/author/savemanuscript" method="post">
					 <input type="hidden" id="manuid" name="manuid" />
      
            
    
    <asp:SqlDataSource ID="SDSsection" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" SelectCommand="SELECT * FROM [section]"></asp:SqlDataSource>
   
    <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="False" class="col-lg-12" OnNextButtonClick="Wizard1_NextButtonClick" ActiveStepIndex="0" FinishCompleteButtonImageUrl="Done" FinishCompleteButtonText="save" OnFinishButtonClick="Wizard1_FinishButtonClick" StartNextButtonText="Save and Continue" CancelButtonType="Button">
  
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
            
                <div id="step-2">
                    <asp:SqlDataSource ID="SDSMenuscript" runat="server" DataSourceMode="DataSet" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" InsertCommand="INSERT INTO menuscript(menuscript_title, menuscriptapstract, expacted_dateofpublish, sectionno, menuscriptstatus, userid) VALUES (@menutitle, @menuapstract, @date, @section, 1, 1)" SelectCommand="SELECT menuscriptid FROM menuscript WHERE (menuscript_title = @title)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_title" Name="menutitle" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_abstract" Name="menuapstract" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_k" Name="date" PropertyName="Text" />
                            <asp:ControlParameter ControlID="sectiond_down1" Name="section" PropertyName="SelectedValue" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txt_title" Name="title" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>

						<h2 class="StepTitle">Submission Details</h2>
                       <div class="red"><p>* Fields are mandatory</p></div>
                          <div class="form-group row">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Article Type <span class="required">*</span>
                            </label>
                              <asp:Label ID="Label5" runat="server"  ></asp:Label>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                               
                             <asp:DropDownList ID="sectiond_down1" runat="server" Width="300px" Height="30px" DataSourceID="SDSsection" DataTextField="sectionname" DataValueField="sectionid"></asp:DropDownList>
              
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="control-label col-md-2 col-sm-2 col-xs-12">Title<span class="required">*</span> <div class="green"><p>[Press ctrl+v for paste]</p></div></label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                               
                                <asp:TextBox ID="txt_title"  runat="server" TextMode="MultiLine"   Width="700px" Height="50px"></asp:TextBox>
                            
                              <!--<div class="summernote" id="summernote1" ></div>
								<input type="hidden" name="title_text" id="title_text" />-->
								<div id="error2" class="red hide" role="alert">
								<strong><i class="fa fa-warning"></i></strong> Title cannot be blank, please enter title.
							  </div>
                            </div>
                          </div>
                          
                          <div class="form-group row">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Abstract* <div class="green"><p>[Press ctrl+v for paste]</p></div> 
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                
								  <asp:TextBox ID="txt_abstract" runat="server" TextMode="MultiLine" Width="700px" Height="200px"></asp:TextBox>
								<div id="errorabs" class="red hide" role="alert">
								<strong><i class="fa fa-warning"></i></strong> Abstract cannot be blank. Please add Abstract.
							  </div>
								<!--<div class="summernote" id="summernote2" ></div>
								<input type="hidden" name="abstract_text" id="abstract_text" />-->
                            </div>
                          </div>
						   <div class="form-group row">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Keywords*
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                             <asp:TextBox ID="txt_k"   runat="server" TextMode="Date" ></asp:TextBox>
                              
							  <div id="errorkey" class="red hide" role="alert">
								<strong><i class="fa fa-warning"></i></strong> Keywords cannot be blank. Please add Keywords.
							  </div>
							  
                            </div>
                          </div>
						<div class="form-group" hidden > <!-- biography sec hidden-->
                            <label  class="control-label col-md-2 col-sm-2 col-xs-12">Biography
                            </label>
                            <div  class="col-md-8 col-sm-8 col-xs-12">
                              <textarea id="biography" name="biography"  class="tags form-control form-control col-md-8 col-xs-12" ></textarea>
							  
                            </div>
                         </div>
                        

                      </div>
                         <hr />

            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                <asp:SqlDataSource ID="SDSitems" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDSfiles" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" DeleteCommand="DELETE FROM [files] WHERE [filesid] = @filesid" InsertCommand="INSERT INTO [files] ([filesname], [itemsno], [menuscriptno]) VALUES (@name, @itemsno, @menuscriptno)" SelectCommand="SELECT itemsname, filesname, menuscriptno FROM fileview WHERE (menuscriptno = @menuno)" UpdateCommand="UPDATE [files] SET [filesname] = @filesname, [itemsno] = @itemsno, [menuscriptno] = @menuscriptno WHERE [filesid] = @filesid">
                    <DeleteParameters>
                        <asp:Parameter Name="filesid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:ControlParameter ControlID="itemd_down" Name="itemsno" PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter Name="menuscriptno" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="menuno" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="filesname" Type="String" />
                        <asp:Parameter Name="itemsno" Type="Int32" />
                        <asp:Parameter Name="menuscriptno" Type="Int32" />
                        <asp:Parameter Name="filesid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                 <div id="step-3">
                        <h2 class="StepTitle">Add Files</h2>
						<div class="green"><p>Please upload file in given format [doc,docx]</p></div>
						<div class="red hide" id="step2error"><p>Please upload article text file</p></div>
                            
						  <div class="form-group row">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">File Type<span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <asp:DropDownList ID="itemd_down" runat="server" DataSourceID="SDSitems" DataTextField="itemsname" DataValueField="itemsid"></asp:DropDownList>
                                  </div>							
                          
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Choose File<span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" /><asp:Label ID="details" runat="server" ></asp:Label>

							  <div id="drop-box" class="green"><p>Select Files</p></div>
                           <span id="display"></span>
                            </div>	
							
                            <div class="col-md-1 col-sm-1 col-xs-12">
                              <asp:Button ID="Button3" runat="server"  Text="Add File" OnClick="Button3_Click" />
                            </div>								
                          </div>
						  <hr/>
						   <h2 class="StepTitle">Submission Files</h2>
						
                              <asp:GridView ID="GridView1" runat="server" DataSourceID="SDSfiles" AutoGenerateColumns="False">
                                  <Columns>
                                      <asp:BoundField DataField="itemsname" HeaderText="itemsname" SortExpression="itemsname" />
                                      <asp:BoundField DataField="filesname" HeaderText="filesname" SortExpression="filesname" />
                                  </Columns>
                        </asp:GridView>
							
                      </div>
          <hr />
               
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 3">
                  <div id="step-4">
                      <asp:SqlDataSource ID="SDSAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" DeleteCommand="DELETE FROM [author] WHERE [authorid] = @authorid" InsertCommand="INSERT INTO [author] ([authorname], [authoremail], [authorphone], [authordegree], [authoraddress], [authorinstitute], [menuscriptno]) VALUES (@authorname, @authoremail, @authorphone, @authordegree, @authoraddress, @authorinstitute, @menuscriptno)" SelectCommand="SELECT * FROM [author] WHERE ([menuscriptno] = @menuscriptno)" UpdateCommand="UPDATE [author] SET [authorname] = @authorname, [authoremail] = @authoremail, [authorphone] = @authorphone, [authordegree] = @authordegree, [authoraddress] = @authoraddress, [authorinstitute] = @authorinstitute, [menuscriptno] = @menuscriptno WHERE [authorid] = @authorid">
                          <DeleteParameters>
                              <asp:Parameter Name="authorid" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:ControlParameter ControlID="AuthorName" Name="authorname" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="AuthorEmail" Name="authoremail" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="AuthorPhone" Name="authorphone" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="AuthorDegree" Name="authordegree" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="AuthoAddress" Name="authoraddress" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="AuthorInstitution" Name="authorinstitute" PropertyName="Text" Type="String" />
                              <asp:Parameter Name="menuscriptno" Type="Int32" />
                          </InsertParameters>
                          <SelectParameters>
                              <asp:Parameter Name="menuscriptno" Type="Int32" />
                          </SelectParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="authorname" Type="String" />
                              <asp:Parameter Name="authoremail" Type="String" />
                              <asp:Parameter Name="authorphone" Type="String" />
                              <asp:Parameter Name="authordegree" Type="String" />
                              <asp:Parameter Name="authoraddress" Type="String" />
                              <asp:Parameter Name="authorinstitute" Type="String" />
                              <asp:Parameter Name="menuscriptno" Type="Int32" />
                              <asp:Parameter Name="authorid" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                         <h2 class="StepTitle">Add Authors</h2>
						 <div class="col-md-12">
							<div id="drop-box2" class="red"></div>
							
        
              <div class="row">
                <div class="col-lg-3 text-right ">
                     Author Name:
                </div>
                <div class="col-lg-6"> 
                    <asp:TextBox ID="AuthorName"   placeholder="Author Name" runat="server" Height="35px" Width="300px"></asp:TextBox>
                    </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                     Email:
                </div>
                <div class="col-lg-6"> 
                      <asp:TextBox ID="AuthorEmail"   placeholder="Email" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                     Phone No.:
                </div>
                <div class="col-lg-6"> 
                     <asp:TextBox ID="AuthorPhone"   placeholder="Phone No." runat="server" Height="35px" Width="300px"></asp:TextBox>
                </div> 
              </div>
                                 <br />
              <div class="row">
                <div class="col-lg-3 text-right">
                     Adress:
                </div>
                <div class="col-lg-6"> 
                   <asp:TextBox ID="AuthoAddress"   placeholder="Adress" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </div> 
              </div>
                                 <br />
                                 <div class="row">
                <div class="col-lg-3 text-right">
                     Degree:
                </div>
                <div class="col-lg-6"> 
                    <asp:TextBox ID="AuthorDegree"   placeholder="Degree" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </div> 
              </div>
                                 <br />
                                 <div class="row">
                <div class="col-lg-3 text-right">
                     Institution:
                </div>
                <div class="col-md-2 col-sm-2 col-xs-12">
                      <asp:TextBox ID="AuthorInstitution"   placeholder="Institution" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </div> 
              </div>
         
                             <asp:Button ID="Addauthor" runat="server" Text="Button" OnClick="Addauthor_Click" />
         
        <hr />
  
      
							 <hr/>
							  <h2 class="StepTitle">Authors List</h2>
							 <br/>
							<div class="col-12">
  <div class="container  m-3">
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="authorid" DataSourceID="SDSAuthor">
          <Columns>
              <asp:BoundField DataField="authorid" HeaderText="authorid" InsertVisible="False" ReadOnly="True" SortExpression="authorid" />
              <asp:BoundField DataField="authorname" HeaderText="authorname" SortExpression="authorname" />
              <asp:BoundField DataField="authoremail" HeaderText="authoremail" SortExpression="authoremail" />
              <asp:BoundField DataField="authorphone" HeaderText="authorphone" SortExpression="authorphone" />
              <asp:BoundField DataField="authordegree" HeaderText="authordegree" SortExpression="authordegree" />
              <asp:BoundField DataField="authoraddress" HeaderText="authoraddress" SortExpression="authoraddress" />
              <asp:BoundField DataField="authorinstitute" HeaderText="authorinstitute" SortExpression="authorinstitute" />
              <asp:BoundField DataField="menuscriptno" HeaderText="menuscriptno" SortExpression="menuscriptno" />
          </Columns>
      </asp:GridView>
      </div>
          </div>
						 </div>
						 
                      </div>
          <hr />
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
                      
                      
                <!-- End SmartWizard Content -->
					 </form>
                  </div>
                </div>
              </div>
            </div>       
           
</asp:Content>


