package com.byk.ggkt.client.user;

import com.byk.ggkt.model.user.UserInfo;
import io.swagger.annotations.ApiOperation;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "service-user")
public interface UserInfoFeignClient {

    @ApiOperation("根据ID查询用户")
    @GetMapping("/admin/user/userInfo/inner/getById/{id}")
    public UserInfo getById(@PathVariable Long id);
}
