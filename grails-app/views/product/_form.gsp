<%@ page import="com.wll.Product" %>



<div class="form-group">
    <label for="name" class="col-sm-2 control-label">
        <g:message code="product.name.label" default="Name" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="name" required="" value="${productInstance?.name}"/>

    </div>
</div>

<div class="form-group">
    <label for="platform" class="col-sm-2 control-label">
        <g:message code="product.platform.label" default="Platform" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:select name="platform" from="${com.wll.Platforms?.values()}" optionValue="label"  required="" value="${productInstance?.platform?.id}" />

    </div>
</div>

<div class="form-group">
    <label for="url" class="col-sm-2 control-label">
        <g:message code="product.url.label" default="Url" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control"  name="url" required="" value="${productInstance?.url}"/>

    </div>
</div>


<div class="form-group">
    <label for="enabled" class="col-sm-2 control-label">
        <g:message code="product.enabled.label" default="Enabled" />
        
    </label>
    <div class="col-sm-6">
        <g:checkBox name="enabled" value="${productInstance?.enabled}" />
    </div>
</div>

<div class="form-group">
    <label for="description" class="col-sm-2 control-label">
        <g:message code="product.description.label" default="Description" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textArea class="form-control"  name="description" >${productInstance?.description}</g:textArea>

    </div>
</div>



