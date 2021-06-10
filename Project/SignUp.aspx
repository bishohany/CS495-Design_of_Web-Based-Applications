<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        string strInsert = "INSERT INTO Student " +
            " VALUES('" + txtStudentId.Text + "', '"
            + txtFName.Text + "', '"
            + txtMName.Text + "', '"
            + txtMMName.Text + "', '"
            + txtLName.Text + "', '"
            + txtbirth.Text + "', '"
            + txtFNameE.Text + "', '"
            + txtMNameE.Text + "', '"
            + txtMMNameE.Text + "', '"
            + txtLNameE.Text + "', '"
            + txtNID.Text + "', '"
            + DDLC.SelectedValue + "', '"
            + rbGender.SelectedValue + "', '"
            + txtDegree.Text + "', '"
            + txtmob1.Text + "', '"
            + txtmob2.Text + "', '"
            + txtphone.Text + "', '"
            + ddlMajor.SelectedValue + "', '"
            + txtEmail.Text + "', '"
            + txtPassword.Text + "')";
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        conn.Open();
        cmdInsert.ExecuteNonQuery();
        conn.Close();
        if (photo.HasFile)
            photo.SaveAs(Server.MapPath("SNID") + "\\" + txtNID.Text + ".jpg");
        lblMsg.Text = "Welcome " + txtFNameE.Text + " " + txtMNameE.Text + " " + txtMMNameE.Text + " " + txtLNameE.Text + " Your Account has been successfully created!!";
        clear();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        clear();
        lblMsg.Text = "The Function has been executed!!";
    }
    void clear()
    {
        txtStudentId.Text = "";
        txtFNameE.Text = "";
        txtMNameE.Text = "";
        txtMMNameE.Text = "";
        txtLNameE.Text = "";
        txtbirth.Text = "";
        txtFName.Text = "";
        txtMName.Text = "";
        txtMMName.Text = "";
        txtLName.Text = "";
        txtNID.Text = "";
        DDLC.SelectedValue = "S.A";
        rbGender.SelectedValue = "M";
        txtDegree.Text = "";
        txtmob1.Text = "";
        txtmob2.Text = "";
        txtphone.Text = "";
        ddlMajor.SelectedValue = "CS&IT";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text = "";
        txtFNameE.Focus();
    }


    protected void ddlMajor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #ffe3da;
            /*/*background-image:src(Images/bg.jpg);*/
            /*background-image:url('Images/bg.jpg');
            background-repeat: no-repeat;*/
        }
        .auto-style2 {
            width: 335px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            height: 69px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style9 {
            height: 26px;
            width: 396px;
        }
        .auto-style10 {
            width: 396px;
        }
        .auto-style11 {
            height: 29px;
            width: 396px;
        }
        .auto-style13 {
            width: 137px;
        }
        .auto-style14 {
            height: 29px;
            width: 137px;
        }
        .auto-style18 {
            width: 137px;
            height: 26px;
        }
        .auto-style19 {
            height: 37px;
        }
        .auto-style22 {
            height: 23px;
        }
        .auto-style23 {
            width: 396px;
            height: 23px;
        }
        .auto-style24 {
            width: 137px;
            height: 23px;
        }
        .auto-style25 {
            height: 30px;
        }
        .auto-style26 {
            width: 396px;
            height: 30px;
        }
        .auto-style27 {
            width: 137px;
            height: 30px;
        }
        .auto-style28 {
            height: 26px;
            width: 335px;
        }
        .auto-style29 {
            height: 29px;
            width: 335px;
        }
        .auto-style30 {
            height: 30px;
            width: 335px;
        }
        .auto-style31 {
            height: 23px;
            width: 335px;
        }
        .auto-style32 {
            height: 37px;
            width: 335px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7" colspan="4">
                    <center>
                    <asp:Image ID="Image1" runat="server" src="Images/bg.jpg"  Width="50%"/>

                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4">
                    <center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#CC0000" Text="Sign Up Form"></asp:Label>
                </center>

                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="4"><center>
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Blackadder ITC" Font-Size="Medium" ForeColor="#CC0000" style="font-size: x-large" Text="Please fill in all fields then click on register:"></asp:Label>
                </center></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    &nbsp;<asp:Label ID="lblFirstName" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style6" colspan="3">
                    <asp:TextBox ID="txtFNameE" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFNameE" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFNameE" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    <br />
                    e.g.Xxxx<br />
                    <asp:TextBox ID="txtMNameE" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtMNameE" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMNameE" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    <br />
                    e.g.Xxxx<br />
                    <asp:TextBox ID="txtMMNameE" runat="server" Width="70%"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMMNameE" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    <br />
                    e.g.Xxxx<br />
                    <asp:TextBox ID="txtLNameE" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtLNameE" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtLNameE" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    <br />
                    e.g.Xxxx</td>
            </tr>
            <tr>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLastName" runat="server" Text="الاسم"></asp:Label>
                </td>
                <td class="auto-style6" colspan="3">
                    <asp:TextBox ID="txtFName" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFName" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtFName" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([ا-ي]*)"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtMName" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtMName" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtMName" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([ا-ي]*)"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtMMName" runat="server" Width="70%"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtMMName" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([ا-ي]*)"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtLName" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtLName" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtLName" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="([ا-ي]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="208px">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="lblMajor" runat="server" Text="Faculty"></asp:Label>
                </td>
                <td class="auto-style3" colspan="3">
                    <asp:DropDownList ID="ddlMajor" runat="server" Width="70%" OnSelectedIndexChanged="ddlMajor_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="CS&amp;IT">Computers and Information Technology</asp:ListItem>
                        <asp:ListItem Value="Ph">Pharmacy</asp:ListItem>
                        <asp:ListItem>Oral and Dental MedicinePharmacy</asp:ListItem>
                        <asp:ListItem Value="E&amp;T">Engineering and Technology</asp:ListItem>
                        <asp:ListItem Value="E&amp;BS">Economics and Political Science</asp:ListItem>
                        <asp:ListItem Value="C&amp;BA">Commerce and Business Administration</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style5" colspan="3">
                    <asp:TextBox ID="txtEmail" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtEmail" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <span class="auto-style6">e.g. user@domain.comain.comcom</span></td>
            </tr>
            <tr>
                <td class="auto-style29">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblStudentId" runat="server" Text="Student Id"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtStudentId" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtStudentId" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtStudentId" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="[2][0]\d{6}"></asp:RegularExpressionValidator>
                    <br />
                    <span class="auto-style6">e.g. 20132627</span></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="lblLastName4" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style3" colspan="3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Not Match" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">
                    <asp:Label ID="Label3" runat="server" Text="National ID"></asp:Label>
                </td>
                <td class="auto-style25" colspan="3">
                    <asp:TextBox ID="txtNID" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtNID" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmPassword0" runat="server" Text="Birth Date"></asp:Label>
                </td>
                <td class="auto-style6" colspan="3">
                    <asp:TextBox ID="txtbirth" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtbirth" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="txtbirth" ErrorMessage="wrong" Font-Italic="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="(19|20)\d\d[-/ .](0[1-9]|1[012])[-. /](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                    <br />
                    (YYYY MM DD) (YYYY.MM.DD) (YYYY/MM/DD) (YYYY-MMDD)</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmPassword1" runat="server" Text="Mobile 1"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtmob1" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtmob1" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmPassword2" runat="server" Text="Mobile 2"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtmob2" runat="server" Width="70%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmPassword3" runat="server" Text="Phone"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtphone" runat="server" Width="70%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="lblConfirmPassword5" runat="server" Text="Certificate"></asp:Label>
                </td>
                <td class="auto-style22" colspan="3">
                    <asp:DropDownList ID="DDLC" runat="server" Width="70%">
                        <asp:ListItem Value="S.A">الثانوية العامة</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">
                    <asp:Label ID="lblConfirmPassword6" runat="server" Text="Degree"></asp:Label>
                </td>
                <td class="auto-style25" colspan="3">
                    <asp:TextBox ID="txtDegree" runat="server" Width="70%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtDegree" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style27">
                    &nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="lblConfirmPassword7" runat="server" Text="Student Personal Photo"></asp:Label>
                </td>
                <td class="auto-style22" colspan="3">
                    <asp:FileUpload ID="photo" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="photo" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" BackColor="#FFFFCC" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="Medium" ForeColor="#FF3300" Height="90%" Width="90%" />
                </td>
                <td class="auto-style19" colspan="3">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" BackColor="#FFFFCC" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="Medium" ForeColor="#FF3300" Height="90%" Width="90%" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
        </center>
</body>
</html>