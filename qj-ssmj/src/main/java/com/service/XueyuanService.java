package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XueyuanEntity;
import java.util.Map;

/**
 * 学院表 服务类
 * @author 
 * @since 2021-02-23
 */
public interface XueyuanService extends IService<XueyuanEntity> {

     PageUtils queryPage(Map<String, Object> params);

}