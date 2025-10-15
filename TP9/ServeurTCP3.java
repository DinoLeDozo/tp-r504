import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class ServeurTCP3 {
    public static void main(String[] args) throws Exception {
        while (true) {
            ServerSocket socketserver = new ServerSocket(2016);
            System.out.println("serveur en attente");
            Socket socket = socketserver.accept();
            System.out.println("Connection d'un client");

            DataInputStream dIn = new DataInputStream(socket.getInputStream());
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());

            // Ajout de la variable msg pour corriger l'erreur
            String msg = dIn.readUTF();
            System.out.println("Message: " + msg);

            String rev = new StringBuilder(msg).reverse().toString();
            dOut.writeUTF(rev);

            socket.close();
            socketserver.close();
        }
    }
}

