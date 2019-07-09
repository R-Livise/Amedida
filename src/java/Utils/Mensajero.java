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
            
            String mensajeCompleto = "<div style=\"border: 2px outset #E8A209;\n" +
                                        "  border-radius: 5px;\">\n" +
                                        "<h1>"+c.getTitulo()+"</h1> \n " +
                                        "<p>"+c.getMensaje()+"</p></div>";
            
            
            Session s= Session.getDefaultInstance(p,null);
            MimeBodyPart texto = new MimeBodyPart();
            texto.setText(mensajeCompleto, "UTF-8", "html");
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
