
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>
        
        <link rel="stylesheet" type="text/css" href="style/loginStyleSheets.css"/>
        
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>   
    

<style>
    body{
        background-image: url("https://www.dronestagr.am/wp-content/uploads/2017/06/marina-bay-by-night-singapore.jpg");
      background-repeat: no-repeat;
      height: 100%;
      width: 100%;
      background-attachment: fixed;
    background-size: cover;
    

    label, .form-remember {
        display: inline-block;
    }
}

form.formLogin   {
    background-color: lightgray;
    margin:auto;
    width:300px;
    height:350px;
    font-family: Tahoma, Geneva, sans-serif;
    font-size: 20px; 
    line-height: 25px;
    font-weight: bold;
    color:darkblue;
    padding:10px;
    border: 5px solid black; 
}


input    {
    width:275px;
    border: 1px solid black;
    height: 25px;
}

p {
    text-align: center;
    font-family: Tahoma, Geneva, sans-serif;
    font-size: 16px;

}

.button {
  background-color: black;
  border: none;
  color: white;
  padding: 13px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}

.submitButton {
    border-radius: 16px;
}


form.search {
    float: right;
    text-align: right;
    height: 25px;
    margin: 7px;
}


 ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: blue;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: black;
}

</style>
    </head>
    <body> 
<ul>
  <li><a href="about.jsp">About</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="shop.jsp">Shop</a></li>
</ul>
        
        <br><br><br><br><br>
          
              <form class="formLogin" method="POST" action="/login">  
           
            <h1 style="text-align: center">Login</h1> 
           
                Username: <input id="idUsername" type="text" name="username" placeholder="Enter username"/>
           
            
               Password: <input id="idPassword" type="password" name="password" placeholder="Enter password"/>
           
               <br> 
              
               <button class="button submitButton">Login</button>
               
                    <p>Not a member yet? <a href="register.jsp">Register</a> now!</p>

          
</form>
    </body>
</html>
