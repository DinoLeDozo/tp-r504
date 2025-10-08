import java.net.*;

public class ClientUDP {
	public static void main(String[] args) throws Exception {
	InetAddress addr = InetAddress.getLocalHost();
	System.out.println("adresse = " + addr.getHostName());

	tring message = "Hello World";
	byte[] data = message.getBytes();

	DatagramPacket packet = new DatagramPacket(data, data.length, addr, 1234);
	DatagramSocket sock = new DatagramSocket();
	sock.send(packet);
	sock.close();
	}
}
