package com.yz.service.serviceImp;

import com.yz.mapper.SysTextWenMapper;
import com.yz.pojo.TextWen;
import com.yz.service.SysTextWenMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/12 16:43 星期四
 * @Software: IntelliJ IDEA
 * @File : SysTextWenMapperServiceImp.JAVA
 */

@Service
public class SysTextWenMapperServiceImp implements SysTextWenMapperService {

    @Autowired
    private SysTextWenMapper sysTextWenMapper;


    /**
     * 添加内容
     * @param textWen
     * @return
     */

    @Override
    public int insertTextWenInt(TextWen textWen) {
        return sysTextWenMapper.insertTextWenInt(textWen);
    }

    /**
     *  内容数量
     * @param id 用户id
     * @return 数量
     */

    @Override
    public int selectTextWenCount(Integer id) {
        return sysTextWenMapper.selectTextWenCount(id);
    }

    /**
     * 显示所有内容数据
     * @param id
     * @param curr
     * @param limit
     * @return
     */

    @Override
    public List<TextWen> selectTextWen(Integer id, int curr, int limit) {
        return sysTextWenMapper.selectTextWen(id, curr, limit);
    }
}
