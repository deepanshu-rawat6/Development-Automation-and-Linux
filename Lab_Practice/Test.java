import java.util.*;

public class Test {
    public boolean compute() {
        try (Scanner sc = new Scanner(System.in)) {
            int x = sc.nextInt();
            return x >> 1 << 1 == x;
        }
    }
    public static void main(String[] args) {
        Test obj = new Test();
        System.out.println(obj.compute());
    }
}