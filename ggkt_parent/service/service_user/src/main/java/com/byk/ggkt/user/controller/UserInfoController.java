package com.byk.ggkt.user.controller;


import com.byk.ggkt.model.user.UserInfo;
import com.byk.ggkt.user.service.UserInfoService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author byk
 * @since 2022-09-02
 */
@RestController
@RequestMapping("/admin/user/userInfo")
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;

    @ApiOperation(value = "获取")
    @GetMapping("/inner/getById/{id}")
    public UserInfo getById(@PathVariable Long id){
        UserInfo userInfo = userInfoService.getById(id);
        return userInfo;
    }
}

