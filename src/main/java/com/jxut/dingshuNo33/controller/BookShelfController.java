package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.BookShelf;
import com.jxut.dingshuNo33.service.BookShelfService;
import com.jxut.dingshuNo33.utils.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/shelf")//处理请求地址映射
public class BookShelfController {

    @Autowired
    BookShelfService bookShelfService;

    @PostMapping("/search")//将前端页面中的数据进行映射
    @ResponseBody//通过ajax把数据返回给前端
    public AjaxResult list(@RequestBody BookShelf bookShelf){
        List<BookShelf> bookShelves = bookShelfService.selectAll(bookShelf);
        if (bookShelves.size()>0){
            return AjaxResult.success(bookShelves);
        }else
            return AjaxResult.error();
    }
    @GetMapping("/delete/{id}")
    public String deleteById(@PathVariable("id") Long id){
        int aLong = bookShelfService.deleteNoticeById(id);
         return "redirect:/system/shelf";
    }
    @GetMapping("/add")
    public String addPage(ModelMap map){
        return "/books_shelf/add";
    }

    @PostMapping("/addPost")
    public String adddate(BookShelf bookShelf){
        int aLong = bookShelfService.insertAll(bookShelf);
        return "redirect:/system/shelf";
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable("id") Long id,ModelMap map){
        BookShelf shelfById = bookShelfService.findShelfById(id);
        map.addAttribute("shelfs",shelfById);
        return "books_shelf/update";
    }

    @PostMapping("/updatePost")
    public String updateDate(BookShelf bookShelf){
        int aLong = bookShelfService.updateShelf(bookShelf);
        return "redirect:/system/shelf";
    }
}
