package com.byk.ggkt.live.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.byk.ggkt.live.mapper.LiveCourseConfigMapper;
import com.byk.ggkt.live.service.LiveCourseConfigService;
import com.byk.ggkt.model.live.LiveCourseConfig;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 直播课程配置表 服务实现类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
@Service
public class LiveCourseConfigServiceImpl extends ServiceImpl<LiveCourseConfigMapper, LiveCourseConfig> implements LiveCourseConfigService {

    //根据课程id查询配置信息
    @Override
    public LiveCourseConfig getCourseConfigCourseId(Long liveCourseId) {
        return baseMapper.selectOne(new LambdaQueryWrapper<LiveCourseConfig>().eq(
                LiveCourseConfig::getLiveCourseId,
                liveCourseId));
    }
}
