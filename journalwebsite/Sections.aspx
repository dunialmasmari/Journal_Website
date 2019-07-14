<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Sections.aspx.cs" Inherits="journalwebsite.Sections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> .card  {margin-top:20px;}
  #list {margin-top:25px; margin-left:20px;}
 .card  a{
      border:solid 1px ;
     
      padding:3px;
   
  }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row col-12">
   
       
  <div class="container  m-3">
      <h3>Research Articals </h3>
    
      <asp:SqlDataSource ID="SDSArticals" runat="server" ConnectionString='<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>' SelectCommand="SELECT * FROM [articalsview]"></asp:SqlDataSource>
      
        <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SDSArticals" >
          <ItemTemplate>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>' SelectCommand="SELECT [authorname] FROM [author] WHERE ([menuscriptno] = @menuscriptno)">
          <SelectParameters>
              <asp:Parameter Name="menuscriptno" Type="Int32"   ></asp:Parameter>
          </SelectParameters>
      </asp:SqlDataSource>
               
               <div class="card bg-white">
          <div class="card-body">
       
      <h6 class="card-subtitle mb-2 text-muted"><%#Eval("sectionname") %></h6>
    <h4 class="card-title text-info"><%#Eval("menuscript_title")%></h4> 
               
      <h6 class="card-subtitle mb-2 text-muted">Date of publish <%#Eval("publishedate") %> </h6>
    <a href="ItemView.aspx?menuscriptid=<%#Eval("menuscriptid") %>" class="card-link">Read Artical</a>
  
  </div>
</div>
                   <asp:HiddenField ID="hfid" Value='<%# Eval("menuscriptid") %>' runat="server" />
                  </ItemTemplate>
          </asp:Repeater>

     
      </div>
            </div>
    
</asp:Content>
