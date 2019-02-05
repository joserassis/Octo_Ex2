<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex2._Default" %>

<!doctype html>
<html>
<head>
  <title>Ex2</title>
  <link rel="stylesheet" href="Content/bootstrap.min.css" />
  <script type="text/javascript" src="Scripts/jquery-3.3.1.min.js"></script>  
</head>
<body>
  <div id="page">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Exercício 2</a>
        </nav>
    </header>
    <main>
      <p></p>
        <div class="container col-md-offset-6">
          <div id="tbl" class="fill" runat="server">            

          </div>
      </div>
    </main>
    <footer></footer>
  </div>  

    <div id="JPO">
       <div class="card border-light" style="width: 8rem;">
          <div class="card-body">
              <p id="msg" class="card-text"></p>             
          </div>
        </div>
     </div>
<%--  <div id="JPO">     
    <label id="lbl"></label>
  </div>--%>
  
  <script src="https://cdn.jsdelivr.net/gh/vast-engineering/jquery-popup-overlay@2/jquery.popupoverlay.min.js">
  </script>

  <script>
      $(document).ready(function () {
          $("#table").filter(":not(:has(table, th))").click(function (e) {
              var $cell = $(e.target).closest("td");
              $('#msg').text($cell.text());
              $('#JPO').popup();
          });          
          // Set default `pagecontainer` for all popups (optional, but recommended for screen readers and iOS*)
          //$.fn.popup.defaults.pagecontainer = '#page'
      });
  </script>

</body>
</html>