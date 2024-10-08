﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practice.aspx.cs" Inherits="Project.practice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .watermark {
            color: grey;
            font-style: italic;
            /*font-family:'hobo std'*/
        }

        /*rating star------------------*/
        .EmptyStar {
            background-image: url('Photo/Empty rating star.png');
            height: 50px;
            width: 50px;
        }

        .FillStar {
            background-image: url('Photo/fill rating.png');
            height: 50px;
            width: 50px;
        }

        .backc {
            background-color: #99FF66;
        }
        /*-----------------------------------*/
        .myPromptcss {
            font-style: italic;
            font-weight: bold;
            font-family: Arial;
            color: purple;
            background-color: lightgray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div>table</div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table border="0">
                        <tr>
                            <th>Name:</th>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Father Name:</th>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                            </th>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

            <%-----------------------------------------------------------------%>
            <div>table</div>
            <table border="1">
                <tr>
                    <th>Name:</th>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Father Name:</th>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                    </th>
                </tr>
            </table>
            <%-------------------------------------------------%>
            <div>two number add table</div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <table border="1">
                        <tr>
                            <th>First Number:</th>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Second Number:</th>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

            <%--Password--------------------------------------------%>
            <div>password strength</div>
            <table border="1">
                <tr>
                    <th>Passwoord:</th>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox9" MinimumLowerCaseCharacters="3" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" MinimumNumericCharacters="3" PreferredPasswordLength="8" />
                    </td>
                </tr>
            </table>

            <%--Filtration(auto complete)----------------------------%>
            <div>Filtration(auto complete)</div>
            <table border="1">
                <tr>
                    <th>Country:</th>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender runat="server" ServicePath="" DelimiterCharacters="" BehaviorID="TextBox8_AutoCompleteExtender" TargetControlID="TextBox8" ID="TextBox8_AutoCompleteExtender" CompletionInterval="100" MinimumPrefixLength="1" ServiceMethod="GetCompletionList"></ajaxToolkit:AutoCompleteExtender>
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Button ID="Button4" runat="server" Text="Button" />
                    </th>
                </tr>
            </table>
            <%-----Alert message in delete-------------------------------------------------------%>
            <div>Alert message in delete</div>
            <table border="1">
                <tr>
                    <th>Id:</th>
                    <td>
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    </td>
                    <th>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <th>Name:</th>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Designation:</th>
                    <td>
                        <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /><ajaxToolkit:ConfirmButtonExtender runat="server" ConfirmText="Are you sure Update" BehaviorID="btnUpdate_ConfirmButtonExtender" TargetControlID="btnUpdate" ID="btnUpdate_ConfirmButtonExtender"></ajaxToolkit:ConfirmButtonExtender>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /><ajaxToolkit:ConfirmButtonExtender runat="server" ConfirmText="Are you sure Delete" BehaviorID="btnDelete_ConfirmButtonExtender" TargetControlID="btnDelete" ID="btnDelete_ConfirmButtonExtender"></ajaxToolkit:ConfirmButtonExtender>
                    </td>
                </tr>
            </table>

            <%--textbox water mark(Placeholder)---------------------------%>
            <div>textbox water mark(Placeholder)</div>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <table border="1">
                        <tr>
                            <th>Name:</th>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                <%--<ajaxToolkit:TextBoxWatermarkExtender runat="server" BehaviorID="TextBox10_TextBoxWatermarkExtender" TargetControlID="TextBox10" ID="TextBox10_TextBoxWatermarkExtender" WatermarkText="Enter full name" WatermarkCssClass="watermark"></ajaxToolkit:TextBoxWatermarkExtender>--%>
                            </td>
                        </tr>
                        <tr>
                            <th>Designation:</th>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                <%--<ajaxToolkit:TextBoxWatermarkExtender runat="server" BehaviorID="TextBox11_TextBoxWatermarkExtender" TargetControlID="TextBox11" ID="TextBox11_TextBoxWatermarkExtender" WatermarkText="Enter the designation" WatermarkCssClass="watermark"></ajaxToolkit:TextBoxWatermarkExtender>--%>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

            <%--Fixed------------ Animation--------DateTime-----------------------------%>
            <div>Fixed photo And any items</div>

            <asp:Panel ID="Panel1" runat="server">
                <asp:Image ID="Image1" ImageUrl="~/Images/study.jpg" Width="100px" Height="100px" runat="server" />
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <ajaxToolkit:AlwaysVisibleControlExtender runat="server" BehaviorID="Label2_AlwaysVisibleControlExtender" TargetControlID="Label2" ID="Label2_AlwaysVisibleControlExtender" HorizontalSide="Right" UseAnimation="False" ScrollEffectDuration="5"></ajaxToolkit:AlwaysVisibleControlExtender>
                        <asp:Timer ID="Timer1" runat="server" Interval="10" OnTick="Timer1_Tick"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>
            <ajaxToolkit:AlwaysVisibleControlExtender runat="server" BehaviorID="Image1_AlwaysVisibleControlExtender" TargetControlID="Image1" ID="Image1_AlwaysVisibleControlExtender" VerticalSide="Middle" HorizontalSide="Right" ScrollEffectDuration="0.5" UseAnimation="False"></ajaxToolkit:AlwaysVisibleControlExtender>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>
            <p>Hello</p>

            <%-----different type of setup character------------------%>
            <div>Different type of use character</div>
            <table>
                <tr>
                    <th>Enter Numbers</th>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" BehaviorID="TextBox12_FilteredTextBoxExtender" TargetControlID="TextBox12" ID="TextBox12_FilteredTextBoxExtender" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Alphabet character both</th>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" BehaviorID="TextBox13_FilteredTextBoxExtender" TargetControlID="TextBox13" ID="TextBox13_FilteredTextBoxExtender" FilterType="LowercaseLetters,UppercaseLetters"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Alphabet character UppercaseLetters</th>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" BehaviorID="TextBox14_FilteredTextBoxExtender" TargetControlID="TextBox14" ID="TextBox14_FilteredTextBoxExtender" FilterType="UppercaseLetters"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Alphabet character LowercaseLetters</th>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" BehaviorID="TextBox15_FilteredTextBoxExtender" TargetControlID="TextBox15" ID="TextBox15_FilteredTextBoxExtender" FilterType="LowercaseLetters"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Alphabet character and Space</th>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" BehaviorID="TextBox16_FilteredTextBoxExtender" TargetControlID="TextBox16" ID="TextBox16_FilteredTextBoxExtender" FilterType="UppercaseLetters, LowercaseLetters" ValidChars=" "></ajaxToolkit:FilteredTextBoxExtender>

                    </td>
                </tr>
                <tr>
                    <th>Alphabet character and number</th>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" FilterType="Numbers,LowercaseLetters,UppercaseLetters" BehaviorID="TextBox17_FilteredTextBoxExtender" TargetControlID="TextBox17" ID="TextBox17_FilteredTextBoxExtender"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Email all character use</th>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" FilterType="Custom,LowercaseLetters,Numbers" InvalidChars="@." BehaviorID="TextBox18_FilteredTextBoxExtender" TargetControlID="TextBox18" ID="TextBox18_FilteredTextBoxExtender"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Decimal number digits and dot</th>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" FilterType="Custom,Numbers" InvalidChars="." BehaviorID="TextBox19_FilteredTextBoxExtender" TargetControlID="TextBox19" ID="TextBox19_FilteredTextBoxExtender"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <th>Money or currency (digits comma and dot)</th>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender runat="server" FilterType="Custom,Numbers" InvalidChars=",." BehaviorID="TextBox20_FilteredTextBoxExtender" TargetControlID="TextBox20" ID="TextBox20_FilteredTextBoxExtender"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
            </table>

            <%--Star Rating---------------------------------%>
            <div>Star Rating</div>
            <table>
                <tr>
                    <td>Rate our website</td>
                    <td>
                        <ajaxToolkit:Rating ID="Rating1" runat="server" AutoPostBack="True" StarCssClass="EmptyStar" FilledStarCssClass="FillStar" EmptyStarCssClass="EmptyStar" WaitingStarCssClass="FillStar" OnClick="Rating1_Click"></ajaxToolkit:Rating>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Visible="false" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

            <%----Drop shadow-------------------------------------------%>
            <div>Drop Shadow</div>
            <asp:Panel ID="Panel2" runat="server">
                <table class="backc" border="1">
                    <tr>
                        <th>FirstName:</th>
                        <td>
                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>LastName:</th>
                        <td>
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <asp:Button ID="Button5" runat="server" Text="Submit" />
                        </th>
                    </tr>
                </table>
            </asp:Panel>
            <ajaxToolkit:DropShadowExtender runat="server" BehaviorID="Panel2_DropShadowExtender" TargetControlID="Panel2" ID="Panel2_DropShadowExtender" Width="10" Radius="20" TrackPosition="False" Rounded="True" Enabled="True" Opacity="0.5"></ajaxToolkit:DropShadowExtender>
            <%------List Search box------------------------------------------------%>
            <br />
            <div>List Search box</div>
            <table>
                <tr>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server" Height="180" Width="200">
                            <asp:ListItem>Watermelon</asp:ListItem>
                            <asp:ListItem>Orange</asp:ListItem>
                            <asp:ListItem>Pear</asp:ListItem>
                            <asp:ListItem>Peach</asp:ListItem>
                            <asp:ListItem>Straberry</asp:ListItem>
                            <asp:ListItem>Raspberries</asp:ListItem>
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>Apricot</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Blue berry</asp:ListItem>
                            <asp:ListItem>Grapes</asp:ListItem>
                            <asp:ListItem>Guava</asp:ListItem>
                            <asp:ListItem>Kivi</asp:ListItem>
                            <asp:ListItem>Mango</asp:ListItem>
                            <asp:ListItem>Custard Apple</asp:ListItem>
                        </asp:ListBox><ajaxToolkit:ListSearchExtender runat="server" BehaviorID="ListBox1_ListSearchExtender" TargetControlID="ListBox1" ID="ListBox1_ListSearchExtender" PromptPosition="Bottom" PromptText="Type to Find" PromptCssClass="myPromptcss"></ajaxToolkit:ListSearchExtender>
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Button" OnClick="Button6_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td><br /><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="180">
                            <asp:ListItem>Watermelon</asp:ListItem>
                            <asp:ListItem>Orange</asp:ListItem>
                            <asp:ListItem>Pear</asp:ListItem>
                            <asp:ListItem>Peach</asp:ListItem>
                            <asp:ListItem>Straberry</asp:ListItem>
                            <asp:ListItem>Raspberries</asp:ListItem>
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>Apricot</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Blue berry</asp:ListItem>
                            <asp:ListItem>Grapes</asp:ListItem>
                            <asp:ListItem>Guava</asp:ListItem>
                            <asp:ListItem>Kivi</asp:ListItem>
                            <asp:ListItem>Mango</asp:ListItem>
                            <asp:ListItem>Custard Apple</asp:ListItem>
                        </asp:DropDownList><ajaxToolkit:ListSearchExtender runat="server" BehaviorID="DropDownList1_ListSearchExtender" TargetControlID="DropDownList1" ID="DropDownList1_ListSearchExtender"></ajaxToolkit:ListSearchExtender>
                    </td>
                </tr>
            </table>

            <%--------Color pikar-----------------------------------------------%>
            <div>Color Pikar</div>
            <table>
                <tr>
                    <th>Color pikar:</th>
                    <td>
                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                        <ajaxToolkit:ColorPickerExtender runat="server" BehaviorID="TextBox23_ColorPickerExtender" TargetControlID="TextBox23" ID="TextBox23_ColorPickerExtender" SampleControlID="Panel3" PopupButtonID="Button7"></ajaxToolkit:ColorPickerExtender>
                        <asp:Button ID="Button7" runat="server" Text="color" />
                    </td>
                </tr>
                <tr>
                    <th>Review:</th>
                    <td>
                        <asp:Panel ID="Panel3" runat="server">
                        </asp:Panel>
                    </td>
                </tr>
            </table>

            <%-------------HTML editor text---------------------------------------------%>
            <br /><br />
            <div>HTML editor text</div>
            <table>
                <tr>
                    <th>html editor</th>
                    <td>
                        <asp:TextBox ID="TextBox24" runat="server" Rows="5" Height="200"></asp:TextBox>
                        <ajaxToolkit:HtmlEditorExtender runat="server" BehaviorID="TextBox24_HtmlEditorExtender" TargetControlID="TextBox24" ID="TextBox24_HtmlEditorExtender" EnableSanitization="False"></ajaxToolkit:HtmlEditorExtender>
                    </td>
                    <td>
                        <asp:Button ID="Button8" runat="server" Text="get formating text " OnClick="Button8_Click" />
                        <asp:Label ID="Label5" runat="server" Text="Label" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
