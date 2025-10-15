import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;

public class ClientTCP3 {
    public static void main(String[] args) throws Exception {
        Socket socket = new Socket("localhost", 2016);
        DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
        dOut.writeUTF(args[0]);

        // recevoir le fichier envoyé par le serveur
        System.out.println("- Waiting data");

        // Ajout de la déclaration manquante :
        DataInputStream dIn = new DataInputStream(socket.getInputStream());

        String str = dIn.readUTF();
        System.out.println("recu du serveur= " + str);
        socket.close();
    }
}

