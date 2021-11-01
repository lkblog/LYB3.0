package test;

/**
 * @author 罗凯
 * @date 2021/10/14 15:44
 */
public class Race implements Runnable{

    private static String winner;

    @Override
    public void run() {
        for (int i = 0; i <= 1000; i++) {
            if (Thread.currentThread().getName().equals("兔子") && i%10==1){
                i += 9;
                try {
                    Thread.sleep(1);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            boolean gameOver = gameOver(i);

            if (gameOver){
                break;
            }
            System.out.println(Thread.currentThread().getName()+"跑了"+i+"步");
        }
    }

    public boolean gameOver(int step){
        if (winner != null){
            return true;
        }else if (step >= 1000){
            winner = Thread.currentThread().getName();
            System.out.println(winner);
            return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Race race = new Race();

        new Thread(race,"兔子").start();
        new Thread(race,"乌龟").start();
    }
}
