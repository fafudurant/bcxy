package com.byk.ggkt.live.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.live.LiveCourseConfig;

/**
 * <p>
 * 直播课程配置表 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
public interface LiveCourseConfigService extends IService<LiveCourseConfig> {

    //根据课程id查询配置信息
    LiveCourseConfig getCourseConfigCourseId(Long id);
}
