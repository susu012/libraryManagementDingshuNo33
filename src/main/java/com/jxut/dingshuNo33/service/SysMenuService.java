package com.jxut.dingshuNo33.service;

import com.jxut.dingshuNo33.pojo.SysMenu;

import java.util.List;

public interface SysMenuService {
    /**
     * 查询所有的菜单
     * @return
     */
    List<SysMenu> selectMenuNormalAll();

}
