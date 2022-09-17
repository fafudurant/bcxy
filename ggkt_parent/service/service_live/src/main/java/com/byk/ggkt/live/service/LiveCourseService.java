package com.byk.ggkt.live.service;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.live.LiveCourse;
import com.byk.ggkt.vo.live.LiveCourseConfigVo;
import com.byk.ggkt.vo.live.LiveCourseFormVo;
import com.byk.ggkt.vo.live.LiveCourseVo;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 直播课程表 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
public interface LiveCourseService extends IService<LiveCourse> {

    //直播课程列表
    IPage<LiveCourse> selectPage(Page<LiveCourse> pageParam);

    //直播课程添加
    void saveLive(LiveCourseFormVo liveCourseFormVo);

    //删除直播课程
    void removeLive(Long id);

    //id查询直播课程基本信息和描述信息
    LiveCourseFormVo getLiveCourseVo(Long id);

    //更新直播课程方法
    void updateLiveById(LiveCourseFormVo liveCourseFormVo);

    //获取直播配置信息
    LiveCourseConfigVo getCourseConfig(Long id);

    //修改配置
    void updateConfig(LiveCourseConfigVo liveCourseConfigVo);

    //获取最近的直播
    List<LiveCourseVo> getLatelyList();

    //获取用户access_token
    JSONObject getAccessToken(Long id, Long userId);

    //根据ID查询课程
    Map<String, Object> getInfoById(Long courseId);
}
