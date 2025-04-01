<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{
	"backMenu": [{
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "学生信息",
			"menuJump": "列表",
			"tableName": "xueshengxinxi"
		}],
		"menu": "学生管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "老师信息",
			"menuJump": "列表",
			"tableName": "laoshi"
		}],
		"menu": "老师管理"
	}, {
		"child": [{
			"buttons": ["修改", "删除", "审批", "驳回"],
			"menu": "请假申请信息",
			"menuJump": "列表",
			"tableName": "qingjia"
		}],
		"menu": "请假申请管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "专业信息",
			"menuJump": "列表",
			"tableName": "zhuanye"
		}],
		"menu": "专业管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "学院信息",
			"menuJump": "列表",
			"tableName": "xueyuan"
		}],
		"menu": "学院管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "班级信息",
			"menuJump": "列表",
			"tableName": "banji"
		}],
		"menu": "班级管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "留言信息",
			"menuJump": "列表",
			"tableName": "liuyanxinxi"
		}],
		"menu": "留言管理"
	}],
	"frontMenu": [],
	"roleName": "管理员",
	"tableName": "users"
}, {
	"backMenu": [{
		"child": [{
			"buttons": ["修改"],
			"menu": "老师信息",
			"menuJump": "列表",
			"tableName": "laoshi"
		}],
		"menu": "老师管理"
	}, {
		"child": [{
			"buttons": ["审批", "驳回"],
			"menu": "请假申请信息",
			"menuJump": "列表",
			"tableName": "qingjia"
		}],
		"menu": "请假申请管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改"],
			"menu": "专业信息",
			"menuJump": "列表",
			"tableName": "zhuanye"
		}],
		"menu": "专业管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改"],
			"menu": "学院信息",
			"menuJump": "列表",
			"tableName": "xueyuan"
		}],
		"menu": "学院管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改"],
			"menu": "班级信息",
			"menuJump": "列表",
			"tableName": "banji"
		}],
		"menu": "班级管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改"],
			"menu": "留言信息",
			"menuJump": "列表",
			"tableName": "liuyanxinxi"
		}],
		"menu": "留言管理"
	}],
	"frontMenu": [],
	"roleName": "老师",
	"tableName": "laoshi"
}, {
	"backMenu": [{
		"child": [{
			"buttons": ["新增"],
			"menu": "请假申请信息",
			"menuJump": "列表",
			"tableName": "qingjia"
		}],
		"menu": "请假申请管理"
	}, {
			"child": [{
			"buttons": ["修改"],
			"menu": "学生信息",
			"menuJump": "列表",
			"tableName": "xueshengxinxi"
		}],
		"menu": "学生管理"
	}, {
		"child": [{
			"buttons": ["新增"],
			"menu": "留言信息",
			"menuJump": "列表",
			"tableName": "liuyanxinxi"
		}],
		"menu": "留言管理"
	}],
	"frontMenu": [],
	"roleName": "学生",
	"tableName": "xueshengxinxi"
}];
var hasMessage = '';
