<%--
Created by IntelliJ IDEA.
User: JinKun
Date: 2016-12-30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 工具栏 -->
<div id="SysUserToolbar">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" plain="true" onclick="javascript:SysUser.list.add()">增加</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" plain="true" onclick="javascript:SysUser.list.delete()">删除</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" plain="true" onclick="javascript:SysUser.list.edit()">编辑</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" plain="true" onclick="javascript:SysUser.list.reload()">刷新</a>
    <span style="float: right;margin-right: 10px;padding: 1px">
        <span>用户名:</span>
        <input lang="searchSysUser" name="name" style="line-height:19px;border:1px solid #ccc">
        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-clear'" plain="true" onclick="javascript:SysUser.list.clear()">清除</a>
        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" plain="true" onclick="javascript:SysUser.list.search()">搜索</a>
    </span>
</div>
<div class="easyui-panel" data-options="width:'100%',minHeight:600,border:false">
    <div class="easyui-layout" data-options="fit:true">
        <div data-options="region:'west',split:false,title:'组织机构'" style="width:15%;">
            <!-- 模块列表 -->
            <ul id="SysUserOrgTree"></ul>
        </div>
        <div data-options="region:'center',border:false">
            <!-- 列表 -->
            <table id="SysUserList" data-options="border:false" style="width: 100%;" title="用户"></table>
        </div>
    </div>
</div>
<!-- 弹窗  --> <!-- inline:true 不然多次打开tab会重复提交表单 -->
<div id="SysUserEdit" title="用户" data-options="iconCls: 'icon-save',closed: true,modal: true,inline:true" title="用户" style="width:1000px;height:500px;top: 100px;padding: 10px;display: none"></div>
<script src="<%=request.getContextPath()%>/jsp/sys/sys-user/sys-user.js"></script>
<script>
    SysUser.list.init('<%=request.getContextPath()%>');
</script>