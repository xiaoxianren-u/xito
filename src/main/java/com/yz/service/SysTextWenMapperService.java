package com.yz.service;

import com.yz.pojo.Cllect;
import com.yz.pojo.TextWen;
import org.apache.ibatis.annotations.Param;
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
     *  个人内容数量
     * @param id 用户id
     * @return 数量
     */
    int selectTextWenCount(@Param("id") Integer id,@Param("text_status") int text_status);


    /**
     * 显示个人所有数据
     * @param id
     * @return 内容列表
     */
    List<TextWen> selectTextWen(Integer id,int curr,int limit,int text_status);

    /**
     *前台个数
     * @param text_label
     * @param text_status
     * @return
     */
    int selectTextWenCountData(String text_label,int text_status);

    /**
     * 前台显示所有数据
     * @param text_label
     * @param curr
     * @param limit
     * @return
     */

    List<TextWen> selectTextWenData(String text_label,int curr,int limit,int text_status);




    /**
     * 查询是否已经有了
     * @param username
     * @return
     */

    List<Cllect> selectCll(String username);

    /**
     * 收藏
     * @param text_id
     * @param username
     * @param cll_data
     * @return
     */
    int insertCllect(Integer text_id, String username, String cll_data);


    /**
     * 删除作者内容
     * @param textWen
     * @return
     */

    int selectText(TextWen textWen);


    /**
     * 后端内容数量
     * @return
     */

    int selectTextWenCountGeneraData(Integer text_id,String text_name,String text_label, Integer text_rec_id);

    /**
     * 后台内容列表
     * @param page
     * @param limit
     * @return
     */
    List<TextWen> GeneralList( int page, int limit,Integer text_id,String text_name,String text_label, Integer text_rec_id);


    /**
     * 后台删除内容
     * @param text_id
     * @return
     */
    int StaDelete(int text_id);


    /**
     * 后修改内容的状态
     * @param text_id
     * @param text_status
     * @return
     */
    int StaUpdate( int text_id, int text_status);

}
