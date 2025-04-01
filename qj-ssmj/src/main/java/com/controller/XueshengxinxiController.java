package com.controller;

import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.http.HttpServletRequest;

import com.annotation.IgnoreAuth;
import com.service.TokenService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;

import com.entity.XueshengxinxiEntity;

import com.service.XueshengxinxiService;
import com.utils.PageUtils;
import com.utils.R;

/**
 * 
 * 后端接口
 * @author
 * @email
 * @date 2021-02-22
*/
@RestController
@Controller
@RequestMapping("/xueshengxinxi")
public class XueshengxinxiController {
    private static final Logger logger = LoggerFactory.getLogger(XueshengxinxiController.class);

    @Autowired
    private XueshengxinxiService xueshengxinxiService;

    @Autowired
    private TokenService tokenService;

    /**
     * 登录
     */
    @IgnoreAuth
    @PostMapping(value = "/login")
    public R login(String username, String password, String role, HttpServletRequest request) {
        XueshengxinxiEntity user = xueshengxinxiService.selectOne(new EntityWrapper<XueshengxinxiEntity>().eq("account", username));
        if(user != null){
            if(!user.getRole().equals(role)){
                return R.error("权限不正常");
            }
            if(user==null || !user.getPassword().equals(password)) {
                return R.error("账号或密码不正确");
            }
            String token = tokenService.generateToken(user.getId(),user.getName(), "users", user.getRole());
            return R.ok().put("token", token);
        }else{
            return R.error("账号或密码或权限不对");
        }

    }

    /**
     * 注册
     */
    @IgnoreAuth
    @PostMapping(value = "/register")
    public R register(@RequestBody XueshengxinxiEntity user){
        if(xueshengxinxiService.selectOne(new EntityWrapper<XueshengxinxiEntity>().eq("account", user.getAccount())) !=null) {
            return R.error("学生已存在");
        }
        user.setRole("学生");
        xueshengxinxiService.insert(user);
        return R.ok();
    }

    /**
     * 退出
     */
    @GetMapping(value = "logout")
    public R logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return R.ok("退出成功");
    }

    /**
     * 密码重置
     */
    @IgnoreAuth
    @RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
        XueshengxinxiEntity user = xueshengxinxiService.selectOne(new EntityWrapper<XueshengxinxiEntity>().eq("username", username));
        if(user==null) {
            return R.error("账号不存在");
        }
        user.setPassword("123456");
        xueshengxinxiService.update(user,null);
        return R.ok("密码已重置为：123456");
    }

    /**
     * 获取用户的session用户信息
     */
    @RequestMapping("/session")
    public R getCurrUser(HttpServletRequest request){
        Integer id = (Integer)request.getSession().getAttribute("userId");
        XueshengxinxiEntity user = xueshengxinxiService.selectById(id);
        return R.ok().put("data", user);
    }

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
            page = xueshengxinxiService.queryPage(params);
        }else{
            page = xueshengxinxiService.queryPage(params);
        }
        return R.ok().put("data", page);
    }
    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        logger.debug("Controller:"+this.getClass().getName()+",info方法");
        XueshengxinxiEntity xueshengxinxi = xueshengxinxiService.selectById(id);
        if(xueshengxinxi!=null){
            return R.ok().put("data", xueshengxinxi);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @IgnoreAuth
    @RequestMapping("/save")
    public R save(@RequestBody XueshengxinxiEntity xueshengxinxi, HttpServletRequest request){
        logger.debug("Controller:"+this.getClass().getName()+",save");
        Wrapper<XueshengxinxiEntity> queryWrapper = new EntityWrapper<XueshengxinxiEntity>()
            .eq("name", xueshengxinxi.getName())
            .eq("account", xueshengxinxi.getAccount())
            .eq("password", xueshengxinxi.getPassword())
            .eq("sex_types", xueshengxinxi.getSexTypes())
            .eq("role", xueshengxinxi.getRole())
            ;
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        XueshengxinxiEntity xueshengxinxiEntity = xueshengxinxiService.selectOne(queryWrapper);
        if("".equals(xueshengxinxi.getImgPhoto()) || "null".equals(xueshengxinxi.getImgPhoto())){
            xueshengxinxi.setImgPhoto(null);
        }
        xueshengxinxi.setRole("学生");
        if(xueshengxinxiEntity==null){
            xueshengxinxiService.insert(xueshengxinxi);
            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

    /**
    * 修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody XueshengxinxiEntity xueshengxinxi, HttpServletRequest request){
        logger.debug("Controller:"+this.getClass().getName()+",update");
        //根据字段查询是否有相同数据
        Wrapper<XueshengxinxiEntity> queryWrapper = new EntityWrapper<XueshengxinxiEntity>()
            .notIn("id",xueshengxinxi.getId())
            .eq("name", xueshengxinxi.getName())
            .eq("account", xueshengxinxi.getAccount())
            .eq("password", xueshengxinxi.getPassword())
            .eq("sex_types", xueshengxinxi.getSexTypes())
            .eq("role", xueshengxinxi.getRole())
            ;
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        XueshengxinxiEntity xueshengxinxiEntity = xueshengxinxiService.selectOne(queryWrapper);
        if("".equals(xueshengxinxi.getImgPhoto()) || "null".equals(xueshengxinxi.getImgPhoto())){
                xueshengxinxi.setImgPhoto(null);
        }
        if(xueshengxinxiEntity==null){
            xueshengxinxiService.updateById(xueshengxinxi);//根据id更新
            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }


    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        logger.debug("Controller:"+this.getClass().getName()+",delete");
        xueshengxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
}

