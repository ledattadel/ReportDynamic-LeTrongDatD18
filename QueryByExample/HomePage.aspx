<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="QueryByExample.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link rel="stylesheet" href="/Content/main.css" type="text/css" />
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
<script src="~/Scripts/jquery-3.3.1.min.js"></script>
<script src="~/Scripts/bootstrap.min.js"></script>




    <style>

.chkChoice input 
{ 
    margin-top: 20px
}
.chkChoice td 
{ 
    padding-top: 20px; 
}
.main{
    
}
    </style>
    <div id="header" class="header">
        <label class="field field_v1">
       
        <asp:TextBox ID="TextBoxNhapTieuDe"  runat="server" class="field__input" placeholder="VD: Báo cáo ..."></asp:TextBox>
           <span class="field__label-wrap">
      <span class="field__label" style="color:palegoldenrod">Nhập tiêu đề báo cáo:</span>
    </span>   	
    </div>
    <div id="main">
    	
	




        <div id="table-content" class="table-content">
            <asp:Panel ID="PanelChonBang"  class="PanelChonBang card card-1" runat="server" >
                <asp:Label ID="LabelChonBang" runat="server" Text="Chọn bảng: "></asp:Label>
                <asp:CheckBoxList  ID="CheckBoxListTable" runat="server" Height="20px" OnSelectedIndexChanged="CheckBoxListTable_SelectedIndexChanged" Width="500px">
                </asp:CheckBoxList>
            </asp:Panel>



        </div>
        <div id="column-content" >
            <asp:Panel ID="PanelChonCot" class="choncot"  runat="server" BackColor="Black" ForeColor="White">
                <br />
                <asp:Label ID="LabelChonCot" runat="server" Text="Chọn cột: "></asp:Label>
                <br />
                <asp:CheckBoxList ID="CheckBoxListColumn" runat="server" Height="10px" CellSpacing="30" CssClass="chkChoice" OnSelectedIndexChanged="CheckBoxListColumn_SelectedIndexChanged" Width="100%" CellPadding="100">
                </asp:CheckBoxList>
                <br />
                <asp:Button class="button-css button-17" ID="ButtonClearColumn" runat="server" OnClick="ButtonClearColumn_Click" Text="Bỏ chọn hết các cột" />
                <br />
            </asp:Panel>
        </div>
        <div id="query-content">
            <asp:Panel ID="PanelGridViewColumn" runat="server" BackColor="Orange" ForeColor="Black">
                <asp:GridView ID="GridView1" runat="server" BackColor="White"  BorderColor="#CCCCCC" Width="100%" BorderWidth="1px" CellPadding="3" Height="16px" >
                    <Columns>
                        <asp:TemplateField HeaderText="Hàm" >
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" Width="100%" runat="server">
                                    <asp:ListItem Text="Non_Selected" Value=""></asp:ListItem>
                                    <asp:ListItem Text="COUNT" Value="COUNT"></asp:ListItem>
                                    <asp:ListItem Text="MIN" Value="MIN"></asp:ListItem>
                                    <asp:ListItem Text="MAX" Value="MAX"></asp:ListItem>
                                    <asp:ListItem Text="SUM" Value="SUM"></asp:ListItem>
                                    <asp:ListItem Text="AVG" Value="AVG"></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>






                        <asp:TemplateField HeaderText="Sắp xếp" >
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" Width="100%" runat="server">
                                    <asp:ListItem Text="Non_Selected" Value=""></asp:ListItem>
                                    <asp:ListItem Text="SORT ASC" Value="ASC"></asp:ListItem>
                                    <asp:ListItem Text="SORT DESC" Value="DESC"></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>



                       


                        <asp:TemplateField HeaderText="Điều Kiện">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBoxDieuKien" Width="98%" runat="server"></asp:TextBox>
                            </ItemTemplate>



                        </asp:TemplateField>

                          <asp:TemplateField HeaderText="GROUP BY">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="CheckBoxGroupBy" runat="server" />  
                    </EditItemTemplate>  
                               <ItemTemplate>  
                        <asp:CheckBox ID="CheckBoxGroupBy" runat="server" />  
                    </ItemTemplate>  
                   
                </asp:TemplateField>  


                        
                          <asp:TemplateField HeaderText="HAVING">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="CheckBoxHaving" runat="server" />  
                    </EditItemTemplate>  
                       <ItemTemplate>  
                        <asp:CheckBox ID="CheckBoxHaving" runat="server" />  
                    </ItemTemplate>  
                </asp:TemplateField>  

                    <asp:TemplateField HeaderText="SHOW">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="CheckBoxShow" runat="server" checked/>  
                    </EditItemTemplate>  
                       <ItemTemplate>  
                        <asp:CheckBox ID="CheckBoxShow" runat="server" checked/>  
                    </ItemTemplate>  
                </asp:TemplateField>  



                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left"/>
                    <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White"/>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left"/>
                    <RowStyle ForeColor="#000066"/>
                    <SelectedRowStyle BackColor="#006699" ForeColor="White" Font-Bold="true"/>
                    <SortedAscendingCellStyle BackColor="#000066"/>
                    <SortedAscendingHeaderStyle BackColor="#000066"/>
                    <SortedAscendingCellStyle BackColor="#007DBB"/>
                    <SortedDescendingCellStyle BackColor="#CAC9C9"/>
                    <SortedDescendingHeaderStyle BackColor="#00547E"/>
                </asp:GridView>
            </asp:Panel>
        </div>
        <div id="create-query-content">
            <br />
            <asp:Label ID="lbltxt" runat="server"></asp:Label>
            <br />
            <asp:Button ID="ButtonQuery" class="button-css button-17" runat="server" OnClick="ButtonQuery_Click" Text="Tạo câu truy vấn" />
            <br />
            <asp:TextBox ID="TextBox1" class="textbox1" runat="server" Height="70px" TextMode="MultiLine" Wrap="False"></asp:TextBox>
            <br />
            <br />
        </div>
        <div id="report-content">
            <br />
            <br />
            <asp:Button ID="btnReport" runat="server" class="button-css button-17" OnClick="ButtonReport_Click" Text="Tạo báo cáo" />
            <br />
            <br />
        </div>
    </div>
</asp:Content>

