<%@page language="java" contentType="text/html" %>
<%@page isELIgnored="false" %>
<%@ page import="java.sql.*" %>
<%@ page import="EMTShop.Basket "%>
<%@ page import="EMTShop.Event "%>
<%@ page import="EMTShop.Ticket "%>
<%@ page import="EMTShop.HsqlShopDB "%>
<%@ page import="java.util.Collection, java.util.Iterator"%>
<jsp:useBean id='db'
             scope='session'
             class='EMTShop.HsqlShopDB'/>
<jsp:useBean id='basket'
             scope='session'
             class='EMTShop.Basket'/>


<html lang="en">
<head>
   <meta charset="utf-8">
   <link rel="stylesheet" type="text/css" href="EMT2.css"/>
   <title>EMT Entertainment</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>


  <div class="section-1">
    <a href="index.jsp">
       <img class="Logo" src="EMTLogo.png" alt="EMT Logo">
     </a>
     <a href="https://instagram.com/emt_entertainment?utm_medium=copy_link">
        <img class="Insta" src="instagram.jpeg" alt="Instagram Logo">
     </a>
     <a href="https://www.youtube.com/channel/UCbGqh9UeYydlgRUklZtjqoQ">
         <img class="Youtube" src="youtube.jpeg" alt="Youtube Logo">
     </a>
     <a href="Basket.jsp">
       <img class="Basket" src="basket.png" alt="Basket Logo">
     </a>
      <div class="menu-button">
       <div class="menu-button_burger"></div>
       <div class="menu">
         <div>
        <div>
          <ul>
           <li><a  href="index.jsp">HOME</a></li>
       <!--    <button onclick="myFunction()" class="btn"> EVENTS & TICKETS</button>  -->
            <li><a  href="eventstickets.html ">EVENTS & TICKETS</a>    
               <ul>
                 <li><a  href="nightlife.html">NIGHTLIFE & CONCERTS</a></li>
                 <li><a  href="#n">SHOWS & SEATED EVENTS</a></li>
                 <li><a  href="#n">SPORTS</a></li>
               </ul>
           </li>
           <li><a href="#Videos">PRIVATE BOOKINGS</a>
           <ul>
           <li><a  href="staycation.html">STAYCATIONS</a></li>
           <li><a  href="#n">HOLIDAYS</a></li>
           <li><a  href="#n">BIRTHDAYS</a></li>
           <li><a  href="#n">CORPRATE EVENTS</a></li>
          </ul>
        </li>
     <li><a href="#contact">ABOUT US</a></li>
     </ul>
     </div>
     </div>
      </div>
    </div>
   </div>
  </div>
  <div class="topnav">
    <ul>  
     <li><a  href="index.jsp">HOME</a></li>
     <li><a  href="eventstickets.html ">EVENTS & TICKETS</a>
       <ul>
         <li><a  href="nightlife.html">NIGHTLIFE & CONCERTS</a></li>    
         <li><a  href="#n">SHOWS & SEATED EVENTS</a></li>
         <li><a  href="#n">SPORTS</a></li>
       </ul>     
     </li>
     <li><a href="#Videos">PRIVATE BOOKINGS</a>
       <ul>
         <li><a  href="staycation.html">STAYCATIONS</a></li>
         <li><a  href="#n">HOLIDAYS</a></li>
         <li><a  href="#n">BIRTHDAYS</a></li>
         <li><a  href="#n">CORPRATE EVENTS</a></li>
       </ul>
      </li>
     <li><a href="#contact">ABOUT US</a></li>
     </ul>
  </div>
  <div class="outside">
     <div class= "blog">
        <!--Image slider start-->
        <div class="slider">
          <div class="slides">
             <!--radio buttons start-->            
             <input type="radio" name="radio-btn" id="radio1">           
             <input type="radio" name="radio-btn" id="radio2">
             <input type="radio" name="radio-btn" id="radio3">
             <input type="radio" name="radio-btn" id="radio4">
             <!--radio buttons end-->            
             <!--slide content start-->            
             <div class="slide first">
                <img src="arslan and crowd.png" alt= "Arslan Photo">           
             </div>
             <div class="slide">           
                <iframe src="https://www.youtube.com/embed/xoWyJZhIk6Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
             </div>
             <div class="slide">
                <img src="smiling web banner.png" alt= "smiling girl Photo">     
             </div>
             <div class="slide">
                <img src="slim banner.png" alt= "Banner Photo">     
             </div>
             <!--slide content end-->            
             <!--auto nav start-->            
	     <div class="navigation-auto">
                <div class="auto-btn1"></div>
                <div class="auto-btn2"></div>
                <div class="auto-btn3"></div>
                <div class="auto-btn4"></div>
             </div>
             <!--auto nav end-->            
    
          </div>
          <!--manual nav start-->            
          <div class="navigation-manual">
               <label for="radio1" class="manual-btn"></label>
               <label for="radio2" class="manual-btn"></label>
               <label for="radio3" class="manual-btn"></label>
               <label for="radio4" class="manual-btn"></label>
          </div>
          <!--manual nav end-->            
     </div>
     <h1>What's Next? </h1>
     <%
     Collection<Event> events = db.getAllEvents();
     Iterator<Event> e = events.iterator();
     Integer i = 0;
     while(e.hasNext()){ 
       Event event = e.next();
       String src = event.title + ".jpg";
       String open = "open";
       String modal = "modal_container";
       String close = "closer";
       String form = "form";
       String action = event.title + ".jsp";
       if(i > 0){
          String count = Integer.toString(i);
          open = open + count;
          modal = modal + count;
          close = close + count;
          form = form + count; 
       }
    %>
     <button id="<%= open%>">
      <h2>EMT Presents: <%= event.title%></h2>
      <img class="flyer"src="<%= src%>" alt= "flyer">
      <p>Coming to you with a DJ Line up and Vibes like Never before<br>
         <br>
         <br>
         Sounds on the night brought to you by: DJ Suukz, DJ Kwarmz Original, DJ Larni and  DJ Dynamic  so make sure to bring your dancing shoes because these tunes will do more than make y>
         <br>
         Genre's on the night: R&B, Afrobeat, Hip Hop, UK Drill, Bashment and much, much more!!<br>
         <br>
         THIS EVENT WILL SELL OUT!! So be sure to purchase your tickets ASAP!!<%=i%></p>
      </button>
      <div class= "modal-container" id="<%= modal%>">
         <div class="modal">
           <button id="<%= close%>">X</button>  
          <h2>EMT Presents: <%= event.title%></h2>
          <img class="flyer"src="<%= src%>" alt= "flyer">
          <p>&pound5  Early-Bird(Valid before 10PM)
          <br>
          <br>
          &pound10 Standard Entry(Valid before 12PM)
          <br>
          <br>
          &pound15 Last Entry(Valid before 12PM)
          <br>
          <br>
          &pound30 VIP(Valid before 12AM)</p>
          <form id="<%= form %>"class="form" method="POST" action="indexC.jsp">
            <input type="text" id="event" name="evente" value="<%= event.eventid %>">
            <label for="DDList">Ticket:</label>

            <select class"DDList "size="1" id="DDList" name="time">
              <option value="1"  selected="">Early-Bird</option>
              <option value="2">Standard-Entry</option>
              <option value="3">Late-Entry</option>
              <option value="4">VIP</option>
            </select>
            <label for="DDList2">Quantity:</label>
            <select class="DDList2" size="1" id="DDList2" name="amount">
              <option selected="">1</option>
              <option>2</option>
              <option>3</option>
            </select> <input type="submit" value="ADD TO BASKET" name="<%= form %>">  
            </form>

         </div>     
       </div>     
    <%
        i = i + 1;
        }
       String ticktype = request.getParameter("time");
       String evtype = request.getParameter("evente");
       Ticket ticket = db.getTicket(ticktype);
       Event event = db.getEvent(evtype);
       if (ticket == null) {
        // do something sensible!!!
        out.println( "ticket not here fam" );
       }
       else {
             try
        {
          Integer q = Integer.parseInt(request.getParameter("amount"));
           basket.addQuantity(q);

        }catch (NumberFormatException nfe){
             System.out.println("NumberFormatException: " + nfe.getMessage());
        }

           basket.addItem(ticktype);
           basket.addEventItem(evtype);

      }

  
%>

     
    
   
 </div> 
</div> 
  <%
        Double order = basket.getTotal();
      if( order > 0.0){
      %>
 <a href="Basket.jsp">
 <div class="notification">
    <pre> Your Order: <%= basket.getTotalString() %> </pre>
     <p> Go to your shopping basket</p>

 </div>
 </a>
 <div class="circle">
  <pre><%= basket.getItems().size() %>
 <div>
<%
  }
%>
   <script src="EMT.js"></script>
</body>
</html>




