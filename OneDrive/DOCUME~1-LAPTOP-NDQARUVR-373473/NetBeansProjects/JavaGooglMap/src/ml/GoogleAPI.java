/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ml;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.io.InputStream;
import java.io.OutputStream;
import javax.swing.ImageIcon;

/**
 *
 * @author irene
 */
public class GoogleAPI {

   public void downloadMap(String location){
       try {
           String imageURL = "https://maps.googleapis.com/maps/api/staticmap?center="
                   + URLEncoder.encode(location, "UTF-8") + "&zoom=12&size=612x612&scale=4";
           URL url = new URL(imageURL);
           InputStream is = url.openStream();
           OutputStream os = new FileOutputStream(location);
           byte[] b = new byte[2048];
           int length;
           while((length = is.read(b)) != -1){
               os.write(b, 0, length);
           }
           is.close();
           os.close();           
       } catch(IOException e){
       }
   }
   
   public ImageIcon getmap(String location) {
       return new ImageIcon((new ImageIcon(location)).getImage().getScaledInstance(612, 612, java.awt.Image.SCALE_SMOOTH));
   }
   
   public void fileDelete(String fileName){
       File f = new File(fileName);
       f.delete();
   }
}
