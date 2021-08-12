package com.yz.mapper;

import com.yz.pojo.TextWen;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/12 16:39 星期四
 * @Software: IntelliJ IDEA
 * @File : SysTextWenMapper.JAVA
 */
public interface SysTextWenMapper {

    /**
     * 添加内容
     * @param textWen
     * @return int
     */
    int insertTextWenInt(TextWen textWen);

    /**
     * 显示所有数据
     * @param id
     * @return
     */
    List<TextWen> selectTextWen(Integer id);




}
