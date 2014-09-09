<%@ page import="com.wll.ProductVersion" %>

<g:if test="${!productVersionInstance.id}">
    <g:hiddenField name="product.id" value="${productVersionInstance?.product?.id}"/>
</g:if>
<div class="form-group">
    <label for="ver" class="col-sm-2 control-label">
        <g:message code="productVersion.ver.label" default="Ver" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="ver" required="" value="${productVersionInstance?.ver}"/>

    </div>
</div>

<div class="form-group">
    <label for="versionCode" class="col-sm-2 control-label">
        <g:message code="productVersion.versionCode.label" default="Version Code" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:field name="versionCode" type="number" value="${productVersionInstance.versionCode}" required=""/>

    </div>
</div>

<div class="form-group">
    <label for="size" class="col-sm-2 control-label">
        <g:message code="productVersion.size.label" default="Size" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="size" required="" value="${productVersionInstance?.size}"/>

    </div>
</div>

<div class="form-group">
    <label for="onlineDate" class="col-sm-2 control-label">
        <g:message code="productVersion.onlineDate.label" default="Online Date" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:datePicker name="onlineDate" precision="day"  value="${productVersionInstance?.onlineDate}"  />

    </div>
</div>

<div class="form-group">
    <label for="message" class="col-sm-2 control-label">
        <g:message code="productVersion.message.label" default="Message" />
        
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="message" value="${productVersionInstance?.message}"/>

    </div>
</div>

<div class="form-group">
    <label for="forceUpdate" class="col-sm-2 control-label">
        <g:message code="productVersion.forceUpdate.label" default="Force Update" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="forceUpdate" value="${productVersionInstance?.forceUpdate}" />

    </div>
</div>

<div class="form-group">
    <label for="enabled" class="col-sm-2 control-label">
        <g:message code="productVersion.enabled.label" default="Enabled" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="enabled" value="${productVersionInstance?.enabled}" />

    </div>
</div>


