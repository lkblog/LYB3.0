package test;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 罗凯
 * @date 2021/10/14 9:18
 */
public class TestThread {

    public static void main(String[] args) {

        new Thread(()->{

            for (int i = 0; i < 10; i++) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Date date = new Date(System.currentTimeMillis());
                System.out.println(new SimpleDateFormat("HH:mm:ss").format(date));
            }
        }).start();
    }
}
