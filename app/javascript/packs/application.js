// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require jquery_ujs

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import jquery from 'jquery'
window.$ = window.jquery = jquery
import 'popper.js'
import "bootstrap"
import "@fortawesome/fontawesome-free/css/all"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on('click','.correction-status a', function (e) {
    let id = $(this).data('correction')
    e.preventDefault();
    $(`#acceptCorrection${id}`).fadeIn().toggleClass('accept-correction-selected');
    $(`#corHlSelected${id}`).fadeIn().toggleClass('highlight-correction');
    $([document.documentElement, document.body]).animate({
        scrollTop: $(`#acceptCorrection${id}`).offset().top-100
    }, 1000);
})

document.addEventListener("turbolinks:load", function() {
    $('.alert').hide();
    $.hideNotice = function () {
        setTimeout(function () {
            $('.alert').fadeOut();
        }, 3000);
    }
    $.hideNotice();

    // hide devise-notice
    setTimeout(function () {
        $('.devise-notice').fadeOut()
    }, 3000)

    // Show button for new question
    $('.new-question-title, .new-question-text-area').on('keyup', function() {
        if($('.new-question-title').val() != "" && $('.new-question-text-area').val() != "") {
            $('.btn-new-question').fadeIn()
        } else {
            $('.btn-new-question').fadeOut()
        }
    });
});