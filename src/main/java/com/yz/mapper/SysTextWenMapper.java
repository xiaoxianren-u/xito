package com.yz.mapper;

import com.yz.pojo.TextWen;
import org.apache.ibatis.annotations.Param;

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
     *  内容数量
     * @param id 用户id
     * @return 数量
     */

    int selectTextWenCount(@Param("id") Integer id);

    /**
     * 显示所有内容数据
     * @param id
     * @param curr
     * @param limit
     * @return
     */
    List<TextWen> selectTextWen(@Param("id") Integer id,@Param("curr")  int curr,@Param("limit")  int limit);




}
