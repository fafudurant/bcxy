package com.byk.ggkt.vod.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.byk.ggkt.model.vod.VideoVisitor;
import com.byk.ggkt.vo.vod.VideoVisitorCountVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 视频来访者记录表 Mapper 接口
 * </p>
 *
 * @author byk
 * @since 2022-08-31
 */
public interface VideoVisitorMapper extends BaseMapper<VideoVisitor> {

    //课程统计的接口
    List<VideoVisitorCountVo> findCount(@Param("courseId") Long courseId,
                                        @Param("startDate") String startDate,
                                        @Param("endDate") String endDate);
}
