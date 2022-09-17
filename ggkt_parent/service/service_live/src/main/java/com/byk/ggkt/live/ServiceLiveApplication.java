package com.byk.ggkt.live;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients(basePackages = "com.byk")
@ComponentScan(basePackages = "com.byk")
@MapperScan("com.byk.ggkt.live.mapper")
public class ServiceLiveApplication {
    public static void main(String[] args) {
        SpringApplication.run(ServiceLiveApplication.class, args);
    }
}
