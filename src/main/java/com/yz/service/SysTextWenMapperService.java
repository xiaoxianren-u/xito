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
    int selectTextWenCount(@Param("id") Integer id);


    /**
     * 显示个人所有数据
     * @param id
     * @return 内容列表
     */
    List<TextWen> selectTextWen(Integer id,int curr,int limit);

    /**
     *前端内容条数
     * @param text_label
     * @return
     */
    int selectTextWenCountData(@Param("text_label") String text_label);

    /**
     * 显示所有数据
     * @param text_label
     * @param curr
     * @param limit
     * @return
     */

    List<TextWen> selectTextWenData(@Param("text_label") String text_label,@Param("curr")  int curr,@Param("limit")  int limit);




    /**
     * 查询是否已经有了
     * @param username
     * @return
     */

    List<Cllect> selectCll(@Param("username") String username);

    /**
     * 收藏
     * @param text_id
     * @param username
     * @param cll_data
     * @return
     */
    int insertCllect(@Param("text_id") Integer text_id,@Param("username") String username,@Param("cll_data") String cll_data);


    /**
     * 删除作者内容
     * @param textWen
     * @return
     */

    int selectText(TextWen textWen);

}
