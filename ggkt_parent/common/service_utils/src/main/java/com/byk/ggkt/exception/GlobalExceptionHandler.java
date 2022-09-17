package com.byk.ggkt.exception;

import com.byk.ggkt.result.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice  //aop
public class GlobalExceptionHandler {

    //全局异常处理
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public Result error(Exception e){
        System.out.println("全局......");
        e.printStackTrace();
        return Result.fail(null).message("执行了全局异常处理");
    }

    //特点异常处理ArithmeticException
    @ExceptionHandler(ArithmeticException.class)
    @ResponseBody
    public Result error(ArithmeticException e){
        System.out.println("特定......");
        e.printStackTrace();
        return Result.fail(null).message("执行了ArithmeticException异常处理");
    }

    //自定义异常处理GgktException
    @ExceptionHandler(GgktException.class)
    @ResponseBody
    public Result error(GgktException e){
        System.out.println("特定......");
        e.printStackTrace();
        return Result.fail(null).code(e.getCode()).message(e.getMsg());
    }
}
