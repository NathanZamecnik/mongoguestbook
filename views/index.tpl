<!DOCTYPE html>
<html>
  <head>
    <title>Welcome to MongoDB!</title>
    <style type="text/css">
      body {font-family:sans-serif;color:#4f494f;}
      form input {border-radius: 7.5px;}
      h5 {display: inline;}
      .label {text-align: right}
      .guestbook {float:left; padding-top: 10px;}
      .name {width:100%;float:left; padding:3px;}
      .wrapper { padding-left: 25px; padding-top: 20px}
    </style>
  </head>

  <body>
    <div class="wrapper">
      <h1>Welcome To MongoDB!</h1>
      <div class="guestbook_input" >
      <form method="post" class="form" action="/newguest" method='post'>
        Name: <input type="text" name="name"/>
        Email: <input type="text" name="email"/>
        <input type="submit" value='Add Guest'/>
      </form>
      </div>
      <div class="guestbook">
        <h3>Guests:</h3>
        %for name in mynames:
        <div class="name">
        <h5>Name:</h5> {{name['name']}},
         <h5>Email:</h5> {{name['email']}}
        </div>
        %end
      </div>
    </div>
  </body>
</html>