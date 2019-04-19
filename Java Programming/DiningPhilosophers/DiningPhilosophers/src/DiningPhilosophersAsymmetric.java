
public class DiningPhilosophersAsymmetric {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		philosopher[] philosophers = new philosopher[5];
		Chopstick[] chopsticks = new Chopstick[5];

		for (int i = 0; i < chopsticks.length; i++) {

			chopsticks[i] = new Chopstick();
			chopsticks[i].setId(i+1);

		}

		for (int i = 0; i < philosophers.length; i++) {

			Chopstick leftchopsticks = chopsticks[i];
			Chopstick rightchopsticks = chopsticks[(i + 1) % chopsticks.length];
			if (i %2==0) {
				// breaking the deadlock by making the philosopher go the other left
				philosophers[i] = new philosopher(rightchopsticks, leftchopsticks, "Philosopher" + (i + 1));

			} else {

				philosophers[i] = new philosopher(leftchopsticks, rightchopsticks, "Philosopher" + (i + 1));
			}
			// starts all the threads
			Thread philDinner = new Thread(philosophers[i]);
			philDinner.start();

		}

	}

}
