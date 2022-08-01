<!DOCTYPE html>
<html>
    <head>
        <title>
            Edit
        </title>
        <style>
        h1{
    text-align: center;
}
.main{
    justify-content: center;
    text-align: center;
}
.body{
    background-image: url("Background.jpg");
    background-color:darkcyan;
}
.form{
    justify-content: center;
    background-color: rgba(30,39,39,0.3);
    box-shadow: 0 5px 30px black;
    color:black;
    margin-bottom: 10px;
    margin-top: 10px;
    font-size: 25px;
    font-family: Arial, Helvetica, sans-serif;
    height:500px;
    width: 500px;
    margin: auto;
    padding-top: 10px;
    padding-left: 10px;
}
button{
    text-align: center;
    justify-content: center;
    font-size: 25px;
    border-radius: 12px;
    background-color:aquamarine;
    margin-top: 15px;
}
.A1{
    text-align: left;
}
        </style>
        <link rel="stylesheet" type="text/css" href="C:\Users\swapn\OneDrive\Desktop\Eclipse\MyResume\src\main\webapp\views\edit.css">
    </head>
    <body class="body">
    <% Long phone=(Long)session.getAttribute("Phone"); 
     String address=(String)session.getAttribute("Address");
     String email=(String)session.getAttribute("Email");
     Integer id=(Integer)session.getAttribute("id");
    %>
        <h1><b><u>Edit</u></b></h1>
        <div class="main">
            <form action="/process" class="form" method="post">
                <div class="A1">
                    <label>Phone Number</label>
                    <input value=<%=phone %> type="number" name="Phone" required>
                    <br>
                    <label>Address</label>
                    <input value=<%=address %> type="text" name="Address" required>
                    <br>
                    <label>Email Id</label>
                    <input value=<%=email %> type="email" name="email" required>
                    <br>
                    <input type="hidden" value=<%=id %> name="id"> 
                </div>
                
                <button type="submit">Update</button>
            </form>
        </div>
    </body>
</html>
