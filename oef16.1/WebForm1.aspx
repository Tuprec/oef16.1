<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="oef16._1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Wilt u u inschrijven voor de nieuwsbrief van https://www.c-sharp.be ?</h3>

        </div>
        <asp:RadioButton ID="rbtnJa" runat="server" OnCheckedChanged="rbtnJa_CheckedChanged" Text="Ja" groupname="antwoord"/>
        <br />
        <asp:RadioButton ID="rbtnNee" runat="server" OnCheckedChanged="rbtnNee_CheckedChanged" Text="Nee" groupname="antwoord"/>
        <br />
        <asp:Label ID="lblBedankt" runat="server" Text="Toch bedankt!!!" Visible="False"></asp:Label>
        <br />
        <asp:Image ID="LOGO" runat="server" Height="137px" ImageUrl="~/IMAGES/Logo.png" Visible="False" />
        <asp:Button ID="btnKeuze" runat="server" Text="Verstuur keuze" />
        <br />
        <br />
    </form>
    <form visible="False" id="formsinschrijving" runat="server">
        <fieldset id="Naam">
                    <legend>Name</legend>            
                    <label>Voornaam:</label>
                     <asp:TextBox ID="txtVnaam" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="&lt;-- this field is required    " ControlToValidate="txtVnaam" Display="Dynamic" style="font-weight: 700"></asp:RequiredFieldValidator>
                    <label>achternaam:</label>
                    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="&lt;-- this field is required    " ControlToValidate="txtNaam" Display="Dynamic" style="font-weight: 700"></asp:RequiredFieldValidator>
       </fieldset>
       <fieldset id="Contact_gegevens">
                    <legend>Contact gegevens</legend>
                    <label>Email Adres: </label>
                    <asp:TextBox ID="txtEMAIL" runat="server"></asp:TextBox>    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="&lt;-- this field is required    " ControlToValidate="txtEMAIL" Display="Dynamic" style="font-weight: 700"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEMAIL" Display="Dynamic" ErrorMessage="Een email bevat een @" style="font-weight: 700" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </fieldset>
        <asp:Button ID="btnsubmit" runat="server" Text="VERSTUUR" type ="submit" OnClick="btnsubmit_Click"/>
    </form>
    
    <form visible="False" id="frmbedankt" runat="server">
        <asp:Label ID="lblBedanking" runat="server" Text="Bedankt voor uw inschrijving vorr de nieuwsbrief van https://www.c-sharp.be "></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="137px" ImageUrl="~/IMAGES/Logo.png" Visible="True" />
        <br />
        <asp:Label ID="lblgegevens" runat="server" Text="Gegevens:"></asp:Label>
        <br />
        <asp:Label ID="naam" runat="server" Font-Bold="True"></asp:Label>
        <br />
        <asp:Label ID="Vnaam" runat="server" Font-Bold="True"></asp:Label>
        <br />
        <asp:Label ID="email" runat="server" Font-Bold="True"></asp:Label>
    </form>
</body>
</html>
