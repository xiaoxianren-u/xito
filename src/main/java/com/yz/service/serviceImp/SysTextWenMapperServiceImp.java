package com.yz.service.serviceImp;

import com.yz.mapper.SysTextWenMapper;
import com.yz.pojo.Cllect;
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
    public int selectTextWenCount(Integer id,int text_status) {
        return sysTextWenMapper.selectTextWenCount(id,text_status);
    }

    /**
     * 显示所有内容数据
     * @param id
     * @param curr
     * @param limit
     * @return
     */

    @Override
    public List<TextWen> selectTextWen(Integer id, int curr, int limit,int text_status) {
        return sysTextWenMapper.selectTextWen(id, curr, limit,text_status);
    }

    /**
     * 前端内容条数
     * @param text_label
     * @return
     */
    @Override
    public int selectTextWenCountData(String text_label,int text_status) {
        return sysTextWenMapper.selectTextWenCountData(text_label,text_status);
    }

    /**
     * 显示前端所有
     * @param text_label
     * @param curr
     * @param limit
     * @return
     */

    @Override
    public List<TextWen> selectTextWenData(String text_label, int curr, int limit,int text_status) {
        return sysTextWenMapper.selectTextWenData(text_label, curr, limit,text_status);
    }

    /**
     * 查询收藏
     * @param username
     * @return
     */

    @Override
    public List<Cllect> selectCll(String username) {
        return sysTextWenMapper.selectCll(username);
    }

    /**
     * 添加收藏
     * @param text_id
     * @param username
     * @param cll_data
     * @return
     */
    @Override
    public int insertCllect(Integer text_id, String username, String cll_data) {
        return sysTextWenMapper.insertCllect(text_id, username, cll_data);
    }

    /**
     * 实现作者内容删除
     * @param textWen
     * @return
     */
    @Override
    public int selectText(TextWen textWen) {
        return sysTextWenMapper.selectText(textWen);
    }

    /**
     * 后台内容数量
     * @return
     */


    @Override
    public int selectTextWenCountGeneraData(Integer text_id, String text_name, String text_label, Integer  text_rec_id) {
        return sysTextWenMapper.selectTextWenCountGeneraData(text_id,text_name,text_label,text_rec_id);
    }

    /**
     * 后台内容列表
     * @param page
     * @param limit
     * @return
     */

    @Override
    public List<TextWen> GeneralList(int page, int limit, Integer  text_id, String text_name, String text_label, Integer  text_rec_id) {
        return sysTextWenMapper.GeneralList(page,limit,text_id,text_name,text_label,text_rec_id);
    }

    /**
     * 后台删除内容
     * @param text_id
     * @return
     */
    @Override
    public int StaDelete(int text_id) {
        return sysTextWenMapper.StaDelete(text_id);
    }

    /**
     * 后台修改内容状态
     * @param text_id
     * @param text_status
     * @return
     */
    @Override
    public int StaUpdate(int text_id, int text_status) {
        return sysTextWenMapper.StaUpdate(text_id, text_status);
    }

    /**
     * 显示内容
     * @param text_id
     * @return
     */
    @Override
    public TextWen explainDataText(Integer text_id) {
        return sysTextWenMapper.explainDataText(text_id);
    }
}
