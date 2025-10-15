import java.net.*;

public class ClientUDP
{
	public static void main(String[] args) throws Exception
	{
		String s = "Hello World";
		InetAddress addr = InetAddress.getLocalHost();
		System.out.println("adresse = " + addr.getHostName());
		byte[] data = s.getBytes();
		DatagramPacket packet = new DatagramPacket(data, data.length, addr, 1234);
		DatagramSocket sock = new DatagramSocket();
		sock.send(packet);
//recevoir le fichier envoyé par le serveur
		System.out.println("- Waiting data");
		sock.receive(packet);

			String str = new String(packet.getData(), 0, packet.getLength());
			System.out.println("recu du serveur= " + str);


		sock.close();
	}
}
