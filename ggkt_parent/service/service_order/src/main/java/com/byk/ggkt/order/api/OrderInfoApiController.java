package com.byk.ggkt.order.api;

import com.byk.ggkt.order.service.OrderInfoService;
import com.byk.ggkt.result.Result;
import com.byk.ggkt.vo.order.OrderFormVo;
import com.byk.ggkt.vo.order.OrderInfoVo;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/order/orderInfo")
public class OrderInfoApiController {

    @Autowired
    private OrderInfoService orderInfoService;

    //生成订单方法
    @ApiOperation("生成订单方法")
    @PostMapping("submitOrder")
    public Result  submitOrder(@RequestBody OrderFormVo orderFormVo){
        Long orderId = orderInfoService.submitOrder(orderFormVo);
        return Result.ok(orderId);
    }

    @ApiOperation(value = "获取")
    @GetMapping("getInfo/{id}")
    public Result getInfo(@PathVariable Long id) {
        OrderInfoVo orderInfoVo = orderInfoService.getOrderInfoById(id);
        return Result.ok(orderInfoVo);
    }
}
