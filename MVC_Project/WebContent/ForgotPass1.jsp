<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,javax.mail.*" %>
    <%@page import="javax.mail.internet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String result;
    double mess=Math.random();
    String mes=String.valueOf(mess);
	String to=request.getParameter("lid");
	final String from="sakshutalreja1@gmail.com";
	final String pass="cdvns2331139";
	String host="smtp.gmail.com";
	Properties prop=new Properties();
	prop.put("mail.smtp.host",host);
	prop.put("mail.transport.protocol","smtp");
	prop.put("mail.smtp.auth","true");
	prop.put("mail.smtp.starttls.enable","true");
	prop.put("mail.user",from);
	prop.put("mail.password",pass);
	prop.put("mail.port",465);
	
	Session mailSession=Session.getInstance(prop, new javax.mail.Authenticator(){
		@Override
		protected PasswordAuthentication getPasswordAuthentication(){
			return new PasswordAuthentication(from,pass);
		}
	});
	
    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject("Your new password OTP");

        // Now set the actual message

        message.setText(mes);

        // Send message

        Transport.send(message);

        result = "mail sent successfully....";
        out.println(result);
        
}catch (MessagingException mex) {

    mex.printStackTrace();

    result = "Error: unable to send mail....";
    out.println(result);
}
%>
</body>
</html>