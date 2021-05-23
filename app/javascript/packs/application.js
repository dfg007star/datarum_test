// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

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

$(function() {
    function highlightLink () {
        $('.accepted a').on('click', function (e) {
            let id = $(this).data('correction')
            e.preventDefault();
            $(`#acceptCorrection${id}`).fadeIn().toggleClass('accept-correction-selected');
        })
    }
    highlightLink();

    // hide alert's
    setTimeout(function () {
        $('.alert').fadeOut()
    }, 5000)

    // hide notice's
    setTimeout(function () {
        $('.alert').fadeOut()
    }, 5000)

    // hide devise-notice
    setTimeout(function () {
        $('.devise-notice').fadeOut()
    }, 5000)

    // Show button for new question
    $('.new-question-title, .new-question-text-area').on('keyup', function() {
        if($('.new-question-title').val() != "" && $('.new-question-text-area').val() != "") {
            $('.btn-new-question').fadeIn()
        } else {
            $('.btn-new-question').fadeOut()
        }
    });
})