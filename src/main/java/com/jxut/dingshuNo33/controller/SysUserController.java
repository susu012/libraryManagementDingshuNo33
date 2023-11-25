package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.SysUser;
import com.jxut.dingshuNo33.service.ISysUserService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@Controller
@RequestMapping("/user")
public class SysUserController {

    @Autowired
    ISysUserService iSysUserService;

    @PostMapping("/list") //前段 ajax 传过来条件查询 所有的数据
    @ResponseBody
    public AjaxResult listAll(@RequestBody SysUser sysUser, ModelMap map){
        PageInfo<SysUser> pageInfo = iSysUserService.listPage(1, 100,sysUser);
//        map.addAttribute("pages",iSysUserService.listPage(1, 2,sysUser));
        if (pageInfo !=null){
            return  AjaxResult.success(pageInfo);
        }else
            return AjaxResult.error("1");
    }

    @GetMapping("/add")
    public String addPage(ModelMap map){
        map.addAttribute("action","addPost");
        return "books_user/add";
    }
    @PostMapping("addPost")
    public String addPosts(SysUser sysUser){
        sysUser.setCreateTime(new Date());
        int i = iSysUserService.insertUser(sysUser);
        if (i>0) {
            return "redirect:/system/user";
        }
        return "books_user/add";
    }

    @GetMapping("/update/{id}")
    public String updatePage(@PathVariable("id") long id,ModelMap map){
        map.addAttribute("list",iSysUserService.selectUserById(id));
        map.addAttribute("action","updatePost");
        return "books_user/update";
    }

    @PostMapping("/updatePost")
    public String updatePosts(SysUser sysUser){
        int i = iSysUserService.updateUser(sysUser);
        return "redirect:/system/user";
    }

    @GetMapping("/delete/{id}")
    public String deletes(@PathVariable("id") long id){
        int i = iSysUserService.deleteUser(id);
        return "redirect:/system/user";
    }
}
