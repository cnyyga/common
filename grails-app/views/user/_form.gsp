<%@ page import="com.wll.User" %>



<div class="form-group">
    <label for="username" class="col-sm-2 control-label">
        <g:message code="user.username.label" default="Username" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="username" required="" value="${userInstance?.username}"/>

    </div>
</div>

<div class="form-group">
    <label for="password" class="col-sm-2 control-label">
        <g:message code="user.password.label" default="Password" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="password" required="" value="${userInstance?.password}"/>

    </div>
</div>

<div class="form-group">
    <label for="accountExpired" class="col-sm-2 control-label">
        <g:message code="user.accountExpired.label" default="Account Expired" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

    </div>
</div>

<div class="form-group">
    <label for="accountLocked" class="col-sm-2 control-label">
        <g:message code="user.accountLocked.label" default="Account Locked" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

    </div>
</div>

<div class="form-group">
    <label for="enabled" class="col-sm-2 control-label">
        <g:message code="user.enabled.label" default="Enabled" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="enabled" value="${userInstance?.enabled}" />

    </div>
</div>

<div class="form-group">
    <label for="passwordExpired" class="col-sm-2 control-label">
        <g:message code="user.passwordExpired.label" default="Password Expired" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

    </div>
</div>

