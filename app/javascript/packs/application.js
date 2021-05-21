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

Rails.start()
Turbolinks.start()
ActiveStorage.start()



$(function() {
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

    $('#questionNewBtn').on('click', function () {
        $(this).fadeOut(500);
        setTimeout(function (){
            $('#questionForm').fadeIn(500);
        }, 500)
    })
})