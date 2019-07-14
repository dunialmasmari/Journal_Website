<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="journalwebsite.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> .container{
     margin-top:20px;
     margin-bottom:20px;
     padding:10px;
 }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container col-4 bg-light">
    <form>
  <fieldset>
   <center> <legend>Create Account</legend></center>
    
    <div class="form-group">
        
          <label class="col-xs-11">UserName</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Username" ValidationGroup="Up"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This TextBox is Required" Display="Dynamic" ControlToValidate="tbUname"></asp:RequiredFieldValidator>
            
            </div>
            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password" ValidationGroup="Up"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPass" Display="Dynamic" ErrorMessage="This TextBox is Required"></asp:RequiredFieldValidator>
                </div>

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password" ValidationGroup="Up"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbCPass" ControlToValidate="tbPass" Display="Dynamic" ErrorMessage="Re-Write password"></asp:CompareValidator>
            </div>

            <label class="col-xs-11">Phone</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPhone" runat="server" Class="form-control" placeholder="Phone Namber" ValidationGroup="Up"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPhone" Display="Dynamic" ErrorMessage="This TextBox is Required"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email" ValidationGroup="Up"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Enter E-mail currect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
         <br />
                 <div class="col-xs-11 space-vert">
                <asp:button id="btSignup" runat="server" class="btn btn-success" text="Sign Up" OnClick="btSignup_Click" ValidationGroup="Up" />
                <br />
               
                <asp:Label ID="lblmg" runat="server"></asp:Label>
               
            </div>
  </fieldset>
</form>
        </div>
   
    <asp:SqlDataSource ID="SDSAddUser" runat="server" ConnectionString="<%$ ConnectionStrings:journalwebsitedbConnectionString2 %>" InsertCommand="INSERT INTO users(usersname, usersphone, usersemail, userspw, userstypeno) VALUES (@uname, @uphone, @uemail, @upw, @utype)" SelectCommand="SELECT * FROM [users]">
        <InsertParameters>
            <asp:ControlParameter ControlID="tbUname" Name="uname" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbPhone" Name="uphone" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbEmail" Name="uemail" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbPass" Name="upw" PropertyName="Text" />
            <asp:Parameter Name="utype" />
        </InsertParameters>
       </asp:SqlDataSource>
</asp:Content>
