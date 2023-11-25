package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.BookNotice;
import com.jxut.dingshuNo33.service.BookNoticeService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/notice")
public class BookNoticeController {

    @Autowired
    BookNoticeService bookNoticeService;

    @PostMapping("/search")
    @ResponseBody
    public AjaxResult list(@RequestBody BookNotice bookNotice){
        List<BookNotice> bookNotices = bookNoticeService.selectAll(bookNotice);
        if (bookNotices.size()>0){
            return AjaxResult.success(bookNotices);
        }else
            return AjaxResult.error();
    }
    @GetMapping("/delete/{id}")
    public String deleteById(@PathVariable("id") Long id){
        Long aLong = bookNoticeService.deleteNoticeById(id);
         return "redirect:/system/notice";
    }
    @GetMapping("/add")
    public String addPage(ModelMap map){
        map.addAttribute("action","addPost");
        return "/books_notice/add";
    }

    @PostMapping("/addPost")
    public String adddate(BookNotice bookNotice){
        bookNotice.setCreateTime(new Date());
        Long aLong = bookNoticeService.insertAll(bookNotice);
        return "redirect:/system/notice";
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable("id") Long id,ModelMap map){
        map.addAttribute("notices",bookNoticeService.findNoticeById(id));
        map.addAttribute("action","updatePost");
        return "books_notice/update";
    }

    @PostMapping("/updatePost")
    public String updateDate(BookNotice bookNotice){
        Long aLong = bookNoticeService.updateNotice(bookNotice);
        return "redirect:/system/notice";
    }
}
