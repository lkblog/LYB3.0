package test;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.net.URL;

/**
 * @author 罗凯
 * @date 2021/10/14 9:31
 */
public class TestThread2 extends Thread{

    private String url;
    private String name;

    public TestThread2(String url,String name){
        this.url = url;
        this.name = name;
    }

    @Override
    public void run() {
        WebDownload webDownload = new WebDownload();
        webDownload.downloader(url,name);
        System.out.println("下载了文件名为："+ name);
    }

    public static void main(String[] args) {
        new Thread(new TestThread2("https://t7.baidu.com/it/u=1819248061,230866778&fm=193&f=GIF","p1.jpg")).start();
    }
}

class WebDownload{
    public void downloader(String url,String name){
        try {
            FileUtils.copyURLToFile(new URL(url),new File(name));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("IO异常，downloader发生错误");
        }
    }
}