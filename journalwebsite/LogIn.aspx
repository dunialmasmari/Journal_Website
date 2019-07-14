<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="journalwebsite.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> .container{
     margin-top:20px;
     margin-bottom:20px;
     padding:10px;
 }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container col-5 bg-light">
       <div class="form-horizontal">
    <legend>Log In</legend>
    
        <div class="form-group">
           <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
           <div class="col-md-10">
              <asp:TextBox ID="UserName" CssClass="form-control"  runat="server" ValidationGroup="In"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group">
          <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
          <div class="col-md-10">
               <asp:TextBox ID="Password" CssClass="form-control"  runat="server" TextMode="Password" ValidationGroup="In"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
          </div>
        </div>
        <div class="form-group">
           <div class="col-md-2"></div>
              <div class="col-md-6">
                 <asp:CheckBox ID="chkDontForget" runat="server"  />
                 <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember Me"></asp:Label>
               </div>
           </div>
     
    <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success" OnClick="Button1_Click" ValidationGroup="In" />
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group"> 
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:LinkButton ID="lbForgotPass" runat="server" style="color:crimson" PostBackUrl="#">Click here if you Forgot Password </asp:LinkButton>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:label ID="lblError" runat="server" CssClass="text-danger"></asp:label>  
                    </div>
                </div>
                

  </div>
        </div>
</asp:Content>
