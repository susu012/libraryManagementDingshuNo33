package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.BookCard;
import com.jxut.dingshuNo33.service.BookCardService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/card")
public class BookCardController {

    @Autowired
    BookCardService bookCardService;

    @PostMapping("/search")//将数据返回到页面 //requestbody 请求值
    @ResponseBody
    public AjaxResult list(@RequestBody BookCard bookCard){
        List<BookCard> bookCards = bookCardService.selectAllList(bookCard);
        if (bookCards.size()>0){
            return AjaxResult.success(bookCards);
        }else
            return AjaxResult.error();
    }
    @GetMapping("/delete/{id}")//pathvariable占位符
    public String deleteById(@PathVariable("id") Long id){
        int i = bookCardService.deleteById(id);
        return "redirect:/system/card";
    }
    @GetMapping("/add")
    public String addPage(ModelMap map){
//        map.addAttribute("action","addPost");
        return "/books_car/add";
    }

    @PostMapping("/addPost")
    public String adddate(BookCard bookCard){
        int save = bookCardService.save(bookCard);
        return "redirect:/system/card";
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable Long id,ModelMap map){
        map.addAttribute("cards",bookCardService.selectId(id));
        return "books_car/update";
    }

    @PostMapping("/updatePost")
    public String updateDate(BookCard bookCard){
        int i = bookCardService.updateByID(bookCard);
        return "redirect:/system/card";
    }
}
