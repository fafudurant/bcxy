package com.byk.ggkt.vod.service.impl;

import com.byk.ggkt.vod.mapper.TeacherMapper;
import com.byk.ggkt.vod.service.TeacherService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.byk.ggkt.model.vod.Teacher;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 讲师 服务实现类
 * </p>
 *
 * @author byk
 * @since 2022-08-26
 */
@Service
public class TeacherServiceImpl extends ServiceImpl<TeacherMapper, Teacher> implements TeacherService {
}
