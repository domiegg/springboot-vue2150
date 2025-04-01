package com.controller;

import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;

import com.entity.QingjiaEntity;

import com.service.QingjiaService;
import com.utils.PageUtils;
import com.utils.R;

/**
 * 请假表
 * 后端接口
 * @author
 * @email
 * @date 2021-02-23
*/
@RestController
@Controller
@RequestMapping("/qingjia")
public class QingjiaController {
    private static final Logger logger = LoggerFactory.getLogger(QingjiaController.class);

    @Autowired
    private QingjiaService qingjiaService;

    /**
    * 后端列表
    */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("Controller:"+this.getClass().getName()+",page方法");
        Object role = request.getSession().getAttribute("role");
        PageUtils page = null;
        if(role.equals("学生")){
            params.put("yh",request.getSession().getAttribute("userId"));
            page = qingjiaService.queryPage(params);
        }else{
            page = qingjiaService.queryPage(params);
        }
        return R.ok().put("data", page);
    }
    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        logger.debug("Controller:"+this.getClass().getName()+",info方法");
        QingjiaEntity qingjia = qingjiaService.selectById(id);
        if(qingjia!=null){
            return R.ok().put("data", qingjia);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @RequestMapping("/save")
    public R save(@RequestBody QingjiaEntity qingjia, HttpServletRequest request){
        logger.debug("Controller:"+this.getClass().getName()+",save");
        Wrapper<QingjiaEntity> queryWrapper = new EntityWrapper<QingjiaEntity>()
            .eq("xs_types", qingjia.getXsTypes())
            .eq("xy_types", qingjia.getXyTypes())
            .eq("zy_types", qingjia.getZyTypes())
            .eq("bj_types", qingjia.getBjTypes())
            .eq("qj_types", qingjia.getQjTypes())
            .eq("sp_types", qingjia.getSpTypes());
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        QingjiaEntity qingjiaEntity = qingjiaService.selectOne(queryWrapper);
        if(qingjiaEntity==null){
            qingjia.setSpTypes(3);
            qingjiaService.insert(qingjia);
            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

    /**
    * 修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody QingjiaEntity qingjia, HttpServletRequest request){
        logger.debug("Controller:"+this.getClass().getName()+",update");
        //根据字段查询是否有相同数据
        Wrapper<QingjiaEntity> queryWrapper = new EntityWrapper<QingjiaEntity>()
            .notIn("id",qingjia.getId())
            .eq("xs_types", qingjia.getXsTypes())
            .eq("xy_types", qingjia.getXyTypes())
            .eq("zy_types", qingjia.getZyTypes())
            .eq("bj_types", qingjia.getBjTypes())
            .eq("qj_types", qingjia.getQjTypes())
            .eq("sp_types", qingjia.getSpTypes());
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        QingjiaEntity qingjiaEntity = qingjiaService.selectOne(queryWrapper);
        if(qingjiaEntity==null){
            qingjiaService.updateById(qingjia);//根据id更新
            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

    /**
     * 驳回
     */
    @RequestMapping("/reject")
    public R reject(@RequestBody Long id){
        QingjiaEntity qingjia = qingjiaService.selectById(id);
        if(qingjia!=null){
            qingjia.setSpTypes(5);
            qingjiaService.updateById(qingjia);
            return R.ok();
        }

        return R.error();
    }


    /**
     * 通过
     */
    @RequestMapping("/transit")
    public R transit(@RequestBody Long id){
        QingjiaEntity qingjia = qingjiaService.selectById(id);
        if(qingjia!=null){
            qingjia.setSpTypes(4);
            qingjiaService.updateById(qingjia);
            return R.ok();
        }

        return R.error();
    }

    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        logger.debug("Controller:"+this.getClass().getName()+",delete");
        qingjiaService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
}

