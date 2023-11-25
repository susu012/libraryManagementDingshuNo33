package com.jxut.dingshuNo33.service.impl;

import com.jxut.dingshuNo33.mapper.SysMenuMapper;
import com.jxut.dingshuNo33.pojo.SysMenu;
import com.jxut.dingshuNo33.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysMenuServiceImpl implements SysMenuService {
    @Autowired
    SysMenuMapper sysMenuMapper;

    @Override
    public List<SysMenu> selectMenuNormalAll() {
        return sysMenuMapper.selectMenuNormalAll();
    }
}
