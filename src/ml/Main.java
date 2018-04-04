/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ml;

import java.awt.BorderLayout;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author irene
 */
public class Main extends JFrame {

    private final JTextField textField = new JTextField(30);
    private final JButton button = new JButton("Search");
    private final JPanel panel = new JPanel();
    private final GoogleAPI googleAPI = new GoogleAPI();
    private final JLabel googleMap = new JLabel();
    
    public class Event implements MouseListener{

        @Override
        public void mouseClicked(MouseEvent me) {
             //To change body of generated methods, choose Tools | Templates.
            setMap(textField.getText());
        }

        @Override
        public void mousePressed(MouseEvent me) {
             //To change body of generated methods, choose Tools | Templates.
        }

        @Override
        public void mouseReleased(MouseEvent me) {
             //To change body of generated methods, choose Tools | Templates.
        }

        @Override
        public void mouseEntered(MouseEvent me) {
            //To change body of generated methods, choose Tools | Templates.
        }

        @Override
        public void mouseExited(MouseEvent me) {
             //To change body of generated methods, choose Tools | Templates.
        }
        
    }
    
    
    public void setMap(String location){
        googleAPI.downloadMap(location);
        googleMap.setIcon(googleAPI.getmap(location));
        googleAPI.fileDelete(location);
        add(BorderLayout.SOUTH, googleMap);
        pack();
    }
    
    
    public Main(){
        setLayout(new BorderLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setResizable(false);
        setTitle("Google Maps");
        setVisible(true);
        
        panel.add(textField);
        panel.add(button);
        button.addMouseListener(new Event());
                
        add(BorderLayout.NORTH, panel);
        pack();
    }
}
