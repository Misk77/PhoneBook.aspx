<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>


<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            </br></br>

            <center>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Green" Text="Phone Book"></asp:Label>
                </center>
            </br></br>

            <table class="table table-hover table-responsive">

                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblContact" runat="server" Text="Contact No. "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContact" runat="server" MaxLength="10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLocation" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" CssClass="btn btn-default btn-success" />
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Enabled="False" OnClick="btnUpdate_Click" Text="Update" class="btn btn-danger btn-default"/>
                    </td>
                </tr>

            </table>
        </div>
        <asp:GridView ID="gridBook" runat="server" class="table table-hover table-responsive">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Default.aspx?id={0}&amp;action=1" HeaderText="Delete" Text="Delete">
                    <ControlStyle ForeColor="Red" />
                </asp:HyperLinkField>
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Default.aspx?id={0}&amp;action=2" HeaderText="Edit" Text="Edit">
                    <ControlStyle ForeColor="Green" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
