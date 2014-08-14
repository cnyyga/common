// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}


$(function(){
    var _deleteUrl
    var _tr
    $(".delete").on("click",function(e){
        e.preventDefault();
        _deleteUrl = $(this).attr("rel");
        _tr = $(this).parents("tr");
        $('.bs-delete-modal-sm').modal('show');
    })
    $(".bs-delete-modal-sm .btn-primary").on("click",function(){
        $('.bs-delete-modal-sm').modal('hide');
        $.post(_deleteUrl,{_method:'delete'},function(data){
            if(data.status == '1') {
                if(!_tr || _tr.length == 0)  {
                    window.location.href = "../index"
                }else{
                    _tr.fadeOut()  ;
                    _tr = null
                }
            }
        },'json')
    })
})
