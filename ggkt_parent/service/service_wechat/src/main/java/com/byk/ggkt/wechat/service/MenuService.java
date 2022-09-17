package com.byk.ggkt.wechat.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.byk.ggkt.model.wechat.Menu;
import com.byk.ggkt.vo.wechat.MenuVo;

import java.util.List;

/**
 * <p>
 * 订单明细 订单明细 服务类
 * </p>
 *
 * @author byk
 * @since 2022-09-02
 */
public interface MenuService extends IService<Menu> {

    //获取所有菜单，按照一级和二级菜单封装
    List<MenuVo> findMenuInfo();

    //获取所有一级菜单
    List<Menu> findMenuOneInfo();

    //同步菜单
    void syncMenu();

    //公众号菜单删除
    void removeMenu();
}
