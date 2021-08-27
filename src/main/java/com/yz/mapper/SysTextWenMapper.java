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
     *  个人内容数量
     * @param id 用户id
     * @return 数量
     */

    int selectTextWenCount(@Param("id") Integer id,@Param("text_status") int text_status);

    /**
     * 显示所有个人内容数据
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
    int selectTextWenCountData(@Param("text_label") String text_label,@Param("text_status") int text_status);


    /**
     * 前端内容数据
     * @param text_label
     * @param curr
     * @param limit
     * @return
     */
    List<TextWen> selectTextWenData(@Param("text_label") String text_label,@Param("curr")  int curr,@Param("limit")  int limit,@Param("text_status") int text_status);

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


    /**
     * 后端内容数量
     * @return
     */

    int selectTextWenCountGeneraData(@Param("text_id") Integer  text_id,@Param("text_name") String text_name,@Param("text_label") String text_label,@Param("text_rec_id") Integer text_rec_id);


    /**
     * 后台内容列表
     * @param page
     * @param limit
     * @return
     */
    List<TextWen> GeneralList(@Param("page") int page,@Param("limit") int limit,@Param("text_id") Integer  text_id,@Param("text_name") String text_name,@Param("text_label") String text_label,@Param("text_rec_id") Integer  text_rec_id);


    /**
     * 后台删除内容
     * @param text_id
     * @return
     */
    int StaDelete(@Param("text_id") int text_id);


    /**
     * 后修改内容的状态
     * @param text_id
     * @param text_status
     * @return
     */
    int StaUpdate(@Param("text_id") int text_id,@Param("text_status") int text_status);

    /**
     * 显示内容
     * @param text_id
     * @return
     */
    TextWen explainDataText(@Param("text_id") Integer text_id);

}
