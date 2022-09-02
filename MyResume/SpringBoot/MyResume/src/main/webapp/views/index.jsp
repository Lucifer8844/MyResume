<%@page import ="java.util.*,com.example.demo.model.MyResume" %>
<!Doctype HTML>
<html>
    <head>
        <title>Resume</title>
        <style>
        .A1,.top{
    text-align: center;

}
.body{
    background-image: url("Background.jpg");
    background-color:darkcyan;
}
.A1{
    /*text-align: center;*/
    justify-content: center;
    background-color: rgba(30,39,39,0.3);
    box-shadow: 0 5px 30px black;
    color:black;
    margin-bottom: 10px;
    margin-top: 10px;
    font-size: 14px;
    font-family: Arial, Helvetica, sans-serif;
    height:500px;
    width: 500px;
    margin: auto;
    padding-top: 10px;
}
.F1{
    text-align: left;
    padding-top: 10px;
    font-size: 25px;
    padding-bottom: 5px;
    margin-left: 18px;

}
button{
    font-size: 25px;
    border-radius: 12px;
    background-color:aquamarine;
    margin-top: 10px;
}
        </style>
        <link rel="stylesheet" href="index.css">
    </head>
    <body class="body">
        
        <%
        
        List<MyResume> s=(List<MyResume>)request.getAttribute("data");
        for(MyResume m:s){%>
        	
        	
        	
       
        <H1 class="top"><b><u>My Resume</u></b></H1>

        <div class="A1">
            <img src="" alt="">
            <div class="F1">
                <label>Name:-<%=m.getName() %></label><br>
                <label>Age:-<%=m.getAge() %></label><br>
                <label>About Yourself:-<%=m.getAbout() %></label><br>
                <label>Education:-<%=m.getEducation() %></label><br>
                <label>Address:-<%=m.getAddress() %></label><br>
                <label>Phone Number:-<%=m.getPhoneNumber() %></label><br>
                <label>EmailId:-<%=m.getEmailid() %></label><br>
                <label>Skills:-<%=m.getSkills() %></label><br>
                <label>Interest Hobies:-<%=m.getHobies() %></label><br>
                <label>Personal Projects:-<%=m.getProjects() %></label><br>
            </div>
        
            <button type="submit"><a href="/edit">Edit</a></button>
        </div>
        
        <% session.setAttribute("Phone", m.getPhoneNumber());
        session.setAttribute("Address", m.getAddress());
        session.setAttribute("Email", m.getEmailid());
        session.setAttribute("id", m.getId());
        
        }%>
    </body>
</html>