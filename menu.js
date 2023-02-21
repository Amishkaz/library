
  document.getElementById("homePage").click();
  document.getElementById('message-box').style.display = 'none'
///////////////message box///////////////////////////////
function showMessageBox() {
  document.getElementById('message-box').style.display = 'block';
}

function hideMessageBox() {
  document.getElementById('message-box').style.display = 'none';
  document.getElementById("loginPage").click();
}

////////////////////////////////////////////////////
function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;
  }
  
function getCookie(name) {
    var value = "; " + document.cookie;
    var parts = value.split("; " + name + "=");
    if (parts.length == 2) return parts.pop().split(";").shift();
}

  /////////////////login js/////////
  let signupbtn=document.getElementById("signupbtn");
      let signinbtn=document.getElementById("signinbtn");
      let namefield=document.getElementById("namefield");
      let Logintitle=document.getElementById("Logintitle");
      let usrname=document.getElementById("usrname");
      let email=document.getElementById("email");
      Logintitle.innerHTML="Sign in";
      namefield.style.maxHeight="0";

    
      signinbtn.onmouseenter=function(){
        namefield.style.maxHeight="0";
        Logintitle.innerHTML="Sign in";
        signupbtn.classList.add("disable");
        signinbtn.classList.remove("disable");
        Logintitle.style.color="#379683";

      }
      
      signupbtn.onmouseenter=function(){
        namefield.style.maxHeight="60px";
        Logintitle.innerHTML="Sign up";
        signupbtn.classList.remove("disable");
        signinbtn.classList.add("disable");
        Logintitle.style.color="#379683";
      }

      signupbtn.onclick=function(event){
        var uname=document.getElementById("usr").value;
        var mail=document.getElementById("mail").value;
        var pass=document.getElementById("pass").value;
        //submitOK = "true";
        /* if (mail=="a" && pass=="a") {
            title.innerHTML="Success";
            event.preventDefault();
        } else {
            title.innerHTML="fail";
            event.preventDefault();
        } */
        if(uname=="" || mail=="" || pass==""){
          Logintitle.innerHTML = "Fill all the fields";
          Logintitle.style.color="#d00";
          event.preventDefault();
        }else{
          Logintitle.style.color="#379683";
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
              // Typical action to be performed when the document is ready:
              
              Logintitle.innerHTML = xhttp.responseText;
              
              event.preventDefault();
            }
        };
        xhttp.open("POST", "database.php?uname="+uname+"&mail="+mail+"&pass="+pass+"", true);
        xhttp.send();
      }
      }

    signinbtn.onclick=function(event){

      var mail=document.getElementById("mail").value;
      var pass=document.getElementById("pass").value;
      
      if(mail=="" || pass==""){
        Logintitle.innerHTML = "Fill all the fields";
        Logintitle.style.color="#d00";
        event.preventDefault();
      }else{
        Logintitle.style.color="#379683";
       var xhttp = new XMLHttpRequest();
       xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            // Typical action to be performed when the document is ready:
            Logintitle.innerHTML = xhttp.responseText;
            usrname.innerHTML=getCookie('username');
            email.innerHTML=decodeURIComponent(getCookie('email'));
            event.preventDefault();
          }
        };
        xhttp.open("POST", "login.php?mail="+mail+"&pass="+pass+"", true);
        xhttp.send();
      }
     }

     ////////////////burrow.js////////////////////////
     // JavaScript to retrieve the data from the PHP script
let srchbook=document.getElementById("srchbook");
let cnfirm=document.getElementById("confirm");
let Burrowtitle=document.getElementById("Burrowtitle");
let date=document.getElementById("input-date");
srchbook.onclick=function(event){
  if(getCookie('email')==null || getCookie('username')==null){
    showMessageBox();
  }else{
    fetch('getbooks.php')
    .then(response => response.json())
    .then(data => {
        // JavaScript to generate the HTML table and populate it with data
        var popup = window.open("", "Popup", "width=800,height=600");
        var left = (screen.width - 800) / 2;
        var top = (screen.height - 600) / 2;
        popup.moveTo(left, top);
        popup.document.write('<!DOCTYPE html><html><head ><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><link rel="stylesheet" href="table.css"></head>');
        popup.document.write('<input class="input-field" type="text" id="searchInput" placeholder="Search...">');
        parent=window.opener;
        let table = '<table id="table" class="styled-table" ><tr disabled><th>Book ID</th><th>Book Name</th><th>author</th><th>Catergory</th></tr>';
        data.forEach(function(row) {
            if(row.availability=="y"){
            table += '<tr onclick="selectRowBurrow(this)" class="tableRow"><td>' + row.bookId + '</td><td>' + row.bookName + '</td><td>' + row.bookAuthor + '</td><td>' + row.bookCatergory + '</td></tr>';
        }
        });
        table += '</table>';
        popup.document.write(table);
        popup.document.write('<script src="menu.js"></script>');
        popup.document.write('<script src="srch.js"></script>');

        
    });
  }
}

function selectRowBurrow(row) {
    // Get the data from the selected row
    var data = {
        bookID: row.cells[0].innerHTML,
        bookName: row.cells[1].innerHTML,
        author: row.cells[2].innerHTML,
    };
  
    // Update the input fields in the parent window with the data
    window.opener.document.querySelector('#input-id').value = data.bookID;
    window.opener.document.querySelector('#input-name').value = data.bookName;
   
    // Close the popup window
    window.close();
  }



  cnfirm.onclick=function(event){

    var id=document.getElementById("input-id").value;
    
    var retdate=document.getElementById("input-date").value;
    
    var burrowEmail=getCookie('email');
    
    if(retdate==""){
        Burrowtitle.innerHTML = "Please select a return date";
        Burrowtitle.style.color="#d00";
        event.preventDefault();
      }else{
        var bxhttp = new XMLHttpRequest();
        bxhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
              // Typical action to be performed when the document is ready:
              Burrowtitle.innerHTML = bxhttp.responseText;
              event.preventDefault();
            }
        };
        bxhttp.open("POST", "burrow.php?id="+id+"&email="+burrowEmail+"&retdate="+retdate+"", true);
        bxhttp.send();}
  }
///////////////////////return.js/////////////////////
// JavaScript to retrieve the data from the PHP script
let srchBurrowedbook=document.getElementById("srchBurrowedbook");
let confirmReturn=document.getElementById("confirmReturn");
let rettitle=document.getElementById("rettitle");
//let retemail=getCookie('email');
//let retemail='a';
console.log(getCookie('email'));
var bkID;
var bID;
srchBurrowedbook.onclick=function(event){
  if(getCookie('email')==null || getCookie('username')==null){
    showMessageBox();
  }else{
    fetch('getBurrowedbooks.php?email='+getCookie('email')+'',{method: 'POST'})
    .then(response => response.json())
    .then(rdata => {
        // JavaScript to generate the HTML table and populate it with data
        var rpopup = window.open("", "Popup", "width=800,height=600");
        var left = (screen.width - 800) / 2;
        var top = (screen.height - 600) / 2;
        rpopup.moveTo(left, top);
        rpopup.document.write('<!DOCTYPE html><html><head ><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Select a book</title><link rel="stylesheet" href="table.css"></head>');
        rparent=window.opener;
        let rtable = '<table id="table" class="styled-table" ><tr><th hidden>burrowID</th><th hidden>Book ID</th><th>Book Name</th><th>Burrow Date</th><th hidden>email</th></tr>';
        rdata.forEach(function(row) {

          rtable += '<tr onclick="selectRowReturn(this)" class="tableRow"><td hidden>' + row.BurrowId + '</td><td hidden>' + row.bookId + '</td><td>' + row.bookName + '</td><td>' + row.burrowDate + '</td><td hidden>' + row.email + '</td></tr>';
          
        });
        rtable += '</table>';
        rpopup.document.write(rtable);
        rpopup.document.write('<script src="menu.js"></script>');
    });   
  }
}

function selectRowReturn(row) {
    // Get the data from the selected row
    
    var rdata = {
        rburrowID: row.cells[0].innerHTML,
        rbookID: row.cells[1].innerHTML,
        rbookName: row.cells[2].innerHTML,
        rburrowDate: row.cells[3].innerHTML,
    };
  
    // Update the input fields in the parent window with the data
    window.opener.document.querySelector('#input-retbname').value = rdata.rbookName;
    window.opener.document.querySelector('#input-retbdate').value = rdata.rburrowDate;
    window.opener.bID = rdata.rburrowID;
    window.opener.bkID = rdata.rbookID;
    // Close the popup window
    window.close();
  }

confirmReturn.onclick=function(event){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        // Typical action to be performed when the document is ready:
        rettitle.innerHTML = xhttp.responseText;
        event.preventDefault();
        }
      };
    xhttp.open("POST", "return.php?bkID="+bkID+"&bID="+bID+"", true);
    xhttp.send();
  }
////////////////////search.js//////////////////
let searchBooks=document.getElementById("searchBooks");
let srchtitle=document.getElementById("srchtitle");
let srchdata=document.getElementById("srchdata");
let formSize=document.getElementById("srchForm");
searchBooks.addEventListener('input',function(){
    var srchinput=document.getElementById("searchBooks").value;
   
        var srxhttp = new XMLHttpRequest();
        srxhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
              // Typical action to be performed when the document is ready:
              srchdata.innerHTML = srxhttp.responseText;
              formSize.style.maxHeight="fit-content";
            }
        };
        srxhttp.open("POST", "srchBooks.php?srchinput="+srchinput+"", true);
        srxhttp.send(); 
    
})

