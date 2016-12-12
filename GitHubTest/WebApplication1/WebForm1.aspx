<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqServerModeDataSource1" KeyFieldName="Id" Width="375px" OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize">
            <SettingsEditing Mode="Batch">
                <BatchEditSettings EditMode="Row" StartEditAction="DblClick" />
            </SettingsEditing>
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsCommandButton>
                <UpdateButton ButtonType="Button">
                    <Image IconID="actions_apply_16x16">
                    </Image>
                </UpdateButton>
                <CancelButton ButtonType="Button">
                    <Image IconID="actions_cancel_16x16">
                    </Image>
                </CancelButton>
            </SettingsCommandButton>
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="Id" ShowInCustomizationForm="True" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Tanim" ShowInCustomizationForm="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Name="x" VisibleIndex="3">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="1" Value="1" />
                            <dx:ListEditItem Text="2" Value="2" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
        </dx:ASPxGridView>
    
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ASPxButton">
            <ClientSideEvents Click="function(s, e) {
	if(cbn.GetSelectedIndex() == 0){
		txt1.SetIsValid(false);
		txt2.SetIsValid(true);
}
else if(cbn.GetSelectedIndex() == 1){
		txt1.SetIsValid(true);
	txt2.SetIsValid(false);
}
}" />
        </dx:ASPxButton>
    
    </div>
        <dx:LinqServerModeDataSource ID="LinqServerModeDataSource1" runat="server" ContextTypeName="TTS.Data.TTSDataClassesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" OnSelecting="LinqServerModeDataSource1_Selecting" TableName="Imalatcilars" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TTS.Data.TTSDataClassesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" StoreOriginalValuesInViewState="False" TableName="Imalatcilars">
        </asp:LinqDataSource>
        <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" ClientInstanceName="cbn">
            <Items>
                <dx:ListEditItem Text="1" Value="0" />
                <dx:ListEditItem Text="2" Value="2" />
            </Items>
        </dx:ASPxComboBox>
        <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientIDMode="AutoID" ClientInstanceName="txt1" Width="170px">
            <ValidationSettings EnableCustomValidation="True">
            </ValidationSettings>
        </dx:ASPxTextBox>
        <br />
        <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientIDMode="AutoID" ClientInstanceName="txt2" Width="170px">
            <ValidationSettings EnableCustomValidation="True">
            </ValidationSettings>
        </dx:ASPxTextBox>
    </form>
</body>
</html>
