
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="RegistrationForm.aspx.cs"
    Inherits="RegistrationForm.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Registration Form</title>

    <style>
        body {
            font-family: "Times New Roman";
            font-size: 14px;
            margin: 0;
            padding: 0;
        }

        .main-container {
            width: 700px;
            margin: 0 auto;
        }

        .heading {
            text-align: center;
            text-decoration: underline;
            font-size: 16px;
            font-weight: bold;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .form-table {
            margin: 0 auto;
            border-collapse: collapse;
        }

        .form-table td {
            padding: 3px;
        }

        .label {
            width: 190px;
            text-align: right;
            padding-right: 10px !important;
        }

        .input {
            width: 190px;
            height: 18px;
            box-sizing: border-box;
        }

        .stream {
            width: 83px;
            height: 22px;
        }

        .error {
            color: red;
            padding-left: 3px;
        }

        .gender-row {
            height: 55px;
        }

        .terms {
            margin-top: 22px;
            margin-left: 8px;
        }

        .buttons {
            text-align: center;
            margin-top: 28px;
        }

        .buttons input {
            margin: 0 8px;
        }

        .result-table {
            border-collapse: collapse;
            margin-top: 32px;
            margin-left: 7px;
        }

        .result-table th {
            background-color: #b7dce8;
            border: 1px solid black;
            padding: 6px 8px;
            text-align: center;
        }

        .result-table td {
            border: 1px solid black;
            padding: 6px 8px;
            text-align: center;
        }

        .error-list {
            margin-top: 25px;
            margin-left: 25px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="main-container">

        <div class="heading">
            REGISTRATION FORM
        </div>

        <!-- Registration Form -->

        <table class="form-table">

            <!-- Name -->
            <tr>
                <td class="label">
                    <asp:Label ID="lblName" runat="server"
                        Text="Name">
                    </asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="txtName"
                        runat="server"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="rfvName"
                        runat="server"
                        ControlToValidate="txtName"
                        ErrorMessage="Name is required"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>


            <!-- Email -->
            <tr>
                <td class="label">
                    <asp:Label ID="lblEmail" runat="server"
                        Text="Email-ID">
                    </asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="txtEmail"
                        runat="server"
                        TextMode="Email"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email-Id is required"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>


            <!-- Phone -->
            <tr>
                <td class="label">
                    <asp:Label ID="lblPhone" runat="server"
                        Text="Phone-No.">
                    </asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="txtPhone"
                        runat="server"
                        TextMode="Phone"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone-No is required"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>


            <!-- Stream -->
            <tr>
                <td class="label">
                    Select your stream
                </td>

                <td>
                    <asp:DropDownList
                        ID="ddlStream"
                        runat="server"
                        CssClass="stream">

                        <asp:ListItem Text="&lt;SELECT&gt;"
                            Value="">
                        </asp:ListItem>

                        <asp:ListItem Text="B.Tech"
                            Value="B.Tech">
                        </asp:ListItem>

                        <asp:ListItem Text="M.Tech"
                            Value="M.Tech">
                        </asp:ListItem>

                        <asp:ListItem Text="BCA"
                            Value="BCA">
                        </asp:ListItem>

                        <asp:ListItem Text="MCA"
                            Value="MCA">
                        </asp:ListItem>

                    </asp:DropDownList>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="rfvStream"
                        runat="server"
                        ControlToValidate="ddlStream"
                        InitialValue=""
                        ErrorMessage="Stream is required"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>


            <!-- Enrollment -->
            <tr>
                <td class="label">
                    Enter Enrollment No.
                </td>

                <td>
                    <asp:TextBox
                        ID="txtEnrollment"
                        runat="server"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="rfvEnrollment"
                        runat="server"
                        ControlToValidate="txtEnrollment"
                        ErrorMessage="Enrollment No. is required"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>


            <!-- Gender -->
            <tr class="gender-row">

                <td class="label">
                    Gender
                </td>

                <td>

                    <asp:RadioButton
                        ID="rbMale"
                        runat="server"
                        GroupName="Gender"
                        Text="Male" />

                    <br />

                    <asp:RadioButton
                        ID="rbFemale"
                        runat="server"
                        GroupName="Gender"
                        Text="Female" />

                </td>

                <td>
                    <asp:CustomValidator
                        ID="cvGender"
                        runat="server"
                        ErrorMessage="Gender is required"
                        ForeColor="Red"
                        Display="Dynamic"
                        OnServerValidate="cvGender_ServerValidate">
                    </asp:CustomValidator>
                </td>

            </tr>


            <!-- Age -->
            <tr>
                <td class="label">
                    Age
                </td>

                <td>
                    <asp:TextBox
                        ID="txtAge"
                        runat="server"
                        TextMode="Number"
                        min="1"
                        max="100"
                        CssClass="input"
                        Width="45px">
                    </asp:TextBox>
                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="rfvAge"
                        runat="server"
                        ControlToValidate="txtAge"
                        ErrorMessage="Age is required"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>

        </table>


        <!-- Terms -->

        <div class="terms">

            <asp:CheckBox
                ID="chkTerms"
                runat="server"
                Text="I agree to the Terms of Service and Privacy Policy." />

            <asp:CustomValidator
                ID="cvTerms"
                runat="server"
                ErrorMessage="Terms must be accepted"
                ForeColor="Red"
                Display="Dynamic"
                OnServerValidate="cvTerms_ServerValidate">
            </asp:CustomValidator>

        </div>


        <!-- Buttons -->

        <div class="buttons">

            <asp:Button
                ID="btnSubmit"
                runat="server"
                Text="Submit"
                OnClick="btnSubmit_Click" />

            <asp:Button
                ID="btnReset"
                runat="server"
                Text="Reset"
                CausesValidation="false"
                OnClick="btnReset_Click" />

        </div>


        <!-- Error Summary -->

        <asp:ValidationSummary
            ID="ValidationSummary1"
            runat="server"
            CssClass="error-list"
            ForeColor="Black"
            HeaderText="" />


        <!-- Result Table -->

        <asp:GridView
            ID="gvStudents"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="result-table"
            Visible="false">

            <Columns>

                <asp:BoundField
                    DataField="Name"
                    HeaderText="Name" />

                <asp:BoundField
                    DataField="Email"
                    HeaderText="Email-ID" />

                <asp:BoundField
                    DataField="Phone"
                    HeaderText="Phone-No." />

                <asp:BoundField
                    DataField="Stream"
                    HeaderText="Stream" />

                <asp:BoundField
                    DataField="Enrollment"
                    HeaderText="Enrollment No." />

                <asp:BoundField
                    DataField="Gender"
                    HeaderText="Gender" />

                <asp:BoundField
                    DataField="Age"
                    HeaderText="Age" />

                <asp:BoundField
                    DataField="Terms"
                    HeaderText="Terms Accepted" />

            </Columns>

        </asp:GridView>

    </div>

</form>

</body>
</html>