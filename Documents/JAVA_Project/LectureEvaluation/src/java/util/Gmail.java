import java.net.PasswordAuthentication;
import com.sun.net.httpserver.Authenticator;

public class Gmail extends Authenticator {

    @Override
        protected PasswordAuthentication(){
            return new PasswordAuthentication("zzlyann","2hagojaeby");
        }
}