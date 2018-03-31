package util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator {

        protected PasswordAuthentication getPassAuthentication(){
            return new PasswordAuthentication("milimlee0","2hagojaeby");
        }
}