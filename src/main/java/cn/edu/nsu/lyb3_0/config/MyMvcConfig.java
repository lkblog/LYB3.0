package cn.edu.nsu.lyb3_0.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.Locale;

/**
 * @author 罗凯
 * @date 2021/9/16 14:38
 */
@Configuration
public class MyMvcConfig implements WebMvcConfigurer {

//    ViewResolver  实现了视图解析器接口的类，我们就可以把它看做视图解析器

    @Bean
    public ViewResolver myViewResolver(){
        return new MyViewResolver();
    }

    /**
     * 自定义了一个自己的视图解析器MyViewResolver
     */
    public static class MyViewResolver implements ViewResolver{

        @Override
        public View resolveViewName(String s, Locale locale) throws Exception {
            return null;
        }
    }
}
