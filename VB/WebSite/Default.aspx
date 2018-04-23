'INSTANT VB NOTE: This code snippet uses implicit typing. You will need to set 'Option Infer On' in the VB file or set 'Option Infer' at the project level:

<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>How to iterate through current tab items in TabbedLayoutGroup</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxFormLayout ID="layout" runat="server">
				<Items>
					<dx:TabbedLayoutGroup Caption="tabbed group1">
						<Items>
							<dx:LayoutGroup Caption="Group1">
								<Items>
									<dx:LayoutItem Caption="LayoutItem1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="layoutContainer1" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
							<dx:LayoutGroup Caption="Group2">
								<Items>
									<dx:LayoutItem Caption="LayoutItem1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="layoutContainer2" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="170px"></dx:ASPxTextBox>
												<dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
							<dx:LayoutGroup Caption="Group3">
								<Items>
									<dx:LayoutItem Caption="LayoutItem1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="layoutContainer3" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
									<dx:LayoutItem Caption="LayoutItem2">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="layoutContainer4" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox5" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
						</Items>
					</dx:TabbedLayoutGroup>
					<dx:TabbedLayoutGroup Caption="tabbed group2">
						<Items>
							<dx:LayoutGroup Caption="Group1">
								<Items>
									<dx:LayoutItem Caption="LayoutItem1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox6" runat="server" Width="170px"></dx:ASPxTextBox>
												 <dx:ASPxTextBox ID="ASPxTextBox8" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
							<dx:LayoutGroup Caption="Group2">
								<Items>
									<dx:LayoutItem Caption="LayoutItem1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer2" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox7" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
							<dx:LayoutGroup Caption="Group3">
								<Items>
									<dx:LayoutItem Caption="LayoutItem1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer3" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox9" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
									<dx:LayoutItem Caption="LayoutItem2">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer4" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox10" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
						</Items>
					</dx:TabbedLayoutGroup>
					<dx:LayoutGroup Caption="Simple Group">
						<Items>
							<dx:LayoutGroup Caption="Group2:1">
								<Items>
									<dx:LayoutItem Caption="LayoutItem2:1">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="layoutContainer5" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox11" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
							<dx:LayoutGroup Caption="Group2:2">
								<Items>
									<dx:LayoutItem Caption="LayoutItem2:2">
										<LayoutItemNestedControlCollection>
											<dx:LayoutItemNestedControlContainer ID="layoutContainer6" runat="server">
												<dx:ASPxTextBox ID="ASPxTextBox12" runat="server" Width="170px"></dx:ASPxTextBox>
											</dx:LayoutItemNestedControlContainer>
										</LayoutItemNestedControlCollection>
									</dx:LayoutItem>
								</Items>
							</dx:LayoutGroup>
						</Items>
					</dx:LayoutGroup>
				</Items>
			</dx:ASPxFormLayout>
			<dx:ASPxButton ID="ASPxButton1" runat="server" Text="Set Current Date To ActiveTab" OnClick="ASPxButton1_Click" Width="205px"></dx:ASPxButton>
		</div>
	</form>
</body>
</html>