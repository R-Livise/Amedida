/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import Bean.CorreoDTO;
import java.io.File;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

/**
 *
 * @author Rafael Livise
 */
public class Mensajero {

    public static boolean enviarCorreo(CorreoDTO c){
        try{
            Properties p = new Properties();
            p.put("mail.smtp.host","smtp.gmail.com");
            p.setProperty("mail.smtp.starttls.enable", "true");
            p.setProperty("mail.smtp.port", "587");
            p.setProperty("mail.smtp.user", c.getUsuarioCorreo());
            p.setProperty("mail.smtp.auth", "true");
            
            String mensajeHtml = 
                    "<table style=\"\n" +
"                    max-width: 66.666667%;\n" +
"                    font-family: Arial; \n" +
"                    line-height: 2;\n" +
"                    color: #212529;\n" +
"                    text-align: left;\n" +
"                    border:#000 solid 1px;\n" +
"                    border-collapse: collapse;\">\n" +
"                          <thead style=\"\n" +
"                                 padding: 2em;\n" +
"                                  background-color: #ffc107 !important;\n" +
"                                  background-image:linear-gradient(rgba(250,250,250,0.1),rgba(100,100,100,0.2))\">\n" +
"                              <tr>\n" +
"                                  <th>\n" +
"                                <img style=\"float: left !important; margin:0.8em\"src=\"https://cdn.pixabay.com/photo/2014/04/03/11/51/tools-312334_960_720.png\" height=\"30\" width=\"30\">\n" +
"                                <h2 style=\"margin:0.3em\"> <b>Amedida</b></h2>\n" +
"                            </th>\n" +
"                            </tr> \n" +
"                            </thead>\n" +
"                            \n" +
"                            <tbody style=\"padding: 0.75rem 1.25rem;box-sizing: border-box;word-wrap: break-word;\">\n" +
"                                <tr>\n" +
"                                    <td>\n" +
"                                        <h3 style=\"margin:0.5rem ;\" >"+c.getTitulo()+"</h3>\n" +
"                                <p style=\"margin:0.8em\" >"+c.getMensaje()+"</p>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td>\n" +
"                                    <a href=\"#\"  style=\"color: #212529;\n" +
"                                  background-color: #ffc107;\n" +
"                                  border-color: #ffc107;display: inline-block;\n" +
"                                  font-weight: 400;padding: .375rem .75rem;\n" +
"                                  margin: 0.8em;\n" +
"                                  \n" +
"                                  background-image:linear-gradient(rgba(100,100,100,0.2),rgba(100,100,100,0.1));\n" +
"                                  text-decoration:none; \">Ir a la pagina</a>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                            \n" +
"                      </table>";
                                      
            
            Session s= Session.getDefaultInstance(p,null);
            MimeBodyPart texto = new MimeBodyPart();
            texto.setText(mensajeHtml, "UTF-8", "html");
            BodyPart adjunto = new MimeBodyPart();
            
            System.out.println(c.getRutaArchivo());
            if(!c.getRutaArchivo().equals("")){
                
                adjunto.setDataHandler(new DataHandler(new FileDataSource(c.getRutaArchivo())));
                adjunto.setFileName(c.getNombreArchivo());
            }   
            
            MimeMultipart m = new MimeMultipart();
            m.addBodyPart(texto);
            
            if(!c.getRutaArchivo().equals("")){
                m.addBodyPart(adjunto);                
            } 
            MimeMessage mensaje= new MimeMessage(s);
            mensaje.setFrom(new InternetAddress(c.getUsuarioCorreo()));
            mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(c.getDestino()));
            mensaje.setSubject(c.getAsunto());
            mensaje.setContent(m);
            
            Transport t = s.getTransport("smtp");
            t.connect(c.getUsuarioCorreo(), c.getContrasegna());
            t.sendMessage(mensaje, mensaje.getAllRecipients());
            t.close();
            
            return true;
                
        }catch(Exception e){
            System.out.println("Error encontrado :" + e);
            return false;
        }
        
    }
    
}
