// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

function noticeHide() {
    setTimeout(function () {
        $('#notice').hide();
    },1200);
}
function valueParser(timeValue) {
    return timeValue > 9 ? timeValue : "0" + timeValue;
}

function dateFormat(date) {
    let splittedDate = date.toLocaleDateString().split("/");
    let formattedDay = splittedDate[1] < 10 ? "0" + splittedDate[1] : splittedDate[1];
    let formattedMonth = splittedDate[0] < 10 ? "0" + splittedDate[0] : splittedDate[0];
    return date.getFullYear() + "-" + formattedMonth + "-"+formattedDay;
}

function timeFormat(time) {
    let splittedTime = time.split(":");
    let formattedHour = splittedTime[0] < 10 ? "0" + splittedTime[0] : splittedTime[0];
    let formattedMinute = splittedTime[1];
    let formattedSecond = splittedTime[2].split(" ");
    return formattedHour + ":" + formattedMinute;
}

function setTimer(timer, interval, value) {
    let hour = $("#hour").val();
    let minute = $("#minute").val();
    let second = $("#second").val();

    $("#start").click(function () {
        let date = new Date();
        let time = new Date().toLocaleTimeString();
        if(timer !== null) {
            return;
        }
        timer = setInterval(function () {
            $("#stop").removeClass("hide");
            $("#start").addClass("hide");
            $("#started_date").val(dateFormat(date));
            $("#started_time").val(timeFormat(time));
            $("#hour").val(valueParser(parseInt(value / 3600),  10));
            $("#minute").val(valueParser(parseInt(value / 60) % 60, 10));
            $("#second").val(valueParser(++value % 60));
        }, interval);
    });

    $("#stop").click(function () {
        let date = new Date();
        let time = new Date().toLocaleTimeString();
        $("#start").removeClass("hide");
        $("#stop").addClass("hide");
        $("#finished_date").val(dateFormat(date));
        $("#finished_time").val(timeFormat(time));
        clearInterval(timer);
        $("#submit").children().click();
        timer = null;
    });
}


$(function () {
    var timer = null,
        interval = 1000,
        value = 0;

    noticeHide();
    setTimer(timer, interval, value);
});