<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AteckTestWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script language="C#" runat="server">

        void LinkButtonStart_Click(Object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(@"notepad.exe");
        }

     
        void LinkButtonEnter_Click(Object sender, EventArgs e)
        {
            System.Diagnostics.Process Process = new System.Diagnostics.Process();
           
            Process.StartInfo.FileName = (@"D:\Новая папка (2)\visual studio\AteckTestWeb\TestWinApp\bin\Debug\net5.0\TestWinApp.exe");
            Process.StartInfo.Arguments = "2 9";
            Process.Start();
           
             Process.WaitForExit();
             LabelSum.Text = Convert.ToString(Process.ExitCode);
            
        }
   </script>
</head>
<body>
    <form id="form1" runat="server">

     
 
      <asp:LinkButton id="LinkButtonStart" 
           Text="Запустить" 
           Font-Names="Verdana" 
           Font-Size="14pt" 
           OnClick="LinkButtonStart_Click" 
           runat="server"/>
      <br />
      <br />
         <asp:LinkButton id="LinkButtonEnter" 
           Text="Выбрать" 
           Font-Names="Verdana" 
           Font-Size="14pt" 
           OnClick="LinkButtonEnter_Click" 
           runat="server"/>
      <br />
        <br />
      <br />

        <div id="divValue">
            <asp:Label id="LabelSum" runat="server" />
        </div>
   </form>

</body>
</html>


