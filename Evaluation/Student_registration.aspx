<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Student_registration.aspx.cs" Inherits="Exam_pro.Student_registration" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
                                        <form id="form1" runat="server">
                                            
                                            <div class="form-floating">
                                                   <p>Register No</p>
                                               <asp:TextBox ID="reg" class="form-control"  placeholder="Register No" runat="server" ></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="reg" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>   
                                                <p>Name</p>
                                                <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox> 
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Cannot be empty" ForeColor="Red" OnDataBinding="Button1_Click"></asp:RequiredFieldValidator>
                                                   <br />
                                                   <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                                                   <br />
                                                   Upload Profile Picture<br />
                                                <asp:FileUpload ID="FileUpload1"  class="form-control" runat="server" />
                                                   <br />
                                                <asp:DropDownList class="form-control" ID="age" runat="server">
                                                     <asp:ListItem>AGE</asp:ListItem>
                                                 </asp:DropDownList>
                                                <p>Email</p>
                                            <asp:TextBox ID="email" class="form-control" type="email" placeholder="name@example.com" runat="server"></asp:TextBox> 
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Cannot be empty" ForeColor="Red" OnDataBinding="Button1_Click"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="error email" ForeColor="Red" ValidationExpression=[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$></asp:RegularExpressionValidator>
                                                <p>Enter Your Ph No</p>
                                                <asp:TextBox ID="Ph" class="form-control"  placeholder="Enter Your Ph No" runat="server" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Ph" ErrorMessage="Cannot be empty" ForeColor="Red" OnDataBinding="Button1_Click"></asp:RequiredFieldValidator>
                                              <p>Class</p>
                                                <asp:DropDownList class="form-control" ID="class" runat="server">
                                                    <asp:ListItem>1st,year</asp:ListItem>
                                                    <asp:ListItem>2nd,year</asp:ListItem>
                                                    <asp:ListItem>3rd,year</asp:ListItem>
                                                   </asp:DropDownList>
                                                        &nbsp;</div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                    <asp:TextBox ID="pass" class="form-control" placeholder="Create a password" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="conpass" class="form-control" placeholder="Confirm password" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pass" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conpass" ErrorMessage="Password dont match" ForeColor="Red"></asp:CompareValidator>
                                                        <label for="inputPasswordConfirm">Confirm Password</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mt-4 mb-0">
                                                            <asp:Button ID="Button1" class="btn btn-primary btn-block,d-grid"  runat="server" Text="Create Account" OnClick="Button1_Click" Width="594px" />
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="Login.aspx">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

