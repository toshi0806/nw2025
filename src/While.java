class While {
    public static void main(String[] args) {
        int a=5;
        while(a>0) {
            System.out.println(a);
            a-=1;
        }
        int[] ia = {10, 30, 50, 80};
        for(int i=0; i<ia.length; i++) {
            System.out.println(ia[i]);
        }

        for(int i: ia) {
            System.out.println(i);
        }
    }
}