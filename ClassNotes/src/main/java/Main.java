import org.w3c.dom.ls.LSOutput;

public class Main {

    public static void main(String[] args) throws InterruptedException {
        System.out.println("Databases!");

        for (int i = 5; i >= 0; i--) {

            System.out.println(i);
            Thread.sleep(1000);

            if (i == 0) {
                System.out.println("KABOOM!!!");
            }
        }
    }
}
