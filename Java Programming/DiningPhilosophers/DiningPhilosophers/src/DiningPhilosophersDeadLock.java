
public class DiningPhilosophersDeadLock {

	public static void main(String[] args) {

		philosopher[] philosophers = new philosopher[5];
		Chopstick[] chopsticks = new Chopstick[5];
		/*
		 *Make only five chopsicks for the philosophers to use 
		 */
		for (int i = 0; i < chopsticks.length; i++) {

			chopsticks[i] = new Chopstick();
			chopsticks[i].setId(i);

		}
		
		
		for (int i =0; i< philosophers.length;i++) {
			
			Chopstick leftchopsticks = chopsticks[i];
			Chopstick rightchopsticks = chopsticks[(i + 1) % chopsticks.length];
			philosophers[i]= new philosopher(leftchopsticks,rightchopsticks,"Philosopher"+ (i+1));
			
			Thread philDinner = new Thread(philosophers[i]);
			philDinner.start();
			
		}
		
		

	}

}
