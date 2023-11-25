package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.SysUser;
import com.jxut.dingshuNo33.service.ISysUserService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import com.jxut.dingshuNo33.utils.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *注册验证
 *
 * @author RH
 */
@Controller
public class SysRegisterController extends BaseController
{
    @Autowired
    ISysUserService iSysUserService;

    @GetMapping("/register")
    public String register(){
        return "register";
    }



    @PostMapping("/register")
    @ResponseBody
    public AjaxResult ajaxLogin(SysUser sysUser){

        SysUser sysUsers = iSysUserService.selectUserByLoginName(sysUser.getLoginName());

        if (sysUsers ==  null ) {
            int i = iSysUserService.insertUser(sysUser);
                return AjaxResult.success();
        }else
        return AjaxResult.error("0");
    }

}
