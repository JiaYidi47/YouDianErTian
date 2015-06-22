<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coderCode.aspx.cs" Inherits="WebOxcoder.coderCode" %>

<!DOCTYPE html>
<!-- saved from url=(0051)http://www.oxcoder.com/coding-page.action?reid=1176 -->
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <avalon ms-skip="1" class="avalonHide">X
        <style id="avalonStyle">
            .avalonHide {
                display: none!important
            }
        </style>
    </avalon>
    <title>猿圈 挑战</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- END OF Bootstrap -->

    <!-- 控制左侧步骤和知识点控件的css -->
    <!-- Le styles -->
    <link type="text/css" href="js/libs/jquery-ui-1.10.0.custom.css" rel="stylesheet">
    <link type="text/css" href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="./猿圈 挑战_files/max.css" rel="stylesheet" type="text/css">
    <link href="./猿圈 挑战_files/tourist.css" rel="stylesheet" type="text/css">
    <!--[if IE 7]>
            <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
            <![endif]-->
    <!--[if lt IE 9]>
            <link rel="stylesheet" type="text/css" href="css/custom-theme/jquery.ui.1.10.0.ie.css"/>
            <![endif]-->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->

    <!-- Le fav and touch icons -->
    <!--  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
            <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
            <link rel="shortcut icon" href="assets/ico/favicon.png"> -->
    <!-- my css	-->
    <link href="http://www.oxcoder.com/css/ace.css" rel="stylesheet" media="screen">
    <!-- END OF my css -->
    <!-- Chang URLs to wherever Video.js files will be hosted -->
    <link href="./猿圈 挑战_files/video-js.css" rel="stylesheet" type="text/css">
    <!-- video.js must be in the <head> for older IEs to work. -->
    <script src="./猿圈 挑战_files/video.js"></script>
    <link href="http://www.oxcoder.com/fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet">

    <!-- Unless using the CDN hosted version, update the URL to the Flash SWF -->
    <script>
        videojs.options.flash.swf = "swf/video-js.swf";
    </script>
    <script src="./猿圈 挑战_files/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="./猿圈 挑战_files/ace.js" type="text/javascript" charset="utf-8"></script>
    <style id="ace_editor">
        .ace_editor {
            position: relative;
            overflow: hidden;
            font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', 'Consolas', 'source-code-pro', monospace;
            font-size: 12px;
            line-height: normal;
            direction: ltr;
        }
        
        .ace_scroller {
            position: absolute;
            overflow: hidden;
            top: 0;
            bottom: 0;
            background-color: inherit;
            -ms-user-select: none;
            -moz-user-select: none;
            -webkit-user-select: none;
            user-select: none;
        }
        
        .ace_content {
            position: absolute;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            cursor: text;
            min-width: 100%;
        }
        
        .ace_dragging,
        .ace_dragging * {
            cursor: move !important;
        }
        
        .ace_dragging .ace_scroller:before {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            content: '';
            background: rgba(250, 250, 250, 0.01);
            z-index: 1000;
        }
        
        .ace_dragging.ace_dark .ace_scroller:before {
            background: rgba(0, 0, 0, 0.01);
        }
        
        .ace_selecting,
        .ace_selecting * {
            cursor: text !important;
        }
        
        .ace_gutter {
            position: absolute;
            overflow: hidden;
            width: auto;
            top: 0;
            bottom: 0;
            left: 0;
            cursor: default;
            z-index: 4;
            -ms-user-select: none;
            -moz-user-select: none;
            -webkit-user-select: none;
            user-select: none;
        }
        
        .ace_gutter-active-line {
            position: absolute;
            left: 0;
            right: 0;
        }
        
        .ace_scroller.ace_scroll-left {
            box-shadow: 17px 0 16px -16px rgba(0, 0, 0, 0.4) inset;
        }
        
        .ace_gutter-cell {
            padding-left: 19px;
            padding-right: 6px;
            background-repeat: no-repeat;
        }
        
        .ace_gutter-cell.ace_error {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABOFBMVEX/////////QRswFAb/Ui4wFAYwFAYwFAaWGAfDRymzOSH/PxswFAb/SiUwFAYwFAbUPRvjQiDllog5HhHdRybsTi3/Tyv9Tir+Syj/UC3////XurebMBIwFAb/RSHbPx/gUzfdwL3kzMivKBAwFAbbvbnhPx66NhowFAYwFAaZJg8wFAaxKBDZurf/RB6mMxb/SCMwFAYwFAbxQB3+RB4wFAb/Qhy4Oh+4QifbNRcwFAYwFAYwFAb/QRzdNhgwFAYwFAbav7v/Uy7oaE68MBK5LxLewr/r2NXewLswFAaxJw4wFAbkPRy2PyYwFAaxKhLm1tMwFAazPiQwFAaUGAb/QBrfOx3bvrv/VC/maE4wFAbRPBq6MRO8Qynew8Dp2tjfwb0wFAbx6eju5+by6uns4uH9/f36+vr/GkHjAAAAYnRSTlMAGt+64rnWu/bo8eAA4InH3+DwoN7j4eLi4xP99Nfg4+b+/u9B/eDs1MD1mO7+4PHg2MXa347g7vDizMLN4eG+Pv7i5evs/v79yu7S3/DV7/498Yv24eH+4ufQ3Ozu/v7+y13sRqwAAADLSURBVHjaZc/XDsFgGIBhtDrshlitmk2IrbHFqL2pvXf/+78DPokj7+Fz9qpU/9UXJIlhmPaTaQ6QPaz0mm+5gwkgovcV6GZzd5JtCQwgsxoHOvJO15kleRLAnMgHFIESUEPmawB9ngmelTtipwwfASilxOLyiV5UVUyVAfbG0cCPHig+GBkzAENHS0AstVF6bacZIOzgLmxsHbt2OecNgJC83JERmePUYq8ARGkJx6XtFsdddBQgZE2nPR6CICZhawjA4Fb/chv+399kfR+MMMDGOQAAAABJRU5ErkJggg==");
            background-repeat: no-repeat;
            background-position: 2px center;
        }
        
        .ace_gutter-cell.ace_warning {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAmVBMVEX///8AAAD///8AAAAAAABPSzb/5sAAAAB/blH/73z/ulkAAAAAAAD85pkAAAAAAAACAgP/vGz/rkDerGbGrV7/pkQICAf////e0IsAAAD/oED/qTvhrnUAAAD/yHD/njcAAADuv2r/nz//oTj/p064oGf/zHAAAAA9Nir/tFIAAAD/tlTiuWf/tkIAAACynXEAAAAAAAAtIRW7zBpBAAAAM3RSTlMAABR1m7RXO8Ln31Z36zT+neXe5OzooRDfn+TZ4p3h2hTf4t3k3ucyrN1K5+Xaks52Sfs9CXgrAAAAjklEQVR42o3PbQ+CIBQFYEwboPhSYgoYunIqqLn6/z8uYdH8Vmdnu9vz4WwXgN/xTPRD2+sgOcZjsge/whXZgUaYYvT8QnuJaUrjrHUQreGczuEafQCO/SJTufTbroWsPgsllVhq3wJEk2jUSzX3CUEDJC84707djRc5MTAQxoLgupWRwW6UB5fS++NV8AbOZgnsC7BpEAAAAABJRU5ErkJggg==");
            background-position: 2px center;
        }
        
        .ace_gutter-cell.ace_info {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAAAAAA6mKC9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAJ0Uk5TAAB2k804AAAAPklEQVQY02NgIB68QuO3tiLznjAwpKTgNyDbMegwisCHZUETUZV0ZqOquBpXj2rtnpSJT1AEnnRmL2OgGgAAIKkRQap2htgAAAAASUVORK5CYII=");
            background-position: 2px center;
        }
        
        .ace_dark .ace_gutter-cell.ace_info {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQBAMAAADt3eJSAAAAJFBMVEUAAAChoaGAgIAqKiq+vr6tra1ZWVmUlJSbm5s8PDxubm56enrdgzg3AAAAAXRSTlMAQObYZgAAAClJREFUeNpjYMAPdsMYHegyJZFQBlsUlMFVCWUYKkAZMxZAGdxlDMQBAG+TBP4B6RyJAAAAAElFTkSuQmCC");
        }
        
        .ace_scrollbar {
            position: absolute;
            right: 0;
            bottom: 0;
            z-index: 6;
        }
        
        .ace_scrollbar-inner {
            position: absolute;
            cursor: text;
            left: 0;
            top: 0;
        }
        
        .ace_scrollbar-v {
            overflow-x: hidden;
            overflow-y: scroll;
            top: 0;
        }
        
        .ace_scrollbar-h {
            overflow-x: scroll;
            overflow-y: hidden;
            left: 0;
        }
        
        .ace_print-margin {
            position: absolute;
            height: 100%;
        }
        
        .ace_text-input {
            position: absolute;
            z-index: 0;
            width: 0.5em;
            height: 1em;
            opacity: 0;
            background: transparent;
            -moz-appearance: none;
            appearance: none;
            border: none;
            resize: none;
            outline: none;
            overflow: hidden;
            font: inherit;
            padding: 0 1px;
            margin: 0 -1px;
            text-indent: -1em;
            -ms-user-select: text;
            -moz-user-select: text;
            -webkit-user-select: text;
            user-select: text;
        }
        
        .ace_text-input.ace_composition {
            background: #f8f8f8;
            color: #111;
            z-index: 1000;
            opacity: 1;
            text-indent: 0;
        }
        
        .ace_layer {
            z-index: 1;
            position: absolute;
            overflow: hidden;
            white-space: pre;
            height: 100%;
            width: 100%;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            pointer-events: none;
        }
        
        .ace_gutter-layer {
            position: relative;
            width: auto;
            text-align: right;
            pointer-events: auto;
        }
        
        .ace_text-layer {
            font: inherit !important;
        }
        
        .ace_cjk {
            display: inline-block;
            text-align: center;
        }
        
        .ace_cursor-layer {
            z-index: 4;
        }
        
        .ace_cursor {
            z-index: 4;
            position: absolute;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            border-left: 2px solid
        }
        
        .ace_slim-cursors .ace_cursor {
            border-left-width: 1px;
        }
        
        .ace_overwrite-cursors .ace_cursor {
            border-left-width: 0px;
            border-bottom: 1px solid;
        }
        
        .ace_hidden-cursors .ace_cursor {
            opacity: 0.2;
        }
        
        .ace_smooth-blinking .ace_cursor {
            -moz-transition: opacity 0.18s;
            -webkit-transition: opacity 0.18s;
            -o-transition: opacity 0.18s;
            -ms-transition: opacity 0.18s;
            transition: opacity 0.18s;
        }
        
        .ace_editor.ace_multiselect .ace_cursor {
            border-left-width: 1px;
        }
        
        .ace_marker-layer .ace_step,
        .ace_marker-layer .ace_stack {
            position: absolute;
            z-index: 3;
        }
        
        .ace_marker-layer .ace_selection {
            position: absolute;
            z-index: 5;
        }
        
        .ace_marker-layer .ace_bracket {
            position: absolute;
            z-index: 6;
        }
        
        .ace_marker-layer .ace_active-line {
            position: absolute;
            z-index: 2;
        }
        
        .ace_marker-layer .ace_selected-word {
            position: absolute;
            z-index: 4;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        
        .ace_line .ace_fold {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            display: inline-block;
            height: 11px;
            margin-top: -2px;
            vertical-align: middle;
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAJCAYAAADU6McMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAJpJREFUeNpi/P//PwOlgAXGYGRklAVSokD8GmjwY1wasKljQpYACtpCFeADcHVQfQyMQAwzwAZI3wJKvCLkfKBaMSClBlR7BOQikCFGQEErIH0VqkabiGCAqwUadAzZJRxQr/0gwiXIal8zQQPnNVTgJ1TdawL0T5gBIP1MUJNhBv2HKoQHHjqNrA4WO4zY0glyNKLT2KIfIMAAQsdgGiXvgnYAAAAASUVORK5CYII="), url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAA3CAYAAADNNiA5AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAACJJREFUeNpi+P//fxgTAwPDBxDxD078RSX+YeEyDFMCIMAAI3INmXiwf2YAAAAASUVORK5CYII=");
            background-repeat: no-repeat, repeat-x;
            background-position: center center, top left;
            color: transparent;
            border: 1px solid black;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            cursor: pointer;
            pointer-events: auto;
        }
        
        .ace_dark .ace_fold {}
        
        .ace_fold:hover {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAJCAYAAADU6McMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAJpJREFUeNpi/P//PwOlgAXGYGRklAVSokD8GmjwY1wasKljQpYACtpCFeADcHVQfQyMQAwzwAZI3wJKvCLkfKBaMSClBlR7BOQikCFGQEErIH0VqkabiGCAqwUadAzZJRxQr/0gwiXIal8zQQPnNVTgJ1TdawL0T5gBIP1MUJNhBv2HKoQHHjqNrA4WO4zY0glyNKLT2KIfIMAAQsdgGiXvgnYAAAAASUVORK5CYII="), url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAA3CAYAAADNNiA5AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAACBJREFUeNpi+P//fz4TAwPDZxDxD5X4i5fLMEwJgAADAEPVDbjNw87ZAAAAAElFTkSuQmCC");
        }
        
        .ace_tooltip {
            background-color: #FFF;
            background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.1));
            background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.1));
            border: 1px solid gray;
            border-radius: 1px;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
            color: black;
            display: block;
            max-width: 100%;
            padding: 3px 4px;
            position: fixed;
            z-index: 999999;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            cursor: default;
            white-space: pre;
            word-wrap: break-word;
            line-height: normal;
            font-style: normal;
            font-weight: normal;
            letter-spacing: normal;
            pointer-events: none;
        }
        
        .ace_folding-enabled > .ace_gutter-cell {
            padding-right: 13px;
        }
        
        .ace_fold-widget {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0 -12px 0 1px;
            display: none;
            width: 11px;
            vertical-align: top;
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAANElEQVR42mWKsQ0AMAzC8ixLlrzQjzmBiEjp0A6WwBCSPgKAXoLkqSot7nN3yMwR7pZ32NzpKkVoDBUxKAAAAABJRU5ErkJggg==");
            background-repeat: no-repeat;
            background-position: center;
            border-radius: 3px;
            border: 1px solid transparent;
            cursor: pointer;
        }
        
        .ace_folding-enabled .ace_fold-widget {
            display: inline-block;
        }
        
        .ace_fold-widget.ace_end {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAANElEQVR42m3HwQkAMAhD0YzsRchFKI7sAikeWkrxwScEB0nh5e7KTPWimZki4tYfVbX+MNl4pyZXejUO1QAAAABJRU5ErkJggg==");
        }
        
        .ace_fold-widget.ace_closed {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAAGCAYAAAAG5SQMAAAAOUlEQVR42jXKwQkAMAgDwKwqKD4EwQ26sSOkVWjgIIHAzPiCgaqiqnJHZnKICBERHN194O5b9vbLuAVRL+l0YWnZAAAAAElFTkSuQmCCXA==");
        }
        
        .ace_fold-widget:hover {
            border: 1px solid rgba(0, 0, 0, 0.3);
            background-color: rgba(255, 255, 255, 0.2);
            -moz-box-shadow: 0 1px 1px rgba(255, 255, 255, 0.7);
            -webkit-box-shadow: 0 1px 1px rgba(255, 255, 255, 0.7);
            box-shadow: 0 1px 1px rgba(255, 255, 255, 0.7);
        }
        
        .ace_fold-widget:active {
            border: 1px solid rgba(0, 0, 0, 0.4);
            background-color: rgba(0, 0, 0, 0.05);
            -moz-box-shadow: 0 1px 1px rgba(255, 255, 255, 0.8);
            -webkit-box-shadow: 0 1px 1px rgba(255, 255, 255, 0.8);
            box-shadow: 0 1px 1px rgba(255, 255, 255, 0.8);
        }
        
        .ace_dark .ace_fold-widget {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHklEQVQIW2P4//8/AzoGEQ7oGCaLLAhWiSwB146BAQCSTPYocqT0AAAAAElFTkSuQmCC");
        }
        
        .ace_dark .ace_fold-widget.ace_end {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAH0lEQVQIW2P4//8/AxQ7wNjIAjDMgC4AxjCVKBirIAAF0kz2rlhxpAAAAABJRU5ErkJggg==");
        }
        
        .ace_dark .ace_fold-widget.ace_closed {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAAFCAYAAACAcVaiAAAAHElEQVQIW2P4//+/AxAzgDADlOOAznHAKgPWAwARji8UIDTfQQAAAABJRU5ErkJggg==");
        }
        
        .ace_dark .ace_fold-widget:hover {
            box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        .ace_dark .ace_fold-widget:active {
            -moz-box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);
            -webkit-box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);
            box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);
        }
        
        .ace_fold-widget.ace_invalid {
            background-color: #FFB4B4;
            border-color: #DE5555;
        }
        
        .ace_fade-fold-widgets .ace_fold-widget {
            -moz-transition: opacity 0.4s ease 0.05s;
            -webkit-transition: opacity 0.4s ease 0.05s;
            -o-transition: opacity 0.4s ease 0.05s;
            -ms-transition: opacity 0.4s ease 0.05s;
            transition: opacity 0.4s ease 0.05s;
            opacity: 0;
        }
        
        .ace_fade-fold-widgets:hover .ace_fold-widget {
            -moz-transition: opacity 0.05s ease 0.05s;
            -webkit-transition: opacity 0.05s ease 0.05s;
            -o-transition: opacity 0.05s ease 0.05s;
            -ms-transition: opacity 0.05s ease 0.05s;
            transition: opacity 0.05s ease 0.05s;
            opacity: 1;
        }
        
        .ace_underline {
            text-decoration: underline;
        }
        
        .ace_bold {
            font-weight: bold;
        }
        
        .ace_nobold .ace_bold {
            font-weight: normal;
        }
        
        .ace_italic {
            font-style: italic;
        }
        
        .ace_error-marker {
            background-color: rgba(255, 0, 0, 0.2);
            position: absolute;
            z-index: 9;
        }
        
        .ace_highlight-marker {
            background-color: rgba(255, 255, 0, 0.2);
            position: absolute;
            z-index: 8;
        }
    </style>
    <style id="ace-tm">
        .ace-tm .ace_gutter {
            background: #f0f0f0;
            color: #333;
        }
        
        .ace-tm .ace_print-margin {
            width: 1px;
            background: #e8e8e8;
        }
        
        .ace-tm .ace_fold {
            background-color: #6B72E6;
        }
        
        .ace-tm {
            background-color: #FFFFFF;
            color: black;
        }
        
        .ace-tm .ace_cursor {
            color: black;
        }
        
        .ace-tm .ace_invisible {
            color: rgb(191, 191, 191);
        }
        
        .ace-tm .ace_storage,
        .ace-tm .ace_keyword {
            color: blue;
        }
        
        .ace-tm .ace_constant {
            color: rgb(197, 6, 11);
        }
        
        .ace-tm .ace_constant.ace_buildin {
            color: rgb(88, 72, 246);
        }
        
        .ace-tm .ace_constant.ace_language {
            color: rgb(88, 92, 246);
        }
        
        .ace-tm .ace_constant.ace_library {
            color: rgb(6, 150, 14);
        }
        
        .ace-tm .ace_invalid {
            background-color: rgba(255, 0, 0, 0.1);
            color: red;
        }
        
        .ace-tm .ace_support.ace_function {
            color: rgb(60, 76, 114);
        }
        
        .ace-tm .ace_support.ace_constant {
            color: rgb(6, 150, 14);
        }
        
        .ace-tm .ace_support.ace_type,
        .ace-tm .ace_support.ace_class {
            color: rgb(109, 121, 222);
        }
        
        .ace-tm .ace_keyword.ace_operator {
            color: rgb(104, 118, 135);
        }
        
        .ace-tm .ace_string {
            color: rgb(3, 106, 7);
        }
        
        .ace-tm .ace_comment {
            color: rgb(76, 136, 107);
        }
        
        .ace-tm .ace_comment.ace_doc {
            color: rgb(0, 102, 255);
        }
        
        .ace-tm .ace_comment.ace_doc.ace_tag {
            color: rgb(128, 159, 191);
        }
        
        .ace-tm .ace_constant.ace_numeric {
            color: rgb(0, 0, 205);
        }
        
        .ace-tm .ace_variable {
            color: rgb(49, 132, 149);
        }
        
        .ace-tm .ace_xml-pe {
            color: rgb(104, 104, 91);
        }
        
        .ace-tm .ace_entity.ace_name.ace_function {
            color: #0000A2;
        }
        
        .ace-tm .ace_heading {
            color: rgb(12, 7, 255);
        }
        
        .ace-tm .ace_list {
            color: rgb(185, 6, 144);
        }
        
        .ace-tm .ace_meta.ace_tag {
            color: rgb(0, 22, 142);
        }
        
        .ace-tm .ace_string.ace_regex {
            color: rgb(255, 0, 0)
        }
        
        .ace-tm .ace_marker-layer .ace_selection {
            background: rgb(181, 213, 255);
        }
        
        .ace-tm.ace_multiselect .ace_selection.ace_start {
            box-shadow: 0 0 3px 0px white;
            border-radius: 2px;
        }
        
        .ace-tm .ace_marker-layer .ace_step {
            background: rgb(252, 255, 0);
        }
        
        .ace-tm .ace_marker-layer .ace_stack {
            background: rgb(164, 229, 101);
        }
        
        .ace-tm .ace_marker-layer .ace_bracket {
            margin: -1px 0 0 -1px;
            border: 1px solid rgb(192, 192, 192);
        }
        
        .ace-tm .ace_marker-layer .ace_active-line {
            background: rgba(0, 0, 0, 0.07);
        }
        
        .ace-tm .ace_gutter-active-line {
            background-color: #dcdcdc;
        }
        
        .ace-tm .ace_marker-layer .ace_selected-word {
            background: rgb(250, 250, 255);
            border: 1px solid rgb(200, 200, 250);
        }
        
        .ace-tm .ace_indent-guide {
            background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAE0lEQVQImWP4////f4bLly//BwAmVgd1/w11/gAAAABJRU5ErkJggg==") right repeat-y;
        }
    </style>
    <style>
        .error_widget_wrapper {
            background: inherit;
            color: inherit;
            border: none
        }
        
        .error_widget {
            border-top: solid 2px;
            border-bottom: solid 2px;
            margin: 5px 0;
            padding: 10px 40px;
            white-space: pre-wrap;
        }
        
        .error_widget.ace_error,
        .error_widget_arrow.ace_error {
            border-color: #ff5a5a
        }
        
        .error_widget.ace_warning,
        .error_widget_arrow.ace_warning {
            border-color: #F1D817
        }
        
        .error_widget.ace_info,
        .error_widget_arrow.ace_info {
            border-color: #5a5a5a
        }
        
        .error_widget.ace_ok,
        .error_widget_arrow.ace_ok {
            border-color: #5aaa5a
        }
        
        .error_widget_arrow {
            position: absolute;
            border: solid 5px;
            border-top-color: transparent!important;
            border-right-color: transparent!important;
            border-left-color: transparent!important;
            top: -5px;
        }
    </style>
    <script src="./猿圈 挑战_files/ext-language_tools.js" type="text/javascript" charset="utf-8"></script>
    <style>
        .ace_snippet-marker {
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            background: rgba(194, 193, 208, 0.09);
            border: 1px dotted rgba(211, 208, 235, 0.62);
            position: absolute;
        }
    </style>
    <style>
        .ace_editor.ace_autocomplete .ace_marker-layer .ace_active-line {
            background-color: #CAD6FA;
            z-index: 1;
        }
        
        .ace_editor.ace_autocomplete .ace_line-hover {
            border: 1px solid #abbffe;
            margin-top: -1px;
            background: rgba(233, 233, 253, 0.4);
        }
        
        .ace_editor.ace_autocomplete .ace_line-hover {
            position: absolute;
            z-index: 2;
        }
        
        .ace_editor.ace_autocomplete .ace_scroller {
            background: none;
            border: none;
            box-shadow: none;
        }
        
        .ace_rightAlignedText {
            color: gray;
            display: inline-block;
            position: absolute;
            right: 4px;
            text-align: right;
            z-index: -1;
        }
        
        .ace_editor.ace_autocomplete .ace_completion-highlight {
            color: #000;
            text-shadow: 0 0 0.01em;
        }
        
        .ace_editor.ace_autocomplete {
            width: 280px;
            z-index: 200000;
            background: #fbfbfb;
            color: #444;
            border: 1px lightgray solid;
            position: fixed;
            box-shadow: 2px 3px 5px rgba(0, 0, 0, .2);
            line-height: 1.4;
        }
    </style>
    <script src="./猿圈 挑战_files/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script src="./猿圈 挑战_files/avalon.js"></script>
    <!-- my js -->

    <script src="./猿圈 挑战_files/codingUI.js"></script>
    <script src="./猿圈 挑战_files/codingConstant.js"></script>
    <script src="./猿圈 挑战_files/codingStatistics.js"></script>
    <script src="./猿圈 挑战_files/codingProjectInfo.js"></script>
    <style type="text/css">
        .navbar-coding {
            background-color: #141414;
        }
        
        .navbar-coding a {
            color: #fff;
        }
        
        .navbar-coding a:hover {
            color: #3498db;
        }
        
        .panel.panel-default .panel-heading {
            background-color: #f2f2f2;
        }
        
        .panel-group .panel-heading+.panel-collapse .panel-body {
            border-top: none;
        }
        
        .text-primary {
            color: #4A90E2;
        }
        
        .btn-primary {
            color: #fff;
            background-color: #4A90E2;
            border-color: #4A90E2;
        }
        
        #testnew {
            font-weight: 200;
        }
        
        .panel-group .panel-heading {
            background-color: transparent;
            border-bottom: solid 1px #e5e5e5;
        }
        
        .div-left {
            width: 300px;
            position: absolute;
            overflow: hidden;
            -webkit-transition: left 0.6s;
            -moz-transition: left 0.6s;
            -o-transition: left 0.6s;
            transition: left 0.6s;
        }
        
        .div-right {
            -webkit-transition: left 0.6s;
            -moz-transition: left 0.6s;
            -o-transition: left 0.6s;
            transition: left 0.6s;
        }
    </style>
    <!-- END OF my js -->

    <script src="./猿圈 挑战_files/theme-idle_fingers.js"></script>
    <style id="ace-idle-fingers">
        .ace-idle-fingers .ace_gutter {
            background: #3b3b3b;
            color: #fff
        }
        
        .ace-idle-fingers .ace_print-margin {
            width: 1px;
            background: #3b3b3b
        }
        
        .ace-idle-fingers {
            background-color: #323232;
            color: #FFFFFF
        }
        
        .ace-idle-fingers .ace_cursor {
            color: #91FF00
        }
        
        .ace-idle-fingers .ace_marker-layer .ace_selection {
            background: rgba(90, 100, 126, 0.88)
        }
        
        .ace-idle-fingers.ace_multiselect .ace_selection.ace_start {
            box-shadow: 0 0 3px 0px #323232;
            border-radius: 2px
        }
        
        .ace-idle-fingers .ace_marker-layer .ace_step {
            background: rgb(102, 82, 0)
        }
        
        .ace-idle-fingers .ace_marker-layer .ace_bracket {
            margin: -1px 0 0 -1px;
            border: 1px solid #404040
        }
        
        .ace-idle-fingers .ace_marker-layer .ace_active-line {
            background: #353637
        }
        
        .ace-idle-fingers .ace_gutter-active-line {
            background-color: #353637
        }
        
        .ace-idle-fingers .ace_marker-layer .ace_selected-word {
            border: 1px solid rgba(90, 100, 126, 0.88)
        }
        
        .ace-idle-fingers .ace_invisible {
            color: #404040
        }
        
        .ace-idle-fingers .ace_keyword,
        .ace-idle-fingers .ace_meta {
            color: #CC7833
        }
        
        .ace-idle-fingers .ace_constant,
        .ace-idle-fingers .ace_constant.ace_character,
        .ace-idle-fingers .ace_constant.ace_character.ace_escape,
        .ace-idle-fingers .ace_constant.ace_other,
        .ace-idle-fingers .ace_support.ace_constant {
            color: #6C99BB
        }
        
        .ace-idle-fingers .ace_invalid {
            color: #FFFFFF;
            background-color: #FF0000
        }
        
        .ace-idle-fingers .ace_fold {
            background-color: #CC7833;
            border-color: #FFFFFF
        }
        
        .ace-idle-fingers .ace_support.ace_function {
            color: #B83426
        }
        
        .ace-idle-fingers .ace_variable.ace_parameter {
            font-style: italic
        }
        
        .ace-idle-fingers .ace_string {
            color: #A5C261
        }
        
        .ace-idle-fingers .ace_string.ace_regexp {
            color: #CCCC33
        }
        
        .ace-idle-fingers .ace_comment {
            font-style: italic;
            color: #BC9458
        }
        
        .ace-idle-fingers .ace_meta.ace_tag {
            color: #FFE5BB
        }
        
        .ace-idle-fingers .ace_entity.ace_name {
            color: #FFC66D
        }
        
        .ace-idle-fingers .ace_collab.ace_user1 {
            color: #323232;
            background-color: #FFF980
        }
        
        .ace-idle-fingers .ace_indent-guide {
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWMwMjLyZYiPj/8PAAreAwAI1+g0AAAAAElFTkSuQmCC) right repeat-y
        }
    </style>
    <script src="./猿圈 挑战_files/mode-php.js"></script>
</head>

<body style="position: relative" avalonctrl="codingModel">
    <div class="navbar navbar-coding navbar-fixed-top" style="text-align: center; border-radius: 0; -webkit-border-radius: 0;">
        <div class="navbar-header">
            <a class="navbar-brand hidden-sm" href="coderTask.aspx" style="font-size: 13px;"><i class="fa fa-chevron-left" style="padding-right: 5px;"></i>返回</a>
        </div>
        <a href="coderHome.aspx" style="font-size: 20px; line-height: 50px;">oxcoder</a>
        <div class="top-bar-new" style="width: 260px; cursor: default;">


            <!-- <button id="btn-by-own" class="btn btn-primary btn-sm">自己写</button>
			
			<button id="btn-renew" class="btn btn-warning btn-sm">恢复</button> -->
            <label for="fontsize">字号</label>
            <select id="fontsize" style="color:black" size="1">
                <option value="10px">10px</option>
                <option value="11px">11px</option>
                <option value="12px">12px</option>
                <option value="13px">13px</option>
                <option value="14px" selected="selected">14px</option>
                <option value="16px">16px</option>
                <option value="18px">18px</option>
                <option value="20px">20px</option>
                <option value="24px">24px</option>
            </select>&nbsp;&nbsp;&nbsp;
            <button id="btn-run" class="btn btn-success btn-sm">运行</button>&nbsp;
            <button id="btn-submit" class="btn btn-primary btn-sm" onclick="window.location.href='coderTaskResult.aspx'">提交</button>

        </div>
    </div>
    <form style="display: none">
        <input id="input-pid" type="hidden" value="237">
        <input id="input-uid" type="hidden" value="2176">
        <input id="input-reid" type="hidden" value="1176">
        <input id="input-projectpath" type="hidden" value="/Users/oxcoder/challenge/Monkey/main.php">
    </form>
    <div class="editor-panel panel-primary div-left" style="padding-top: 50px; width: 300px;">
        <i class="fa fa-toggle-left" style="position:absolute;right:0;top:50px;font-size:17px;" id="button" onclick="hideleft()"></i>
        <div class="step-header page-header" style="padding: 15px; margin: 0;">
            <h3 id="testnew" class="text-primary">
				<span>美猴王</span> &nbsp;<small>php项目</small>
			</h3>
        </div>
        <div class="step-header page-header" style="padding: 15px; margin: 0;">
            <h4 id="clock">
				<i class="fa fa-clock-o" style="margin-right: 10px;"></i>倒计时：<font id="count-down" style="color: rgb(0, 0, 0);">434</font>
			</h4>
        </div>
        <!-- 步骤 -->
        <div class="panel-group" id="accordion">
            <section id="Section1">
                <div class="panel-group" id="accordion-1">

                    <div class="panel panel-outline">
                        <!-- /.panel-heading -->

                        <div class="panel-heading">
                            <h4 class="panel-title">项目需求</h4>
                        </div>
                        <div id="collapse" class="panel-collapse collapse in" style="height: auto;">
                            <div class="panel-body">
                                <p>美猴王算法的应用
                                </p>
                                <!--ms-if-->
                            </div>
                            <!-- /.panel-body -->
                        </div>


                    </div>
                    <!-- /.panel -->

                </div>
            </section>
        </div>
    </div>
    <div class="div-right" style="top: 50px; left: 300px;">
        <i class="fa fa-toggle-right" style="position:absolute;left:0;top:0;font-size:17px;display:none;color:#fff;z-index:10;" id="showleft" onclick="showleft()"></i>


        <pre id="editor" class=" ace_editor ace_dark ace-idle-fingers" style="font-size: 14px; bottom: 0px;"><textarea class="ace_text-input" wrap="off" spellcheck="false" style="opacity: 0; height: 17px; width: 7.703125px; right: 1004.890625px; bottom: 43px;"></textarea><div class="ace_gutter"><div class="ace_layer ace_gutter-layer ace_folding-enabled" style="margin-top: 0px; height: 570px; width: 49px;"><div class="ace_gutter-cell " style="height: 17px;">1</div><div class="ace_gutter-cell " style="height: 17px;">2</div><div class="ace_gutter-cell " style="height: 17px;">3</div><div class="ace_gutter-cell " style="height: 17px;">4</div><div class="ace_gutter-cell " style="height: 17px;">5</div><div class="ace_gutter-cell " style="height: 17px;">6</div><div class="ace_gutter-cell " style="height: 17px;">7</div><div class="ace_gutter-cell " style="height: 17px;">8</div><div class="ace_gutter-cell " style="height: 17px;">9</div><div class="ace_gutter-cell " style="height: 17px;">10</div><div class="ace_gutter-cell " style="height: 17px;">11</div><div class="ace_gutter-cell " style="height: 17px;">12</div><div class="ace_gutter-cell " style="height: 17px;">13</div><div class="ace_gutter-cell " style="height: 17px;">14</div><div class="ace_gutter-cell " style="height: 17px;">15</div><div class="ace_gutter-cell " style="height: 17px;">16</div><div class="ace_gutter-cell " style="height: 17px;">17</div><div class="ace_gutter-cell " style="height: 17px;">18</div><div class="ace_gutter-cell " style="height: 17px;">19</div><div class="ace_gutter-cell " style="height: 17px;">20</div><div class="ace_gutter-cell " style="height: 17px;">21</div><div class="ace_gutter-cell " style="height: 17px;">22</div><div class="ace_gutter-cell  ace_error" style="height: 17px;">23</div><div class="ace_gutter-cell " style="height: 17px;">24</div><div class="ace_gutter-cell " style="height: 17px;">25</div><div class="ace_gutter-cell " style="height: 17px;">26</div><div class="ace_gutter-cell " style="height: 17px;">27</div><div class="ace_gutter-cell " style="height: 17px;">28</div><div class="ace_gutter-cell " style="height: 17px;">29</div></div><div class="ace_gutter-active-line" style="top: 476px; height: 17px;"></div></div><div class="ace_scroller" style="left: 49px; right: 0px; bottom: 0px;"><div class="ace_content" style="margin-top: 0px; width: 1015px; height: 570px; margin-left: 0px; cursor: default;"><div class="ace_layer ace_print-margin-layer"><div class="ace_print-margin" style="left: 620.25px; visibility: visible;"></div></div><div class="ace_layer ace_marker-layer"><div class="ace_active-line" style="height:17px;top:476px;left:0;right:0;"></div><div class="ace_selection ace_start" style="height:17px;right:0;top:0px;left:4px;"></div><div class="ace_selection" style="height:17px;width:15.40625px;top:476px;left:4px;"></div><div class="ace_selection" style="height:459px;right:0;top:17px;left:4px;"></div></div><div class="ace_layer ace_text-layer" style="padding: 0px 4px;"><div class="ace_line" style="height:17px"><span class="ace_support ace_php_tag">&lt;?php</span></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="ace_line" style="height:17px"><span class="ace_keyword">function</span>&nbsp;<span class="ace_identifier">king</span><span class="ace_paren ace_lparen">(</span><span class="ace_variable">$n</span>,&nbsp;<span class="ace_variable">$m</span><span class="ace_paren ace_rparen">)</span><span class="ace_paren ace_lparen">{</span></div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_variable">$monkeys</span>&nbsp;<span class="ace_keyword ace_operator">=</span>&nbsp;<span class="ace_support ace_function">range</span><span class="ace_paren ace_lparen">(</span><span class="ace_constant ace_numeric">1</span>,&nbsp;<span class="ace_variable">$n</span><span class="ace_paren ace_rparen">)</span>;</div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_variable">$i</span><span class="ace_keyword ace_operator">=</span><span class="ace_constant ace_numeric">0</span>;</div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_variable">$k</span><span class="ace_keyword ace_operator">=</span><span class="ace_variable">$n</span>;</div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_comment">//No.1</span></div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_comment">//<span class="ace_cjk" style="width:15.40625px">开</span><span class="ace_cjk" style="width:15.40625px">始</span><span class="ace_cjk" style="width:15.40625px">写</span><span class="ace_cjk" style="width:15.40625px">代</span><span class="ace_cjk" style="width:15.40625px">码</span><span class="ace_cjk" style="width:15.40625px">，</span><span class="ace_cjk" style="width:15.40625px">请</span><span class="ace_cjk" style="width:15.40625px">用</span><span class="ace_cjk" style="width:15.40625px">代</span><span class="ace_cjk" style="width:15.40625px">码</span><span class="ace_cjk" style="width:15.40625px">实</span><span class="ace_cjk" style="width:15.40625px">现</span><span class="ace_cjk" style="width:15.40625px">需</span><span class="ace_cjk" style="width:15.40625px">求</span><span class="ace_cjk" style="width:15.40625px">中</span><span class="ace_cjk" style="width:15.40625px">描</span><span class="ace_cjk" style="width:15.40625px">述</span><span class="ace_cjk" style="width:15.40625px">的</span><span class="ace_cjk" style="width:15.40625px">功</span><span class="ace_cjk" style="width:15.40625px">能</span><span class="ace_cjk" style="width:15.40625px">。</span></span></div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_keyword">while</span>&nbsp;</div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"><span class="ace_indent-guide">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_comment">//end_code</span></div><div class="ace_line" style="height:17px">&nbsp;&nbsp;&nbsp;&nbsp;<span class="ace_support ace_function">return</span>&nbsp;<span class="ace_support ace_function">current</span><span class="ace_paren ace_lparen">(</span><span class="ace_variable">$monkeys</span><span class="ace_paren ace_rparen">)</span>;</div><div class="ace_line" style="height:17px"><span class="ace_paren ace_rparen">}</span></div><div class="ace_line" style="height:17px">&nbsp;</div><div class="ace_line" style="height:17px"><span class="ace_variable">$a</span>&nbsp;<span class="ace_keyword ace_operator">=</span>&nbsp;<span class="ace_identifier">king</span><span class="ace_paren ace_lparen">(</span><span class="ace_constant ace_numeric">5</span>,&nbsp;<span class="ace_constant ace_numeric">2</span><span class="ace_paren ace_rparen">)</span>;</div><div class="ace_line" style="height:17px"><span class="ace_support ace_function">var_dump</span><span class="ace_paren ace_lparen">(</span><span class="ace_variable">$a</span><span class="ace_paren ace_rparen">)</span>;</div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"><span class="ace_support ace_php_tag">?&gt;</span></div></div><div class="ace_layer ace_marker-layer"></div><div class="ace_layer ace_cursor-layer ace_hidden-cursors"><div class="ace_cursor" style="left: 19.40625px; top: 476px; width: 7.703125px; height: 17px;"></div></div></div></div><div class="ace_scrollbar ace_scrollbar-v" style="display: none; width: 22px; bottom: 0px;"><div class="ace_scrollbar-inner" style="width: 22px; height: 493px;"></div></div><div class="ace_scrollbar ace_scrollbar-h" style="display: none; height: 22px; left: 49px; right: 0px;"><div class="ace_scrollbar-inner" style="height: 22px; width: 1064px;"></div></div><div style="height: auto; width: auto; top: -100px; left: -100px; visibility: hidden; position: fixed; white-space: pre; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; overflow: hidden;"><div style="height: auto; width: auto; top: -100px; left: -100px; visibility: hidden; position: fixed; white-space: pre; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; overflow: visible;"></div><div style="height: auto; width: auto; top: -100px; left: -100px; visibility: hidden; position: fixed; white-space: pre; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; overflow: visible;">X</div></div></pre>
        <div class="maxsize-log" style="display: none;">
            <div id="div-minisize"></div>
        </div>
        <textarea class="text-log" readonly="" style="position: absolute; right: 0px; bottom: 0px; width: 49px; height: 34px; max-height: 199.333333333333px;">
        </textarea>
        <div class="minisize-log">
            <div id="div-maxsize"></div>
        </div>
    </div>

    <script>
        var langTools = ace.require("ace/ext/language_tools");
        var editor = ace.edit("editor");
        editor.setTheme("ace/theme/idle_fingers");
        editor.setOptions({
            enableBasicAutocompletion: true,
            enableLiveAutocompletion: true
        });
        // uses http://rhymebrain.com/api.aspx
        editor.commands.on("afterExec", function (e) {
            if (e.command.name == "insertstring" && /^[\\.\(.]$/.test(e.args)) {
                editor.execCommand("startAutocomplete");
            }
        });
        var rhymeCompleter = {
            getCompletions: function (editor, session, pos, prefix, callback) {
                console.log("prefix" + prefix);
                $.getJSON("loadCodeNote.action?filePath=" + $("#input-projectpath").val(),
                    function (wordList) {
                        console.log(wordList);
                        // wordList like [{"word":"flow","freq":24,"score":300,"flags":"bc","syllables":"1"}]
                        callback(null, wordList.map(function (ea) {
                            return {
                                name: ea.word,
                                value: ea.word,
                                score: ea.score,
                                meta: "rhyme"
                            }
                        }));
                    })
            }
        }
        langTools.addCompleter(rhymeCompleter);
    </script>
    <!-- Large modal -->
    <!-- Modal -->
    <div class="modal fade bs-example-modal-lg" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                    </button>
                    <!-- <h4 class="modal-title" id="myModalLabel">Modal title</h4> -->
                </div>
                <div class="modal-body">
                    <center>
                        <iframe height="498" width="510" src="" frameborder="0" allowfullscreen=""></iframe>
                    </center>
                </div>
            </div>
        </div>
    </div>

    <!-- 等待编译 -->
    <!-- 编程时间到等待编译 -->
    <div class="modal fade bs-example-modal-sm" id="waiting" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title" id="myModalLabel"></h4>
                </div>
                <div class="modal-body">
                    <center>
                        <img style="width:200px;height:150px" src="./猿圈 挑战_files/waiting.gif">
                    </center>
                    <!-- <center>
						<div ms-widget="loading" data-loading-type="spinning-bubbles"
					style="width: 200px; height: 120px; position: relative; zoom: 1;"></div>
					</center> -->
                </div>
                <div class="modal-footer">
                    <button disabled="" id="btn-stop-compile" type="button" class="btn btn-danger"><span>(3)</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- </div> -->
    <!-- 编译超时的弹出框 -->
    <div class="modal fade bs-example-modal" id="modal-timeout" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="H1">程序编译超时</h4>
                </div>
                <div class="modal-body">编译超时，请检查程序逻辑</div>
                <div class="modal-footer">
                    <a href="javascript:;" id="btn-close-timeout" type="button" class="btn btn-primary" data-dismiss="modal">关闭</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 选择在线展示还是下载安装 -->
    <div id="modal-confirm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="H2">确定提交吗？</h4>
                </div>
                <div class="modal-body">
                    1.点击下方“提交”按钮，将会提交该项目作为最后评分依据，如果编译不通过，会极大的影响您本项目的得分。
                    <br> 2.如果您还不想提交，请点击右上角关闭。
                </div>
                <div class="modal-footer">
                    <!-- <button id="btn-online" type="button" class="btn btn-default"
						data-dismiss="modal">在线展示</button> -->
                    <a id="btn-confirm-submit" type="button" class="btn btn-primary" data-dismiss="modal">&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 挑战完成提示框 -->
    <div class="modal fade bs-example-modal-sm" id="modal-complete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title" id="H3"></h4>
                </div>
                <div class="modal-body">
                    <div id="info-div"></div>
                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    <!-- 编程时间到等待编译 -->
    <div class="modal fade bs-example-modal-sm" id="waiting-auto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title" id="H4">编译中，请稍候... ...</h4>
                </div>
                <div class="modal-body">
                    <center>
                        <img style="width:200px;height:150px" src="./猿圈 挑战_files/waiting.gif">
                    </center>
                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    <!-- 在线展示Android项目 -->
    <div id="show-android" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:0;">
        <div class="modal-dialog" style="width: 410px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="H5">php项目项目展示</h4>
                </div>

                <div class="modal-body">
                    <center>
                        <!--ms-if-->
                    </center>
                    <!-- 暂无预览 -->

                </div>
            </div>
        </div>
    </div>
    <!-- 控制左侧标签的js -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./猿圈 挑战_files/bootstrap.min.js" type="text/javascript"></script>
    <script src="./猿圈 挑战_files/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        // Accordion
        $("#menu-collapse").accordion({
            header: "h3"
        });
        $("#menu-collapse1").accordion({
            header: "h3"
        });
        $(document).ready(function () {
            $(document).bind("contextmenu", function (e) {
                return false;
            });
        });
    </script>
    <script type="text/javascript">
        $("#preview").click(function () {
            // 点击"编译运行"按钮
            $('#show-android').modal({
                keyboard: false,
                backdrop: 'static',
                show: true
            });
        });
    </script>
    <script type="text/javascript">
        function hideleft() {
            $(".div-left").css("left", "-300px");
            $(".div-right").css("left", "0");
            $("#showleft").show();
        }

        function showleft() {
            $(".div-left").css("left", "0");
            $(".div-right").css("left", "300px");
            $("#showleft").hide();
        }
    </script>



</body>

</html>
