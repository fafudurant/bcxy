package com.byk.ggkt.live.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.byk.ggkt.model.live.LiveCourse;
import com.byk.ggkt.vo.live.LiveCourseVo;

import java.util.List;

/**
 * <p>
 * 直播课程表 Mapper 接口
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
public interface LiveCourseMapper extends BaseMapper<LiveCourse> {

    //获取最近的直播
    List<LiveCourseVo> getLatelyList();
}
