
  // Get the input field and table
    var srch = document.getElementById("searchInput");
  var table = document.getElementById("table");

  // Add an event listener to the input field
  srch.addEventListener("input", function() {
    var input = document.getElementById("searchInput");
    // Get the filter value and convert it to lowercase
    var filter = input.value.toLowerCase();
    // Get the table rows
    var rows = table.getElementsByTagName("tr");

    // Loop through the rows and hide those that don't match the search query
    for (var i = 0; i < rows.length; i++) {
      var row = rows[i];
      var cells = row.getElementsByTagName("td");
      var match = false;
      for (var j = 0; j < cells.length; j++) {
        var cell = cells[j];
        if (cell.innerHTML.toLowerCase().indexOf(filter) > -1) {
          match = true;
          break;
        }
      }
      if (match) {
        row.style.display = "";
      } else {
        row.style.display = "none";
      }
    }
  });
