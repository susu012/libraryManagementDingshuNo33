package com.jxut.dingshuNo33.utils;

import static com.jxut.dingshuNo33.utils.AjaxResult.error;
import static com.jxut.dingshuNo33.utils.AjaxResult.success;

/**
 * web通用数据处理
 */
public class BaseController {
    /**
     * 相应返回结果
     *
     * @param rows 影响行数
     * @return 操作结果
     */
    protected AjaxResult toAjax(int rows)
    {
        return rows >0 ? AjaxResult.success() : AjaxResult.error();
    }

    /**
     * 返回成功
     */

















}
