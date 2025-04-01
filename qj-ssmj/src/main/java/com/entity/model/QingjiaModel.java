package com.entity.model;

import com.entity.QingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 请假表
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 * @author 
 * @email
 * @date 2021-02-23
 */
public class QingjiaModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 学生
     */
    private Integer xsTypes;


    /**
     * 学院 Search
     */
    private Integer xyTypes;


    /**
     * 专业 Search
     */
    private Integer zyTypes;


    /**
     * 班级 Search
     */
    private Integer bjTypes;


    /**
     * 请假类型 Search
     */
    private Integer qjTypes;


    /**
     * 开始时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date startTime;


    /**
     * 结束时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date finishTime;


    /**
     * 审批状态
     */
    private Integer spTypes;


    /**
     * 请假原因
     */
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
