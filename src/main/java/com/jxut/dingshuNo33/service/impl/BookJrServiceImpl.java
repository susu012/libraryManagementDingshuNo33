package com.jxut.dingshuNo33.service.impl;

import com.jxut.dingshuNo33.mapper.BookJrMapper;
import com.jxut.dingshuNo33.pojo.BookJr;
import com.jxut.dingshuNo33.service.BookJrService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookJrServiceImpl implements BookJrService {

    @Autowired
    BookJrMapper bookJrMapper;

    @Override
    public PageInfo<BookJr> list(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<BookJr> bookJrs =bookJrMapper.selectBooksList(new BookJr());
        //如果返回前的数据 和 数据库实体 对象数据一致 采下面方式
        //如果不一致，采用 PageInfo pageInfo = new PageInfo(); pageInfo.setList(shippingList);
        PageInfo<BookJr> pageInfo = new PageInfo<BookJr>(bookJrs);
        return pageInfo;
    }

    @Override
    public BookJr selectBookById(String ISBN) {
        return bookJrMapper.selectBookById(ISBN);
    }


    @Override
    public List<BookJr> selectBooksList(BookJr bookJr) {
        return bookJrMapper.selectBooksList(bookJr);
    }

    @Override
    public int insertBook(BookJr bookJr) {
        return bookJrMapper.insertBook(bookJr);
    }

    @Override
    public int updateBook(BookJr bookJr) {
        return bookJrMapper.updateBook(bookJr);
    }

    @Override
    public int deleteBookById(String id) {
        return bookJrMapper.deleteBookById(id);
    }

    @Override
    public int deleteBookByIds(String[] ids) {
        return bookJrMapper.deleteBookByIds(ids);
    }

    @Override
    public int deleteDelBookByIds(String[] ids) {
        return bookJrMapper.deleteDelBookByIds(ids);
    }

}
