<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddTask.aspx.cs" Inherits="AddTask" validateRequest="false" EnableEventValidation="false"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  
    <title>Task</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style16"  colspan="7" align="center">
                    &nbsp; &nbsp; CREATE TASK
                </td>
            </tr>
            <tr>
                <td class="style60" rowspan="10">
                    &nbsp;</td>
                <td class="style30" rowspan="10">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" Caption="Tasks for today!" 
                        CellPadding="4" DataSourceID="TaskToday" ForeColor="Black" 
                        GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" 
                        BorderStyle="None" BorderWidth="1px" Height="208px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="TaskName" HeaderText="TaskName" 
                                SortExpression="TaskName" />
                            <asp:BoundField DataField="DueDate" HeaderText="DueDate" 
                                SortExpression="DueDate" />
                            <asp:BoundField DataField="TaskComs" HeaderText="TaskComs" 
                                SortExpression="TaskComs" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
                <td class="style51" rowspan="8">
                    &nbsp;</td>
                <td class="style59">
                    &nbsp;</td>
                <td class="style54">
                    &nbsp;</td>
                <td class="style40">
                    &nbsp;</td>
                <td rowspan="7">
                    &nbsp;&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black"
                        DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black"
                        Height="41px" NextPrevFormat="ShortMonth" TitleFormat="Month" 
                        Width="271px" style="margin-left: 0px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333"
                            Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
                            ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White"
                            Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" BorderStyle="Double" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style59">
                    &nbsp;</td>
                <td class="style54">
                    &nbsp;</td>
                <td class="style40">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style59">
                    Task Of The Name
                </td>
                <td class="style54">
                    <asp:TextBox ID="txtTaskName" runat="server" Width="204px" CssClass="style2">Terminar  Trabajo</asp:TextBox>
                </td>
                <td class="style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTaskName"
                        ErrorMessage="Task of the Name  Empty." Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style59">
                    Start Date
                </td>
                <td class="style54">
                    <asp:TextBox ID="txtStartDate" runat="server" ToolTip="Insert Start Date">16-01-2013</asp:TextBox>
                </td>
                <td class="style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStartDate"
                        ErrorMessage="Start Date Empty." Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToCompare="txtDueDate" ControlToValidate="txtStartDate" 
                        ErrorMessage="Start Date Greather than DueDate" Font-Bold="True" 
                        ForeColor="Red" Operator="LessThan" Type="Date">**</asp:CompareValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style59">
                    Due Date
                </td>
                <td class="style54">
                    <asp:TextBox ID="txtDueDate" runat="server">19-01-2013</asp:TextBox>
                </td>
                <td class="style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDueDate"
                        ErrorMessage="Due Date Empty." Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtStartDate" ControlToValidate="txtDueDate" 
                        ErrorMessage="Due Date Less Than Start Date" Font-Bold="True" ForeColor="Red" 
                        Operator="GreaterThan" Type="Date">**</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style58">
                    Complete Date
                </td>
                <td class="style55">
                    <asp:TextBox ID="txtCompDate" runat="server">30-01-2013</asp:TextBox>
                </td>
                <td class="style50">
                    &nbsp;
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToCompare="txtDueDate" ControlToValidate="txtCompDate" 
                        ErrorMessage="Complete Date Less Than Due Date" Font-Bold="True" 
                        ForeColor="Red" Operator="GreaterThan" Type="Date">**</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <strong>Task Coments&nbsp; </strong>
                    &nbsp;
                </td>
                <td class="style40">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style26" colspan="2">
                    &nbsp;<asp:TextBox ID="txtTaskComs" runat="server" Height="95px" Width="473px" 
                        Rows="10"></asp:TextBox>
                    &nbsp;
                </td>
                <td class="style41">
                    &nbsp;
                </td>
                <td class="style26">
                    &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        HeaderText="Please Check this Errors:" Height="48px" />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style52">
                    &nbsp;</td>
                <td class="style59">
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" 
                        Text="Agregar" BackColor="#000099" ForeColor="White" />
                </td>
                <td class="style56">
                    <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
                </td>
                <td class="style42">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style52">
                    &nbsp;</td>
                <td class="style23" colspan="2" rowspan="3">
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;
                    </td>
                <td class="style42">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style61">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style52">
                    &nbsp;</td>
                <td class="style42">
                    &nbsp;
                    </td>
                <td class="style47">
                    &nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style62">
                    &nbsp;</td>
                <td class="style31">
                    <asp:ObjectDataSource ID="TaskToday" runat="server" 
                        SelectMethod="ObtenerCatalogo" TypeName="Logica.Log"></asp:ObjectDataSource>
                    </td>
                <td class="style53">
                    &nbsp;</td>
                <td class="style43">
                    &nbsp;
                </td>
                <td class="style28">
                    &nbsp;
                </td>
            </tr>
            </table>
    </div>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="ConnTareasPend" ForeColor="Black" GridLines="Vertical" 
        Width="1190px" Caption="All pending tasks" CaptionAlign="Top">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TaskName" HeaderText="TaskName" 
                SortExpression="TaskName" />
            <asp:BoundField DataField="StartDate" HeaderText="StartDate" 
                SortExpression="StartDate" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" 
                SortExpression="DueDate" />
            <asp:BoundField DataField="TaskComs" HeaderText="TaskComs" 
                SortExpression="TaskComs" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ConnTareasPend" runat="server" 
        SelectMethod="TareasPendientes" TypeName="Logica.Log">
    </asp:ObjectDataSource>
    </form>
</body>
</html>
