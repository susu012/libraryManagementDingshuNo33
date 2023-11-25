package com.jxut.dingshuNo33.service;

import com.jxut.dingshuNo33.pojo.BookJr;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookJrService {

    PageInfo<BookJr> list(Integer pageNum, Integer pageSize);

    /**
     * 查询图书
     *
     * @param id 图书ID
     * @return  图书
     */
    public BookJr selectBookById(String ISBN);


    /**
     * 查询图书的信息
     * @return RH
     */
    List<BookJr> selectBooksList(BookJr bookJr);


    /**
     * 添加图书
     *
     * @param bookJr 图书
     * @return 结果
     */
    public  int insertBook(BookJr bookJr);

    /**
     * 修改图书
     *
     * @param  bookJr 图书
     * @return 结果
     */
    public int updateBook(BookJr bookJr);
    /**
     * 删除图书
     *
     * @param bookJr 图书
     * @return 结果
     */
    public int deleteBookById(String id);

    /**
     * 批量删除图书
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBookByIds(String [] ids);

    /**
     * 批量假删除 图书
     * @param ids 需要删除的数据id
     * @return 结果
     */
    public int deleteDelBookByIds(String [] ids);

}
