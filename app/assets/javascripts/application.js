// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require project_survey.validations

$(function(){  // $(document).ready shorthand
	$('#content').animate({opacity: 1}, 1000);
	
	//$("#project_survey_unpaid_undergrads_needed").attr("checked",true);
  //$('#content').css('visibility','visible').hide().fadeIn('slow');

 //$("#project_survey_paid_undergrads_needed").attr('checked', false)

 $("#project_survey_unpaid_undergrads_needed").change(function()
  {
 		this.checked ? $('#unpaidUnderGrad').slideDown() : $('#unpaidUnderGrad').slideUp();
  });
  
  $("#project_survey_paid_undergrads_needed").change(function()
  {
 		this.checked ? $('#paidUnderGrad').slideDown() : $('#paidUnderGrad').slideUp();
  });
  
  $("#project_survey_unpaid_grads_needed").change(function()
  {
 		this.checked ? $('#unpaidGrad').slideDown() : $('#unpaidGrad').slideUp();
  });
  
  $("#project_survey_paid_grads_needed").change(function()
  {
 		this.checked ? $('#paidGrad').slideDown() : $('#paidGrad').slideUp();
  });
  
   $("#project_survey_post_docs_needed").change(function()
  {
 		this.checked ? $('#postdoc').slideDown() : $('#postdoc').slideUp();
  });
  
	
 $('.projectTitle').click(function() {
    $('.editProjectSurvey').slideToggle();
	});
});


