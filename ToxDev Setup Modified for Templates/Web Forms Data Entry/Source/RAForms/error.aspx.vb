
Partial Public Class ErrorPage
    Inherits System.Web.UI.Page
    Dim theStudyNumber As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'this subroutine loads the querystring values into labels for display

        Label1.Text = Request.QueryString("u")
        Label2.Text = Request.QueryString("e")
        Label3.Text = Request.QueryString("s")
        Label4.Text = Request.QueryString("d")

    End Sub

End Class

