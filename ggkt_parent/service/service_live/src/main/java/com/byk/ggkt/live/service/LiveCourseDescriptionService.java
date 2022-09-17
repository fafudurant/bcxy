package com.byk.ggkt.live.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.live.LiveCourseDescription;

/**
 * <p>
 * 课程简介 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
public interface LiveCourseDescriptionService extends IService<LiveCourseDescription> {

    //获取直播课程描述信息
    LiveCourseDescription getLiveCourseById(Long id);
}
