package com.jxut.dingshuNo33.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 自定义导出Excel数据注解
 *
 * @author RH
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Excel {
    public enum ColumnType
    {
        NUMERIC(0), STRING(1),IMAGE(2);
        private final int value;

        ColumnType(int value){
            this.value=value;
        }
        public int value(){
            return this.value;
        }
    }
}
