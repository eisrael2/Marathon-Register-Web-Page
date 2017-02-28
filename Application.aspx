<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="IsraelHW2.Application" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
    <link rel="stylesheet" type="text/css" href="Style/site1.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            In order to register to the Chicago Marathon, please enter your information below
            </h1>
        <asp:Panel runat="server" ID="pnlForm" Visible="true">
        <h4>
            Please enter your personal information</h4>
        <ul>
        <li>
            First name:
       
             <asp:TextBox runat="server" ID="txtFirstName" AutoCompleteType="FirstName"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        <li>
            Last name:

             <asp:TextBox runat="server" ID="txtLastName" AutoCompleteType="LastName"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        
        <li>
            Address 1:

             <asp:TextBox runat="server" ID="txtAddress1" AutoCompleteType="HomeStreetAddress"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqAdress1" runat="server" ControlToValidate="txtAddress1" ErrorMessage="First Address is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        <li>
            Address 2:

             <asp:TextBox runat="server" ID="txtAddress2" AutoCompleteType="HomeStreetAddress"></asp:TextBox></li>
        <li>
            City:

             <asp:TextBox runat="server" ID="txtCity" AutoCompleteType="HomeCity"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        <li>
            State:

             <asp:TextBox runat="server" ID="txtState" AutoCompleteType="HomeState"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqState" runat="server" ControlToValidate="txtState" ErrorMessage="State is required!" ForeColor="Red"></asp:RequiredFieldValidator></li

        <li>
            Zip Code:

             <asp:TextBox runat="server" ID="txtZipCode" AutoCompleteType="HomeZipCode"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqZipCode" runat="server" ControlToValidate="txtZipCode" ErrorMessage="Zip Code is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        <li>
            Email Address:

             <asp:TextBox runat="server" ID="txtEmailAddress" AutoCompleteType="Email"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ID="EmailAddressTextBox" Text="Invalid Email" ControlToValidate="txtEmailAddress" Display="Dynamic" ValidationExpression='^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$' />
            <asp:RequiredFieldValidator ID="reqEmailAddress" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Email Address is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        </ul>

        <h4>
            Please enter a user name and password</h4> 
        <p>
        Your password must contain:<br /></p>
        <p>

        At least 10 characters</p>
        <h4>
        <li>
        One upper case letter</li>
        <h4>
        <p>
            <li>
        One lower case letter</li><p/>
        <li>
        <p>
        A number</li><p/>
        <li>
        <p>
        A special character (~,!,#,%,^,&,*)</li><p/>
        <li>
        <p>
        Note: Users cannot use the following: at sign (@) or the dollar sign ($)</li><p/>
        </ul>
        <p/>
        <ul>
        <li>
        <h4>
            User name:

            <asp:TextBox runat="server" ID="txtUserName" AutoCompleteType="None"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="UserName is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        <h4>
        <li>
            Password:

            <asp:TextBox runat="server" ID="txtPassword" AutoCompleteType="None"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
        </ul>
            Password:

            <asp:TextBox runat="server" ID="txtPasswordConfirm" AutoCompleteType="None"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPasswordConfirm" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
            <asp:CompareValidator ID="comparePwd" ControlToCompare="txtPasswordConfirm" ControlToValidate="txtPassword" runat="server" ErrorMessage="Passwords must match" ></asp:CompareValidator>
            </ul>
        <h4>
            Please enter your age</h4> 
            <asp:RadioButtonList ID="lstAges" runat="server">
                <asp:ListItem Text="18-30" Value="18-30" />
                <asp:ListItem Text="31-50" Value="31-50" />
                <asp:ListItem Text="50 and older" Value="50+" />
            </asp:RadioButtonList>
            </li>
        <p>
        Note: Runners must be between 18 to 100.<br /></p>
           
        </ul>
        <h4>
            
            <asp:CheckBox ID="chkOffers" runat="server" Text="Would like to receive email about special offers?" />
        </h4>       
    
        <h4>
            How many times have you ran the Chicago Marathon?</h4>
            <asp:RadioButtonList ID="lstRuns" runat="server">
                <asp:ListItem Text="One time" Value="1" />
                <asp:ListItem Text="Two to Four Times" Value="2-4" />
                <asp:ListItem Text="More than five Times" Value="5" />
            </asp:RadioButtonList>
        <h4>
           <br/>

            How long did you train to get ready for the Chicago Marathon?</h4>
            <asp:RadioButtonList ID="lstTrains" runat="server">
                <asp:ListItem Text="One Month" Value="1" />
                <asp:ListItem Text="Two to Four Months" Value="2-4" />
                <asp:ListItem Text="More than five Months" Value="5" />
            </asp:RadioButtonList>
        <h4>
            <br/>

            <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" />
     </asp:Panel>
        <asp:Panel runat="server" ID="pnlThankYou" Visible="false">
            Thank you dear runner for entering your information: <br />
            First Name: <asp:Label runat="server" ID="lblFirstName"> </asp:Label>
            Last Name: <asp:Label runat="server" ID="lblLastName"> </asp:Label>
            Address 1: <asp:Label runat="server" ID="lblAddress1"> </asp:Label>
            Address 2: <asp:Label runat="server" ID="lblAddress2"> </asp:Label>
            City: <asp:Label runat="server" ID="lblCity"> </asp:Label>
            State: <asp:Label runat="server" ID="lblState"> </asp:Label>
            Zip Code: <asp:Label runat="server" ID="lblZipCode"> </asp:Label>
            EmailAddress: <asp:Label runat="server" ID="lblEmailAddress"> </asp:Label>
            User Name: <asp:Label runat="server" ID="lblUserName"> </asp:Label>
            Password: <asp:Label runat="server" ID="lblPassword"> </asp:Label>
            Age: <asp:Label runat="server" ID="lblAge"> </asp:Label>

        </asp:Panel>
    </form>


</body>
</html>
