package cn.edu.nsu.lyb3_0;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 程序入口
 * 注解 @SpringBootApplication : 标注这个类是一个springboot的应用：启动类下的所有资源被导入
 * @author lk
 */
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}
