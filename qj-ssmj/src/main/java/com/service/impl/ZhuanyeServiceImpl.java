package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;

import com.dao.ZhuanyeDao;
import com.entity.ZhuanyeEntity;
import com.service.ZhuanyeService;
import com.entity.view.ZhuanyeView;

/**
 * 专业表 服务实现类
 * @author 
 * @since 2021-02-23
 */
@Service("zhuanyeService")
@Transactional
public class ZhuanyeServiceImpl extends ServiceImpl<ZhuanyeDao, ZhuanyeEntity> implements ZhuanyeService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<ZhuanyeView> page =new Query<ZhuanyeView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }

}
