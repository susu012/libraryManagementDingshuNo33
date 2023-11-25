package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.BookBorrow;
import com.jxut.dingshuNo33.service.BookBorrowService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/borrow")
public class BookBorrowController {

    @Autowired
    BookBorrowService bookBorrowService;

    @PostMapping("/list")   // 条件查询
    @ResponseBody
    public AjaxResult listAll(@RequestBody BookBorrow bookBorrow){
        List<BookBorrow> bookBorrows = bookBorrowService.selectAllList(bookBorrow);
        if (bookBorrows!=null){
            return AjaxResult.success(bookBorrows);
        }else return AjaxResult.error("报错了，兄弟");
    }

    @GetMapping(value = "/delete/{id}")
    public String deletes(@PathVariable("id") Long id){
        bookBorrowService.deleteById(id);
    return "redirect:/system/borrow";
    }

    @GetMapping(value = "/update/{id}")
    public String update(@PathVariable("id") Long id, ModelMap map){
        map.addAttribute("list",bookBorrowService.selectId(id));
        map.addAttribute("action","updates");
        return "books_borrow/update";
    }

    @PostMapping("/updates")
    public String save(BookBorrow bookBorrow){
         bookBorrowService.updateByID(bookBorrow);
        return "redirect:/system/borrow";
    }
    @GetMapping(value = "/addUser")
    public String add(ModelMap map){
        map.addAttribute("action","save");
        return "books_borrow/add";
    }
    @PostMapping(value = "/save")
    public  String saveValue(BookBorrow bookBorrow){
        bookBorrow.setBorrowDate(new Date());
        bookBorrowService.save(bookBorrow);
        return "redirect:/system/borrow";
    }
}
