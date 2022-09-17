package com.byk.ggkt.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.user.UserInfo;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-02
 */
public interface UserInfoService extends IService<UserInfo> {

    //openid查询
    UserInfo getUserInfoOpenid(String openId);
}
