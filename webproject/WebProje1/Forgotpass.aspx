<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpass.aspx.cs" Inherits="WebProje1.Forgotpass" %>

<hr>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                              
                              <form class="form" runat="server">
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                      
                                     <asp:TextBox ID="TextBox1" runat="server" placeholder="Email adresiniz"></asp:TextBox>
                                        <br />
                                        <asp:Button ID="Button1" runat="server" Text="Kodu Gönder" OnClick="Button1_Click1" />
                                        <br />
                                        <br />
                                        <br />
                                    </div>
                                  </div>
                                  <div class="form-group">
                                  </div>
                                </fieldset>
                              </form>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>