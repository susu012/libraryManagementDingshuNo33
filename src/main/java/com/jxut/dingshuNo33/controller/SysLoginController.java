package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.SysUser;
import com.jxut.dingshuNo33.service.ISysUserService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import com.jxut.dingshuNo33.utils.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录验证
 */
@Controller
public class SysLoginController extends BaseController {
    @Autowired
    ISysUserService iSysUserService;
    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response, ModelMap map)
    {
        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username,String password)
    {
        SysUser sysUser=null;
        if (username!=null) {   //数据库里的  用户名不能相同
             sysUser = iSysUserService.selectUserByLoginName(username);
        }
        if (sysUser.getPassword().equals(password)){
            return AjaxResult.success();
        }else
        {
         return AjaxResult.error();
        }
    }

}
