package com.byk.ggkt.vod.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.byk.ggkt.model.vod.Course;
import com.byk.ggkt.vo.vod.CoursePublishVo;
import com.byk.ggkt.vo.vod.CourseVo;

/**
 * <p>
 * 课程 Mapper 接口
 * </p>
 *
 * @author byk
 * @since 2022-08-28
 */
public interface CourseMapper extends BaseMapper<Course> {

    //根据课程id查询发布课程信息
    CoursePublishVo selectCoursePublishVoById(Long id);

    //根据课程id查询课程详情
    CourseVo selectCourseVoById(Long courseId);
}
