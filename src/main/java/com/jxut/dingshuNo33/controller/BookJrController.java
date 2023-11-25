package com.jxut.dingshuNo33.controller;

import com.jxut.dingshuNo33.pojo.BookJr;
import com.jxut.dingshuNo33.service.BookJrService;

import com.jxut.dingshuNo33.utils.AjaxResult;
import com.jxut.dingshuNo33.utils.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/book")
public class BookJrController  extends BaseController {

    @Autowired
    BookJrService bookJrService;

    @PostMapping("/list")
    @ResponseBody
    public AjaxResult finddby(@RequestBody BookJr bookJr) {
        List<BookJr> bookJrs = bookJrService.selectBooksList(bookJr);
        if (bookJrs!=null){
            return AjaxResult.success(bookJrs);
        }else return AjaxResult.error();
    }

    @GetMapping(value = "/delete/{bookID}")
    public String delete(@PathVariable("bookID") String bookID){
        bookJrService.deleteBookById(bookID);
        return "redirect:/system/main";
    }

    @GetMapping("/savePage")
    public String save(ModelMap map){
            map.addAttribute("action","savePost");
        return "/books_jar/save";
    }

    @PostMapping("/savePost")
    public String saveData(BookJr bookJr){
        bookJrService.insertBook(bookJr);
        return "redirect:/system/main";
    }

    @GetMapping("/update/{bookId}")
    public String findupdate(@PathVariable("bookId") String ISBN,ModelMap map){
        BookJr bookJr = bookJrService.selectBookById(ISBN);
        map.addAttribute("books",bookJr);
        map.addAttribute("action","updatePost");
        return "books_jar/update";
    }

    @PostMapping("/updatePost")
    public String updatece(BookJr bookJr){
        bookJrService.updateBook(bookJr);
        return "redirect:/system/main";
    }

    @GetMapping("/lend/{bookId}")
    public String lendBooks(@PathVariable("bookId") String ISBN){

        return "redirect:/system/main";
    }

    @GetMapping("/system/borrow")
    public  String borrows(){
        return "redirect:/system/borrow";
    }

}
