var script = document. createElement('script');
script. src = "jquery-3.4.1.js";
document.getElementsByTagName('head')[0].appendChild(script); 
$(".myTable").on("click", "td", function()
  {
   var issueid = $(this).closest('tr').find("td:eq(2) input").val();
   window.location = 'monitorcmissues.jsp?issue_id='+issueid;
  });