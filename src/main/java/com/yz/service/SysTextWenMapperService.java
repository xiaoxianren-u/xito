package com.yz.service;

import com.yz.pojo.TextWen;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/12 16:42 星期四
 * @Software: IntelliJ IDEA
 * @File : SysTextWenMapperService.JAVA
 */
@Repository
public interface SysTextWenMapperService {

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
