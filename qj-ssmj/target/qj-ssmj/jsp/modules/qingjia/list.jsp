<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">请假表管理</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">请假表管理</li>
                        <li class="breadcrumb-item active">请假表列表</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">请假表列表</h3>
                        <div class="table-responsive mb-3">
                            <div class="col-sm-12">
                                                                                                 
                                            <label>
                                                学院
                                                <select name="xyTypesSelectSearch" id="xyTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                 
                                            <label>
                                                专业
                                                <select name="zyTypesSelectSearch" id="zyTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                 
                                            <label>
                                                班级
                                                <select name="bjTypesSelectSearch" id="bjTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                 
                                            <label>
                                                请假类型
                                                <select name="qjTypesSelectSearch" id="qjTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                                                                                                                
                                <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                <button onclick="add()" type="button" class="btn btn-success 新增">申请请假</button>
                                <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                <button onclick="graph()" type="button" class="btn btn-danger 报表">报表</button>
                            </div>
                            <table id="tableId" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="no-sort" style="min-width: 35px;">
                                        <div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" type="checkbox" id="select-all"
                                                   onclick="chooseAll()">
                                            <label class="custom-control-label" for="select-all"></label>
                                        </div>
                                    </th>
                                    <th onclick="sort('xsTypes')">学生</th>
                                    <th onclick="sort('xyTypes')">学院</th>
                                    <th onclick="sort('zyTypes')">专业</th>
                                    <th onclick="sort('bjTypes')">班级</th>
                                    <th onclick="sort('qjTypes')">请假类型</th>
                                    <th onclick="sort('startTime')">开始时间</th>
                                    <th onclick="sort('finishTime')">结束时间</th>
                                    <th onclick="sort('spTypes')">审批状态</th>
                                    <th onclick="sort('noticeContent')">请假原因</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div class="col-md-6 col-sm-3">
                                <div class="dataTables_length" id="tableId_length">

                                    <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                            onchange="changePageSize()">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>
                                    条 每页

                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                        <a class="page-link" href="#" tabindex="-1">上一页</a>
                                    </li>

                                    <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                        <a class="page-link" href="#">下一页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script language="javascript" type="text/javascript"
        src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>
            <%@ include file="../../static/getRoleButtons.js"%>
            <%@ include file="../../static/crossBtnControl.js"%>
    var tableName = "qingjia";
    var pageType = "list";
    var searchForm = {key: ""};
    var pageIndex = 1;
    var pageSize = 10;
    var totalPage = 0;
    var dataList = [];
    var sortColumn = '';
    var sortOrder = '';
    var ids = [];
    var checkAll = false;

            var xsTypesOptions = [];
            var xyTypesOptions = [];
            var zyTypesOptions = [];
            var bjTypesOptions = [];
            var qjTypesOptions = [];
            var spTypesOptions = [];

    function init() {
        // 满足条件渲染提醒接口
    }

    // 改变每页记录条数
    function changePageSize() {
        var selection = document.getElementById('selectPageSize');
        var index = selection.selectedIndex;
        pageSize = selection.options[index].value;
        getDataList();
    }



    // 查询
    function search() {
        searchForm = {key: ""};
             
        var xyTypesIndex = document.getElementById("xyTypesSelectSearch").selectedIndex;
        var xyTypesValue;
        if( xyTypesIndex  == 0){
                xyTypesValue='';
        }else{
                xyTypesValue= document.getElementById("xyTypesSelectSearch").options[xyTypesIndex].value;
        }

        searchForm.xyTypes = xyTypesValue;

     
        var zyTypesIndex = document.getElementById("zyTypesSelectSearch").selectedIndex;
        var zyTypesValue;
        if( zyTypesIndex  == 0){
                zyTypesValue='';
        }else{
                zyTypesValue= document.getElementById("zyTypesSelectSearch").options[zyTypesIndex].value;
        }

        searchForm.zyTypes = zyTypesValue;

     
        var bjTypesIndex = document.getElementById("bjTypesSelectSearch").selectedIndex;
        var bjTypesValue;
        if( bjTypesIndex  == 0){
                bjTypesValue='';
        }else{
                bjTypesValue= document.getElementById("bjTypesSelectSearch").options[bjTypesIndex].value;
        }

        searchForm.bjTypes = bjTypesValue;

     
        var qjTypesIndex = document.getElementById("qjTypesSelectSearch").selectedIndex;
        var qjTypesValue;
        if( qjTypesIndex  == 0){
                qjTypesValue='';
        }else{
                qjTypesValue= document.getElementById("qjTypesSelectSearch").options[qjTypesIndex].value;
        }

        searchForm.qjTypes = qjTypesValue;

                        getDataList();
    }

    // 获取数据列表
    function getDataList() {
        http("qingjia/page", "GET", {
            page: pageIndex,
            limit: pageSize,
            sort: sortColumn,
            order: sortOrder,
                    xyTypes: searchForm.xyTypes,
                    zyTypes: searchForm.zyTypes,
                    bjTypes: searchForm.bjTypes,
                    qjTypes: searchForm.qjTypes,
    }, (res) => {
            if(res.code == 0
            )
            {
                clear();
                dataList = res.data.list;
                totalPage = res.data.totalPage;
                //var tbody = document.getElementById('tbMain');
                for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                    var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                    $('tbody').append(trow);
                }
                pagination(); //渲染翻页组件
                getRoleButtons();// 权限按钮控制
            }
        })
        ;
    }

    // 渲染表格数据
    function setDataRow(item, number) {
        //创建行 
        var row = document.createElement('tr');
        row.setAttribute('class', 'useOnce');
        //创建勾选框
        var checkbox = document.createElement('td');
        var checkboxDiv = document.createElement('div');
        checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
        var checkboxInput = document.createElement('input');
        checkboxInput.setAttribute("class", "custom-control-input");
        checkboxInput.setAttribute("type", "checkbox");
        checkboxInput.setAttribute('name', 'chk');
        checkboxInput.setAttribute('value', item.id);
        checkboxInput.setAttribute("id", number);
        checkboxDiv.appendChild(checkboxInput);
        var checkboxLabel = document.createElement('label');
        checkboxLabel.setAttribute("class", "custom-control-label");
        checkboxLabel.setAttribute("for", number);
        checkboxDiv.appendChild(checkboxLabel);
        checkbox.appendChild(checkboxDiv);
        row.appendChild(checkbox)

        var xsTypesCell = document.createElement('td');
        for (var i = 0; i < xsTypesOptions.length; i++) {
            if(xsTypesOptions[i].id == item.xsTypes){//下拉框value对比,如果一致就赋值汉字
                    xsTypesCell.innerHTML = xsTypesOptions[i].name;
            }
        }
        row.appendChild(xsTypesCell);

        var xyTypesCell = document.createElement('td');
        for (var i = 0; i < xyTypesOptions.length; i++) {
            if(xyTypesOptions[i].id == item.xyTypes){//下拉框value对比,如果一致就赋值汉字
                    xyTypesCell.innerHTML = xyTypesOptions[i].name;
            }
        }
        row.appendChild(xyTypesCell);

        var zyTypesCell = document.createElement('td');
        for (var i = 0; i < zyTypesOptions.length; i++) {
            if(zyTypesOptions[i].id == item.zyTypes){//下拉框value对比,如果一致就赋值汉字
                    zyTypesCell.innerHTML = zyTypesOptions[i].name;
            }
        }
        row.appendChild(zyTypesCell);

        var bjTypesCell = document.createElement('td');
        for (var i = 0; i < bjTypesOptions.length; i++) {
            if(bjTypesOptions[i].id == item.bjTypes){//下拉框value对比,如果一致就赋值汉字
                    bjTypesCell.innerHTML = bjTypesOptions[i].name;
            }
        }
        row.appendChild(bjTypesCell);

        var qjTypesCell = document.createElement('td');
        for (var i = 0; i < qjTypesOptions.length; i++) {
            if(qjTypesOptions[i].id == item.qjTypes){//下拉框value对比,如果一致就赋值汉字
                    qjTypesCell.innerHTML = qjTypesOptions[i].indexName;
            }
        }
        row.appendChild(qjTypesCell);

        var startTimeCell = document.createElement('td');
        startTimeCell.innerHTML = item.startTime;
        row.appendChild(startTimeCell);

        var finishTimeCell = document.createElement('td');
        finishTimeCell.innerHTML = item.finishTime;
        row.appendChild(finishTimeCell);

        var spTypesCell = document.createElement('td');
        for (var i = 0; i < spTypesOptions.length; i++) {
            if(spTypesOptions[i].id == item.spTypes){//下拉框value对比,如果一致就赋值汉字
                    spTypesCell.innerHTML = spTypesOptions[i].indexName;
            }
        }
        row.appendChild(spTypesCell);

        var noticeContentCell = document.createElement('td');

        //如果图文详情包含图片
        if (item.noticeContent && item.noticeContent.indexOf('img') != -1) {
            //暂时只考虑图片+文字 和 文字+图片的情况
            var beginIndex = item.noticeContent.indexOf('<img');
            var endIndex = item.noticeContent.indexOf('>');
                noticeContentCell.innerHTML = item.noticeContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
        } else {
            if (item.noticeContent != null && item.noticeContent != "" && item.noticeContent.length >= 11) {
                    noticeContentCell.innerHTML = item.noticeContent.substring(0, 10) + "...";
            } else {
                    noticeContentCell.innerHTML = item.noticeContent;
            }
        }

        row.appendChild(noticeContentCell);

        //每行按钮
        var btnGroup = document.createElement('td');

        //详情按钮
        var detailBtn = document.createElement('button');
        var detailAttr = "detail(" + item.id + ')';
        detailBtn.setAttribute("type", "button");
        detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
        detailBtn.setAttribute("onclick", detailAttr);
        detailBtn.innerHTML = "查看"
        btnGroup.appendChild(detailBtn)
        //修改按钮
        var editBtn = document.createElement('button');
        var editAttr = 'edit(' + item.id + ')';
        editBtn.setAttribute("type", "button");
        editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
        editBtn.setAttribute("onclick", editAttr);
        editBtn.innerHTML = "修改"
        btnGroup.appendChild(editBtn)
        //删除按钮
        var deleteBtn = document.createElement('button');
        var deleteAttr = 'remove(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "删除"
        btnGroup.appendChild(deleteBtn)

        var deleteBtn = document.createElement('button');
        var deleteAttr = 'transit(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 审批");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "审批"
        btnGroup.appendChild(deleteBtn)

        var deleteBtn = document.createElement('button');
        var deleteAttr = 'reject(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 驳回");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "驳回"
        btnGroup.appendChild(deleteBtn)

        row.appendChild(btnGroup)
        return row;
    }

    //搜素输入检查

    // 翻页
    function pageNumChange(val) {
        if (val == 'pre') {
            pageIndex--;
        } else if (val == 'next') {
            pageIndex++;
        } else {
            pageIndex = val;
        }
        getDataList();
    }

    // 下载
    function download(url) {
        window.open(url);
    }

    // 打开新窗口播放媒体
    function mediaPlay(url) {
        window.open(url);
    }

    // 渲染翻页组件
    function pagination() {
        var beginIndex = pageIndex;
        var endIndex = pageIndex;
        var point = 4;
        //计算页码
        for (var i = 0; i < 3; i++) {
            if (endIndex == totalPage) {
                break;
            }
            endIndex++;
            point--;
        }
        for (var i = 0; i < 3; i++) {
            if (beginIndex == 1) {
                break;
            }
            beginIndex--;
            point--;
        }
        if (point > 0) {
            while (point > 0) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            while (point > 0) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--
            }
        }
        // 是否显示 前一页 按钮
        if (pageIndex > 1) {
            $('#tableId_previous').show();
        } else {
            $('#tableId_previous').hide();
        }
        // 渲染页码按钮
        for (var i = beginIndex; i <= endIndex; i++) {
            var pageNum = document.createElement('li');
            pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
            if (pageIndex == i) {
                pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
            } else {
                pageNum.setAttribute('class', 'paginate_button page-item useOnce');
            }
            var pageHref = document.createElement('a');
            pageHref.setAttribute('class', 'page-link');
            pageHref.setAttribute('href', '#');
            pageHref.setAttribute('aria-controls', 'tableId');
            pageHref.setAttribute('data-dt-idx', i);
            pageHref.setAttribute('tabindex', 0);
            pageHref.innerHTML = i;
            pageNum.appendChild(pageHref);
            $('#tableId_next').before(pageNum);
        }
        // 是否显示 下一页 按钮
        if (pageIndex < totalPage) {
            $('#tableId_next').show();
            $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
        } else {
            $('#tableId_next').hide();
        }
        var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
        $('#tableId_info').html(pageNumInfo);
    }

    // 跳转到指定页
    function toThatPage() {
        //var index = document.getElementById('pageIndexInput').value;
        if (index < 0 || index > totalPage) {
            alert('请输入正确的页码');
        } else {
            pageNumChange(index);
        }
    }

    // 全选/全不选
    function chooseAll() {
        checkAll = !checkAll;
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            boxs[i].checked = checkAll;
        }
    }

    // 批量删除
    function deleteMore() {
        ids = []
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            if (boxs[i].checked) {
                ids.push(boxs[i].value)
            }
        }
        if (ids.length == 0) {
            alert('请勾选要删除的记录');
        } else {
            remove(ids);
        }
    }



    // 删除
    function transit(id) {
        var mymessage = confirm("真的要同意吗？");
        if (mymessage == true) {
                paramArray = id;
            httpJson("qingjia/transit", "POST", paramArray, (res) => {
                if(res.code == 0
        )
            {
                getDataList();
                alert('请假请求已同意');
            }
        })
            ;
        }
        else {
            alert("已取消操作");
        }
    }

    // 删除
    function reject(id) {
        var mymessage = confirm("真的要驳回吗？");
        if (mymessage == true) {
                paramArray = id;
            httpJson("qingjia/reject", "POST", paramArray, (res) => {
                if(res.code == 0
        )
            {
                getDataList();
                alert('请假请求驳回成功');
            }
        })
            ;
        }
        else {
            alert("已取消操作");
        }
    }

    // 删除
    function remove(id) {
        var mymessage = confirm("真的要删除吗？");
        if (mymessage == true) {
            var paramArray = [];
            if (id == ids) {
                paramArray = id;
            } else {
                paramArray.push(id);
            }
            httpJson("qingjia/delete", "POST", paramArray, (res) => {
                if(res.code == 0
        )
            {
                getDataList();
                alert('删除成功');
            }
        })
            ;
        }
        else {
            alert("已取消操作");
        }
    }

    // 用户登出
    <%@ include file="../../static/logout.jsp"%>

            //修改
            function edit(id) {
                window.sessionStorage.setItem('updateId', id)
                window.location.href = "add-or-update.jsp"
            }

    //清除会重复渲染的节点
    function clear() {
        var elements = document.getElementsByClassName('useOnce');
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    //添加
    function add() {
        window.location.href = "add-or-update.jsp"
    }

    //报表
    function graph() {
        window.location.href = "graph.jsp"
    }

    //单列求和
    function getSum(colName) {
        http("qingjia" + colName, "GET", {
            tableName: "qingjia",
            columnName: colName
        }, (res) => {
            if(res.code == 0
    )
        {
            return res.data.sum;
        }
    })
        ;
    }

    // 查看详情
    function detail(id) {
        window.sessionStorage.setItem("id", id);
        //window.sessionStorage.setItem("ifView", true);
        window.location.href = "info.jsp";
    }

    //填充搜索下拉框
             
            function xyTypesSelectSearch() {
                var xyTypesSelectSearch = document.getElementById('xyTypesSelectSearch');
                    xyTypesSelectSearch.add(new Option('请选择',''));
                for (var i = 0; i < xyTypesOptions.length; i++) {
                        xyTypesSelectSearch.add(new Option(xyTypesOptions[i].name,xyTypesOptions[i].id));
                }
            }
     
            function zyTypesSelectSearch() {
                var zyTypesSelectSearch = document.getElementById('zyTypesSelectSearch');
                    zyTypesSelectSearch.add(new Option('请选择',''));
                for (var i = 0; i < zyTypesOptions.length; i++) {
                        zyTypesSelectSearch.add(new Option(zyTypesOptions[i].name,zyTypesOptions[i].id));
                }
            }
     
            function bjTypesSelectSearch() {
                var bjTypesSelectSearch = document.getElementById('bjTypesSelectSearch');
                    bjTypesSelectSearch.add(new Option('请选择',''));
                for (var i = 0; i < bjTypesOptions.length; i++) {
                        bjTypesSelectSearch.add(new Option(bjTypesOptions[i].name,bjTypesOptions[i].id));
                }
            }
     
            function qjTypesSelectSearch() {
                var qjTypesSelectSearch = document.getElementById('qjTypesSelectSearch');
                    qjTypesSelectSearch.add(new Option('请选择',''));
                for (var i = 0; i < qjTypesOptions.length; i++) {
                        qjTypesSelectSearch.add(new Option(qjTypesOptions[i].indexName,qjTypesOptions[i].id));
                }
            }
                

    //查询当前页面下所有列表
        function xsTypesSelect() {
            //填充下拉框选项
            http("xueshengxinxi/page?page=1&limit=100&sort=&order=&dicCode=xs_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xsTypesOptions = res.data.list;
            }
        });
        }
        function xyTypesSelect() {
            //填充下拉框选项
            http("xueyuan/page?page=1&limit=100&sort=&order=&dicCode=xy_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xyTypesOptions = res.data.list;
            }
        });
        }
        function zyTypesSelect() {
            //填充下拉框选项
            http("zhuanye/page?page=1&limit=100&sort=&order=&dicCode=zy_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zyTypesOptions = res.data.list;
            }
        });
        }
        function bjTypesSelect() {
            //填充下拉框选项
            http("banji/page?page=1&limit=100&sort=&order=&dicCode=bj_types", "GET", {}, (res) => {
                if(res.code == 0){
                    bjTypesOptions = res.data.list;
            }
        });
        }
        function qjTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=qj_types", "GET", {}, (res) => {
                if(res.code == 0){
                    qjTypesOptions = res.data.list;
            }
        });
        }
        function spTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=sp_types", "GET", {}, (res) => {
                if(res.code == 0){
                    spTypesOptions = res.data.list;
            }
        });
        }
    //跨表
    function crossTable(id, crossTableName) {
        window.sessionStorage.setItem('crossTableId', id);
        window.sessionStorage.setItem('crossTableName', "qingjia");
        var url = "../" + crossTableName + "/add-or-update.jsp";
        window.location.href = url;
    }


    $(document).ready(function () {
        //激活翻页按钮
        $('#tableId_previous').attr('class', 'paginate_button page-item previous')
        $('#tableId_next').attr('class', 'paginate_button page-item next')
        //隐藏原生搜索框
        $('#tableId_filter').hide()
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        init();

        //查询当前页面所有下拉框
        xsTypesSelect();
        xyTypesSelect();
        zyTypesSelect();
        bjTypesSelect();
        qjTypesSelect();
        spTypesSelect();
        getDataList();


        //下拉框赋值
                                     
            xyTypesSelectSearch();
             
            zyTypesSelectSearch();
             
            bjTypesSelectSearch();
             
            qjTypesSelectSearch();
                                                
    <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>