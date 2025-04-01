package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BanjiEntity;
import java.util.Map;

/**
 * 班级表 服务类
 * @author 
 * @since 2021-02-23
 */
public interface BanjiService extends IService<BanjiEntity> {

     PageUtils queryPage(Map<String, Object> params);

}