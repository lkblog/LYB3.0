package test;

/**
 * @author 罗凯
 * @date 2021/10/15 10:53
 */
public class TestLambda {

    interface Like{
        void iLike();
    }

    public static void main(String[] args) {
        Like like = () -> {
            System.out.println("i like lambda");
        };
        like.iLike();

        Runnable race = () -> {
            for (int i = 0; i <= 1000; i++) {
                if (Thread.currentThread().getName().equals("兔子") && i%10==1){
                    i += 9;
                    try {
                        Thread.sleep(1);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }

                Race race1 = new Race();
                boolean gameOver = race1.gameOver(i);

                if (gameOver){
                    break;
                }
                System.out.println(Thread.currentThread().getName()+"跑了"+i+"步");
            }
        };

        new Thread(race,"兔子").start();
        new Thread(race,"乌龟").start();
    }

}
