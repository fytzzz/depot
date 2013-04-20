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
//= require ckeditor/init
function displayTabsButtons() {
    var lis;
    var tabsWidth = 0;
    var el;
    $('div.tabs').each(function() {
        el = $(this);
        lis = el.find('ul').children();
        lis.each(function(){
            if ($(this).is(':visible')) {
                tabsWidth += $(this).width() + 6;
            }
        });
        if ((tabsWidth < el.width() - 60) && (lis.first().is(':visible'))) {
            el.find('div.tabs-buttons').hide();
        } else {
            el.find('div.tabs-buttons').show();
        }
    });
}