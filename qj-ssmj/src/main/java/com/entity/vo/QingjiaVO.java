package com.entity.vo;

import com.entity.QingjiaEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 请假表
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email
 * @date 2021-02-23
 */
@TableName("qingjia")
public class QingjiaVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 学生
     */

    @TableField(value = "xs_types")
    private Integer xsTypes;


    /**
     * 学院 Search
     */

    @TableField(value = "xy_types")
    private Integer xyTypes;


    /**
     * 专业 Search
     */

    @TableField(value = "zy_types")
    private Integer zyTypes;


    /**
     * 班级 Search
     */

    @TableField(value = "bj_types")
    private Integer bjTypes;


    /**
     * 请假类型 Search
     */

    @TableField(value = "qj_types")
    private Integer qjTypes;


    /**
     * 开始时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "start_time")
    private Date startTime;


    /**
     * 结束时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "finish_time")
    private Date finishTime;


    /**
     * 审批状态
     */

    @TableField(value = "sp_types")
    private Integer spTypes;


    /**
     * 请假原因
     */

    @TableField(value = "notice_content")
    private String noticeContent;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：学生
	 */
    public Integer getXsTypes() {
        return xsTypes;
    }


    /**
	 * 获取：学生
	 */

    public void setXsTypes(Integer xsTypes) {
        this.xsTypes = xsTypes;
    }
    /**
	 * 设置：学院 Search
	 */
    public Integer getXyTypes() {
        return xyTypes;
    }


    /**
	 * 获取：学院 Search
	 */

    public void setXyTypes(Integer xyTypes) {
        this.xyTypes = xyTypes;
    }
    /**
	 * 设置：专业 Search
	 */
    public Integer getZyTypes() {
        return zyTypes;
    }


    /**
	 * 获取：专业 Search
	 */

    public void setZyTypes(Integer zyTypes) {
        this.zyTypes = zyTypes;
    }
    /**
	 * 设置：班级 Search
	 */
    public Integer getBjTypes() {
        return bjTypes;
    }


    /**
	 * 获取：班级 Search
	 */

    public void setBjTypes(Integer bjTypes) {
        this.bjTypes = bjTypes;
    }
    /**
	 * 设置：请假类型 Search
	 */
    public Integer getQjTypes() {
        return qjTypes;
    }


    /**
	 * 获取：请假类型 Search
	 */

    public void setQjTypes(Integer qjTypes) {
        this.qjTypes = qjTypes;
    }
    /**
	 * 设置：开始时间
	 */
    public Date getStartTime() {
        return startTime;
    }


    /**
	 * 获取：开始时间
	 */

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
    /**
	 * 设置：结束时间
	 */
    public Date getFinishTime() {
        return finishTime;
    }


    /**
	 * 获取：结束时间
	 */

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }
    /**
	 * 设置：审批状态
	 */
    public Integer getSpTypes() {
        return spTypes;
    }


    /**
	 * 获取：审批状态
	 */

    public void setSpTypes(Integer spTypes) {
        this.spTypes = spTypes;
    }
    /**
	 * 设置：请假原因
	 */
    public String getNoticeContent() {
        return noticeContent;
    }


    /**
	 * 获取：请假原因
	 */

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }

}
