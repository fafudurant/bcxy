package com.byk.ggkt.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.byk.ggkt.model.order.OrderDetail;
import com.byk.ggkt.order.mapper.OrderDetailMapper;
import com.byk.ggkt.order.service.OrderDetailService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 订单明细 订单明细 服务实现类
 * </p>
 *
 * @author byk
 * @since 2022-09-01
 */
@Service
public class OrderDetailServiceImpl extends ServiceImpl<OrderDetailMapper, OrderDetail> implements OrderDetailService {

}
