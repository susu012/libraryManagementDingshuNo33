package com.jxut.dingshuNo33.mapper;

import com.jxut.dingshuNo33.pojo.BookJr;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookJrMapper
{
    /**
     * 查询图书
     *
     * @param id 图书ID
     * @return  图书
     */
    public  BookJr selectBookById(String id);


    /**
     * 查询图书列表
     *
     * @param  bookJr 图书
     * @return 图书集合
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
     * @param  bookJs 图书
     * @return 结果
     */
    public int updateBook(BookJr bookJr);

    /**
     * 删除图书
     *
     * @param id 需要删除的数据ID
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
