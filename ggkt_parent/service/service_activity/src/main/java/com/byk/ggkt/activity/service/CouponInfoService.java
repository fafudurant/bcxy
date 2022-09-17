package com.byk.ggkt.activity.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.activity.CouponInfo;
import com.byk.ggkt.model.activity.CouponUse;
import com.byk.ggkt.vo.activity.CouponUseQueryVo;

/**
 * <p>
 * 优惠券信息 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-02
 */
public interface CouponInfoService extends IService<CouponInfo> {

    //获取已经使用优惠券列表(条件查询分页)
    IPage<CouponUse> selectCouponUsePage(Page<CouponUse> pageParam, CouponUseQueryVo couponUseQueryVo);

    //更新优惠券
    void updateCouponInfoUseStatus(Long couponUseId, Long orderId);
}
