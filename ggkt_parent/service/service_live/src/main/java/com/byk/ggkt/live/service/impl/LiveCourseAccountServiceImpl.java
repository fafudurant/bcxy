package com.byk.ggkt.live.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.byk.ggkt.live.mapper.LiveCourseAccountMapper;
import com.byk.ggkt.live.service.LiveCourseAccountService;
import com.byk.ggkt.model.live.LiveCourseAccount;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 直播课程账号表（受保护信息） 服务实现类
 * </p>
 *
 * @author byk
 * @since 2022-09-04
 */
@Service
public class LiveCourseAccountServiceImpl extends ServiceImpl<LiveCourseAccountMapper, LiveCourseAccount> implements LiveCourseAccountService {

    //获取直播账号信息
    @Override
    public LiveCourseAccount getLiveCourseAccountCourseId(Long id) {
        LambdaQueryWrapper<LiveCourseAccount> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(LiveCourseAccount::getLiveCourseId,id);
        LiveCourseAccount liveCourseAccount = baseMapper.selectOne(wrapper);
        return liveCourseAccount;
    }
}
