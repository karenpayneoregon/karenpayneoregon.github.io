'use strict';
var $bottomNavigation = $bottomNavigation || {};
$bottomNavigation = function () {

    var show = function () {

        var bottomHtml = 
        '    <nav class="navbar fixed-bottom navbar-expand-sm navbar-dark bg-success" >' +
        '        <a class="navbar-brand" href="#">Navigation</a>' +
        '        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">' +
        '            <span class="navbar-toggler-icon"></span>' +
        '        </button>' +
        '        <div class="collapse navbar-collapse" id="navbarCollapse">' +
        '            <ul class="navbar-nav mr-auto">' +
        '                <li class="nav-item active">' +
        '                    <a class="nav-link" href="https://karenpayneoregon.github.io/">' +
        '                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">' +
        '                            <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />' +
        '                            <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />' +
        '                        </svg>' +
        '                        Home <span class="sr-only">(current)</span>' +
        '                    </a>' +
        '                </li>' +
        '                <li class="nav-item">' +
        '                    <a class="nav-link" href="#">TODO</a>' +
        '                </li>' +
        '                <li class="nav-item">' +
        '                    <a class="nav-link disabled" href="#">TODO</a>' +
        '                </li>' +
        '            </ul>' +
        '        </div>' +
        '    </nav >' ;

        $(document.body).append(bottomHtml);
    };
    return {
        show: show
    };
}();