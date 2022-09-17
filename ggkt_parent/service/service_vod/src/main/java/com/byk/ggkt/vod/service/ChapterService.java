package com.byk.ggkt.vod.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.vod.Chapter;
import com.byk.ggkt.vo.vod.ChapterVo;

import java.util.List;

/**
 * <p>
 * 课程 服务类
 * </p>
 *
 * @author byk
 * @since 2022-08-28
 */
public interface ChapterService extends IService<Chapter> {

    //1.大纲列表(章节和小节列表)
    List<ChapterVo> getTreeList(Long courseId);

    //根据课程id删除章节
    void removeChapterByCourseId(Long id);
}
