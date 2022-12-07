Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
		For Each item In layout.Items
			SetValuesToActiveGroupTab(TryCast(item, TabbedLayoutGroup))
		Next item
	End Sub
	Private Sub SetValuesToActiveGroupTab(ByVal group As TabbedLayoutGroup)
		If group IsNot Nothing Then
			Dim innerGroup As LayoutGroupBase = TryCast(group.Items(group.PageControl.ActiveTabIndex), LayoutGroupBase)
			innerGroup.ForEach(AddressOf IterateNestedControls)
		End If
	End Sub
	Private Sub IterateNestedControls(ByVal item As LayoutItemBase)
		For Each c As LayoutItemBase In item.Collection
			If TypeOf c Is LayoutGroup Then
				TryCast(c, LayoutGroup).ForEach(AddressOf IterateNestedControls)
			End If
			If TypeOf c Is LayoutItem Then
				SetValue(TryCast(c, LayoutItem))
			End If
		Next c
	End Sub
	Private Shared Sub SetValue(ByVal c As LayoutItem)
		For Each control As Control In c.LayoutItemNestedControlContainer.Controls
			Dim editor As ASPxEdit = TryCast(control, ASPxEdit)
			If editor IsNot Nothing Then
				editor.Value = DateTime.Now.ToString()
			End If
		Next control
	End Sub
End Class