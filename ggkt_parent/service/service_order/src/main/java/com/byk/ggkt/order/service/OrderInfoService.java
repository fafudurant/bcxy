package com.byk.ggkt.order.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.order.OrderInfo;
import com.byk.ggkt.vo.order.OrderFormVo;
import com.byk.ggkt.vo.order.OrderInfoQueryVo;
import com.byk.ggkt.vo.order.OrderInfoVo;

import java.util.Map;

/**
 * <p>
 * 订单表 订单表 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-01
 */
public interface OrderInfoService extends IService<OrderInfo> {

    //订单列表
    Map<String, Object> serviceOrderInfoPage(Page<OrderInfo> pageParam, OrderInfoQueryVo orderInfoQueryVo);

    //生成订单方法
    Long submitOrder(OrderFormVo orderFormVo);

    //订单id获取订单信息
    OrderInfoVo getOrderInfoById(Long id);

    //更新订单状态：已经支付
    void updateOrderStatus(String out_trade_no);
}
