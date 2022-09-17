package com.byk.ggkt.live.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.live.LiveCourseAccount;

/**
 * <p>
 * 直播课程账号表（受保护信息） 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
public interface LiveCourseAccountService extends IService<LiveCourseAccount> {

    //获取直播账号信息
    LiveCourseAccount getLiveCourseAccountCourseId(Long id);
}
