
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" href="css/main/style.css" rel="stylesheet" />
    </head>
    
    
    <body>
<h1 align="center">LOGOWANIE</h1>


<form class="formularzRejestracji" method="POST" action="UserKontroler">
   
  
    <li>
        <label for="login">Login :</label>
            <input type="text" name="login">
    </li>     
            
        <li>
        <label for="haslo">Haslo :</label>
            <input type="text" name="haslo">
    </li>    
    
        
        
<br><br>
    <input type="SUBMIT" value="ZALOGUJ">

</form>
</body></html>