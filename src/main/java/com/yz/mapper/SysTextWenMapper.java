package com.yz.mapper;

import com.yz.pojo.Cllect;
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

    int selectTextWenCount(@Param("id") Integer id,@Param("text_status") int text_status);

    /**
     * 显示所有内容数据
     * @param id
     * @param curr
     * @param limit
     * @param text_status
     * @return
     */
    List<TextWen> selectTextWen(@Param("id") Integer id,@Param("curr")  int curr,@Param("limit")  int limit,@Param("text_status") int text_status);


    /**
     *前端内容条数
     * @param text_label
     * @return
     */
    int selectTextWenCountData(@Param("text_label") String text_label);


    /**
     * 作者推荐内容数据
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
