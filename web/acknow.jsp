<%@ page language="java" import="java.io.BufferedReader, java.io.InputStreamReader,java.io.OutputStreamWriter, java.net.URL, java.net.HttpURLConnection, java.net.URLEncoder;" contentType="text/html" errorPage="" %>
<%
    String phn = request.getParameter("phn"); 
    phn="91"+phn;
    try {
			// Construct data
			String apiKey = "apikey=" + "EXW1uyd9D9s-aqWngJiMVc6JKVx98z6VjDhHbFVEBO";
                        //new key : D74sYy/S+Ro-VF2TYNdaUukVKGt5fSyz5CAna89h7Y	
			String message = "&message=" + "Your Issue has been resolved. Please login to the portal to give your feedback.";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + phn;
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			response.sendRedirect("minhome.jsp?m2=success");   
                        
		//	return stringBuffer.toString();
		}
    catch (Exception e) {
			System.out.println("Error SMS "+e);
                        e.printStackTrace();
		//	return "Error "+e;
		}

    
    
    
    %>




        
        
        