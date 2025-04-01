package com.entity.view;

import com.entity.QingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;

/**
 * 请假表
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email
 * @date 2021-02-23
 */
@TableName("qingjia")
public class QingjiaView extends QingjiaEntity implements Serializable {
    private static final long serialVersionUID = 1L;

	public QingjiaView() {

	}

	public QingjiaView(QingjiaEntity qingjiaEntity) {
		try {
			BeanUtils.copyProperties(this, qingjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
