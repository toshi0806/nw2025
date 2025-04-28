public class World {
    public static void main(String[] args) {
        System.out.println("Hello Ruby");
        int income=500;
        int bonus=10;
        System.out.println("所持金"+(income+bonus));
        System.out.printf("所持金:%x+%x=%x\n", income, bonus, income + bonus);
    }
}