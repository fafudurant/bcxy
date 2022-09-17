package com.byk.ggkt.live.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.byk.ggkt.live.mapper.LiveCourseGoodsMapper;
import com.byk.ggkt.live.service.LiveCourseGoodsService;
import com.byk.ggkt.model.live.LiveCourseGoods;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 直播课程关联推荐表 服务实现类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
@Service
public class LiveCourseGoodsServiceImpl extends ServiceImpl<LiveCourseGoodsMapper, LiveCourseGoods> implements LiveCourseGoodsService {

    //查询直播课程商品列表
    @Override
    public List<LiveCourseGoods> getGoodsListCourseId(Long liveCourseId) {
        return baseMapper.selectList(new LambdaQueryWrapper<LiveCourseGoods>()
                .eq(LiveCourseGoods::getLiveCourseId, liveCourseId));
    }
}
