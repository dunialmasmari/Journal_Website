<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="journalwebsite.ItemView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> 
  #list {margin-top:25px; margin-left:20px;}
 


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="row col-12">
             <asp:Repeater ID="rptrDetails" runat="server" DataSourceID="SqlDataSource1">

<ItemTemplate>
           <div class="container  m-3 ">
       <div id="title" class="container  m-3"  >
   
    
      <h3> <%#Eval("menuscript_title") %></h3>
    <h4 class="card-title text-info">  <%#Eval("sectionname") %></h4>
      <h6 class="card-subtitle mb-2 text-muted">Date of publish <%#Eval("publishedate") %></h6>
           </div>
       <div id="abstract" class="container  m-3">
      <h2> Abstract </h2>
       
    <p class="card-text"> <%#Eval("menuscriptapstract") %></p>
           <h2> Authors </h2>
           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                     <h6 class="card-subtitle mb-2 text-muted">-<%#Eval("authorname") %></h6>
                    
                </ItemTemplate>
           </asp:Repeater>
         
       <a href="<%#Eval("publishedfile") %>"> Download</a>
       </div>
         </div>
              </ItemTemplate>
     </asp:Repeater>  

       </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" SelectCommand="SELECT authorname, authoremail, authorphone, authordegree FROM author WHERE (menuscriptno = @menuscriptno)">
        <SelectParameters>
            <asp:Parameter Name="menuscriptno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>' SelectCommand="SELECT * FROM [View_2] where menuscriptid=@id">
           <SelectParameters>
               <asp:Parameter Name="id" />
           </SelectParameters>
    </asp:SqlDataSource>
        
  
      
</asp:Content>
