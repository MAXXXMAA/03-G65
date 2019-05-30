function startTime() {
    var date = new Date();
    var n = date.toDateString();
    var time = date.toLocaleTimeString();

    document.getElementById('time').innerHTML = n + ' - ' + time;
    tt = display_c();
}
function display_c() {
    var refresh = 1000;
    mytime = setTimeout('startTime()', refresh);
}

