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
//= require twitter/bootstrap

$(document).ready(function() {
          $('.thumbnail .selectable').mouseover(function () {
              $(this).addClass('shadow1');
          })
          .mousedown(function () {
              $(this).removeClass('shadow1');
          })
          .mouseleave(function () {
              $(this).removeClass('shadow1');
          });

          $('.thumbnail .selectable :radio').focus(updateSelectedStyle);
          $('.thumbnail .selectable :radio').blur(updateSelectedStyle);
          $('.thumbnail .selectable :radio').change(updateSelectedStyle);

          function updateSelectedStyle() {
            $('.thumbnail .selectable :radio').parent().removeClass('shadow').next().removeClass('shadow');
            $('.thumbnail .selectable :radio:checked').parent().addClass('shadow').next().addClass('shadow');
          }
      })