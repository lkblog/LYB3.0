package test;

/**
 * @author 罗凯
 * @date 2021/10/15 22:37
 */
public class TestYield {

    public static void main(String[] args) {
        new Thread(()->{
            System.out.println(Thread.currentThread().getName() + "线程开始执行");
            Thread.yield();
            System.out.println(Thread.currentThread().getName() + "线程停止执行");
        },"a").start();
        new Thread(()->{
            System.out.println(Thread.currentThread().getName() + "线程开始执行");
            System.out.println(Thread.currentThread().getName() + "线程停止执行");
        },"b").start();
    }
}
