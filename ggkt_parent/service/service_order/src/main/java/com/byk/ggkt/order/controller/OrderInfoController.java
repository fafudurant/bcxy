package com.byk.ggkt.order.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.byk.ggkt.model.order.OrderInfo;
import com.byk.ggkt.order.service.OrderInfoService;
import com.byk.ggkt.result.Result;
import com.byk.ggkt.vo.order.OrderInfoQueryVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * <p>
 * 订单表 订单表 前端控制器
 * </p>
 *
 * @author byk
 * @since 2022-09-01
 */
@Api(tags = "订单管理")
@RestController
@RequestMapping(value="/admin/order/orderInfo")
public class OrderInfoController {

    @Autowired
    private OrderInfoService orderInfoService;

    //订单列表
    @ApiOperation("订单列表")
    @GetMapping("{page}/{limit}")
    public Result listOrder(@PathVariable Long page,
                            @PathVariable Long limit,
                            OrderInfoQueryVo orderInfoQueryVo){
        //创建page对象
        Page<OrderInfo> pageParam = new Page<>(page,limit);
        Map<String, Object> map = orderInfoService.serviceOrderInfoPage(pageParam,orderInfoQueryVo);
        return Result.ok(map);
    }
}

