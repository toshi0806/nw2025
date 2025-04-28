import java.util.*;

class If {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("a? ");
        int a=sc.nextInt();
        if(a > 0) {
            System.out.println("Positive");
        } else if(a == 0) {
            System.out.println("Zero");
        } else {
            System.out.println("Negative");
        }
/*
        boolean boo;
        boo=false;
        if(boo=false) {
            System.out.println("true");
        }
        */
       int q=3;
       if(q=3) {
        System.out.println("three");
       }
   }
}