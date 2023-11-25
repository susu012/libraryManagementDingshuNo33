package com.jxut.dingshuNo33;

import com.jxut.dingshuNo33.mapper.BookCardMapper;
import com.jxut.dingshuNo33.mapper.SysUserMapper;
import com.jxut.dingshuNo33.pojo.*;

import com.jxut.dingshuNo33.service.*;
import com.jxut.dingshuNo33.pojo.BookCard;
import com.jxut.dingshuNo33.pojo.BookNotice;
import com.jxut.dingshuNo33.service.BookNoticeService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DemoApplicationTests {

    @Autowired
    BookNoticeService bookNoticeService;
    @Autowired
    SysUserMapper sysUserMapper;
    @Autowired
    BookCardMapper bookCardMapper;

    @Test
    void insert(){ //插入数据
        Long aLong = bookNoticeService.insertAll(new BookNotice(1l,""));
    }

    @Test
    void delete(){//删除数据
        Long i = bookNoticeService.deleteNoticeById(1l);
    }
    @Test
    public void update(){ //更新数据  通过id来进行更新数据
        Long as = bookNoticeService.updateNotice(new BookNotice(1l, "as"));
        System.out.println(as);
    }

    @Test
    public void selectById() { //
        BookCard bookCard = bookCardMapper.selectId(1L);
        System.out.println(bookCard);
    }
}
