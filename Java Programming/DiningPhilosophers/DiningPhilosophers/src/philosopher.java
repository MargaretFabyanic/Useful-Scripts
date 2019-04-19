import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class philosopher implements Runnable {

	private Chopstick leftChopStick;
	private Chopstick rightChopStick;
	private String name;

	public philosopher(Chopstick left, Chopstick right, String name) {

		this.leftChopStick = left;
		this.rightChopStick = right;
		this.name= name;
	}

	public void status(String status) {

		try {
			System.out.println(name+ " " + status);

			Thread.sleep((int) (Math.random() * 5000));
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void run() {
		// Yet to populate this method
		
		
		while (true) {
			  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
			   LocalDateTime now = LocalDateTime.now();  
			   System.out.println(dtf.format(now));
			status("Thinking");
			synchronized (leftChopStick) {
				status("Get left Chopstick" +leftChopStick.getId() );
				synchronized (rightChopStick) {
					// eating
					status("Get right Chopstick"+ +rightChopStick.getId());

					status("eating");
				}
				status("putting down right chopstick ");
				status("putting down left chopstick ");

			}

		}
	}

}
