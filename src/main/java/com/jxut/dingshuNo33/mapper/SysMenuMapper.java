package com.jxut.dingshuNo33.mapper;

import com.jxut.dingshuNo33.pojo.SysMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysMenuMapper {
    /**
     * 查询所有的菜单
     * @return
     */
    List<SysMenu> selectMenuNormalAll();
}
