function login() {
  // Get the input values from the form
  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;

  // Hardcoded credentials
  var validUsername = "a";
  var validPassword = "p";

  // Check if the input values match the hardcoded credentials
  if (username === validUsername && password === validPassword) {
    // Redirect to the new page on successful login
    window.location.href = "loggedin.html";
  } else {
    document.getElementById("login-message").innerHTML = "Invalid username or password.";
  }
}
function callAPI() {
  const inputText = document.getElementById("input-text").value;
  fetch("http://localhost:8080/repos")
  .then(function (response) {
    return response.json();
  })
  .then(function (data){
    // Handle API response data
    appendData(data);
    console.log("reached appenddata\n")
  })
  .catch(function (err) {
    // Handle API error
    console.log(err);
  });
}

function appendData(data) {
  var mainContainer = document.getElementById("myData");
  for (var i = 0; i < data.length; i++){
    var div = document.createElement("div");
    div.innerHTML = 'NetScore: ' + data[i].NetScore;
    mainContainer.appendChild(div)
  }
}