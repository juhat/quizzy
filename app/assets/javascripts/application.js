// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function(){

    $('.answer-right').click(function() {
        $(this).flip({
            direction: 'lr',
            color: 'green',
            content: 'Yeah, righ! Nice one.',
            speed: '100',
            onEnd: function(){
                $('.answer-right').css('color', 'white');
            }
        });
    });
    $('.answer-wrong').click(function() {
        $(this).flip({
            direction: 'lr',
            color: 'red',
            content: 'Uhhh... Next time! :(',
            speed: '100',
            onEnd: function(){
                $('.answer-wrong').css('color', 'white');
            }
        });
    });

});