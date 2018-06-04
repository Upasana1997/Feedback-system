<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : addsuggestion
    Created on : Apr 22, 2018, 9:26:45 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="supernova">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=http%3A%2F%2Fwww.jotform.com%2Fform%2F81340922568459" title="oEmbed Form"><link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=http%3A%2F%2Fwww.jotform.com%2Fform%2F81340922568459" title="oEmbed Form">
<meta property="og:title" content="Form" >
<meta property="og:url" content="https://form.jotform.me/81340922568459" >
<meta property="og:description" content="Please click the link to complete this form.">
<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico">
<link rel="canonical" href="https://form.jotform.me/81340922568459" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="HandheldFriendly" content="true" />
<title>Form</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.6082" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.6082" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.6082" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="issueform1.css">


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */

.form-all {
  font-family: "Terminal Dosis Light", sans-serif;
}
.form-all {
  width: 800px;
}
.form-label-left,
.form-label-right {
  width: 150px;
}
.form-label {
  white-space: normal;
}
.form-label.form-label-auto {
  display: inline-block;
  float: left;
  text-align: left;
  width: 150px;
}
.form-label-left {
  display: inline-block;
  white-space: normal;
  float: left;
  text-align: left;
}
.form-label-right {
  display: inline-block;
  white-space: normal;
  float: left;
  text-align: right;
}
.form-label-top {
  white-space: normal;
  display: block;
  float: none;
  text-align: left;
}
.form-radio-item label:before {
  top: 0;
}
.form-all {
  font-size: 16px;
}
.form-label {
  font-weight: bold;
}
.form-checkbox-item label,
.form-radio-item label {
  font-weight: normal;
}
.supernova {
  background-color: #e6e6ec;
  background-color: #ffffff;
}
.supernova body {
  background-color: transparent;
}

@media screen and (min-width: 480px) {
  .supernova .form-all {
    border: 1px solid #e6e6e6;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
    box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
  }
}

@media screen and (max-width: 480px) {
  .jotform-form {
    padding: 10px 0;
  }
}

@media screen and (min-width: 480px) and (max-width: 767px) {
  .jotform-form {
    padding: 30px 0;
  }
}

@media screen and (min-width: 480px) and (max-width: 799px) {
  .jotform-form {
    padding: 30px 0;
  }
}

@media screen and (min-width: 768px) {
  .jotform-form {
    padding: 60px 0;
  }
}

@media screen and (max-width: 799px) {
  .jotform-form {
    padding: 12px;
  }
}
/* | */
.supernova .form-all,
.form-all {
  background-color: #e6e6ec;
  border: 1px solid transparent;
}
.form-header-group {
  border-color: #c9c9d6;
}
.form-matrix-table tr {
  border-color: #c9c9d6;
}
.form-matrix-table tr:nth-child(2n) {
  background-color: #d8d8e1;
}
.form-all {
  color: #808080;
}
.form-header-group .form-header {
  color: #808080;
}
.form-header-group .form-subHeader {
  color: #9a9a9a;
}
.form-sub-label {
  color: #9a9a9a;
}
.form-label-top,
.form-label-left,
.form-label-right,
.form-html {
  color: #808080;
}
.form-checkbox-item label,
.form-radio-item label {
  color: #9a9a9a;
}
.form-line.form-line-active {
  -webkit-transition-property: all;
  -moz-transition-property: all;
  -ms-transition-property: all;
  -o-transition-property: all;
  transition-property: all;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  -ms-transition-duration: 0.3s;
  -o-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease;
  -moz-transition-timing-function: ease;
  -ms-transition-timing-function: ease;
  -o-transition-timing-function: ease;
  transition-timing-function: ease;
  background-color: rgba(255, 251, 234, 0);
}
/* omer */
.form-radio-item,
.form-checkbox-item {
  padding-bottom: 0px !important;
}
.form-radio-item:last-child,
.form-checkbox-item:last-child {
  padding-bottom: 0;
}
/* omer */
.form-single-column .form-checkbox-item,
.form-single-column .form-radio-item {
  width: 100%;
}
.supernova {
  height: 100%;
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
  background-repeat: repeat;
}
.supernova {
  background-image: none;
}
#stage {
  background-image: none;
}
/* | */
.form-all {
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
  background-repeat: repeat;
}
.form-header-group {
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
}
.form-line {
  margin-top: 0px;
  margin-bottom: 0px;
}
.form-line {
  padding: 12px 36px;
}
.form-all .form-textbox,
.form-all .form-radio-other-input,
.form-all .form-checkbox-other-input,
.form-all .form-captcha input,
.form-all .form-spinner input,
.form-all .form-pagebreak-back,
.form-all .form-pagebreak-next,
.form-all .qq-upload-button,
.form-all .form-error-message {
  -webkit-border-radius: 0px;
  -moz-border-radius: 0px;
  border-radius: 0px;
}
.form-all .form-textarea {
  -webkit-border-radius: 0px;
  -moz-border-radius: 0px;
  border-radius: 0px;
}
.form-all .qq-upload-button,
.form-all .form-submit-button,
.form-all .form-submit-reset,
.form-all .form-submit-print {
  font-size: 1em;
  padding: 9px 15px;
  font-family: "Terminal Dosis Light", sans-serif;
  font-size: 30px;
  font-weight: normal;
}
.form-all .qq-upload-button,
.form-all .form-submit-button,
.form-all .form-submit-reset,
.form-all .form-submit-print {
  color: #ffffff !important;
  background: #f3574b;
  box-shadow: none;
  text-shadow: none;
}
.form-all .form-pagebreak-back,
.form-all .form-pagebreak-next {
  font-size: 1em;
  padding: 9px 15px;
  font-family: "Terminal Dosis Light", sans-serif;
  font-size: 16px;
  font-weight: normal;
}

h2.form-header {
  line-height: 1.618em;
  font-size: 1.714em;
}
h2 ~ .form-subHeader {
  line-height: 1.5em;
  font-size: 1.071em;
}
.form-header-group {
  text-align: left;
}

.form-captcha input,
.form-spinner input,
.form-error-message {
  padding: 4px 3px 2px 3px;
}
.form-header-group {
  font-family: "Terminal Dosis Light", sans-serif;
}
.form-section {
    
  padding: 0px 0px 0px 0px;
}
.form-header-group {
  margin: 12px 36px 12px 36px;
}
.form-header-group {
  padding: 24px 0px 24px 0px;
}
.form-textbox,
.form-textarea {
  padding: 4px 3px 2px 3px;
}
.form-dropdown {
  -webkit-appearance: menulist-button;
  border-color: #cccccc;
}
[data-type="control_dropdown"] .form-input,
[data-type="control_dropdown"] .form-input-wide {
  width: 150px;
}
.form-label {
  font-family: "Terminal Dosis Light", sans-serif;
}
li[data-type="control_image"] div {
  text-align: left;
}
li[data-type="control_image"] img {
  border: none;
  border-width: 0px !important;
  border-style: solid !important;
  border-color: false !important;
}
.form-line-column {
  width: auto;
}
.form-line-error {
  background-color: #e6e6ec;
  -webkit-box-shadow: inset 0px 3px 11px -7px #ff3200;
  -moz-box-shadow: inset 0px 3px 11px -7px #ff3200;
  box-shadow: inset 0px 3px 11px -7px #ff3200;
}
.form-line-error input:not(#coupon-input),
.form-line-error textarea,
.form-line-error .form-validation-error {
  -webkit-transition-property: none;
  -moz-transition-property: none;
  -ms-transition-property: none;
  -o-transition-property: none;
  transition-property: none;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  -ms-transition-duration: 0.3s;
  -o-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease;
  -moz-transition-timing-function: ease;
  -ms-transition-timing-function: ease;
  -o-transition-timing-function: ease;
  transition-timing-function: ease;
  border: 1px solid #fff4f4;
  -moz-box-shadow: 0 0 3px #fff4f4;
  -webkit-box-shadow: 0 0 3px #fff4f4;
  box-shadow: 0 0 3px #fff4f4;
}
.form-line-error .form-error-message {
  margin: 0;
  position: absolute;
  color: #fff;
  display: inline-block;
  right: 0;
  font-size: 10px;
  position: absolute!important;
  box-shadow: none;
  top: 0px;
  line-height: 20px;
  color: #FFF;
  background: #ff3200;
  padding: 0px 5px;
  bottom: auto;
  min-width: 105px;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
.form-line-error .form-error-message img,
.form-line-error .form-error-message .form-error-arrow {
  display: none;
}
.ie-8 .form-all {
  margin-top: auto;
  margin-top: initial;
}
.ie-8 .form-all:before {
  display: none;
}
/* | */
@media screen and (max-width: 480px), screen and (max-device-width: 767px) and (orientation: portrait), screen and (max-device-width: 415px) and (orientation: landscape) {
  .testOne {
    letter-spacing: 0;
  }
  .testTwo {
    letter-spacing: 1;
  }
  .jotform-form {
    padding: 12px 0 0 0;
  }
  .form-all {
    border: 0;
    width: 94%!important;
    max-width: initial;
  }
  .form-sub-label-container {
    width: 100%;
    margin: 0;
    margin-right: 0;
    float: left;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  span.form-sub-label-container + span.form-sub-label-container {
    margin-right: 0;
  }
  .form-sub-label {
    white-space: normal;
  }
  .form-address-table td,
  .form-address-table th {
    padding: 0 1px 10px;
  }
  .form-submit-button,
  .form-submit-print,
  .form-submit-reset {
    width: 100%;
    margin-left: 0!important;
  }
  div[id*=at_] {
    font-size: 14px;
    font-weight: 700;
    height: 8px;
    margin-top: 6px;
  }
  .showAutoCalendar {
    width: 20px;
  }
  img.form-image {
    max-width: 100%;
    height: auto;
  }
  .form-matrix-row-headers {
    width: 100%;
    word-break: break-all;
    min-width: 40px;
  }
  .form-collapse-table,
  .form-header-group {
    margin: 0;
  }
  .form-collapse-table {
    height: 100%;
    display: inline-block;
    width: 100%;
  }
  .form-collapse-hidden {
    display: none !important;
  }
  .form-input {
    width: 100%;
  }
  .form-label {
    width: 100% !important;
  }
  .form-label-left,
  .form-label-right {
    display: block;
    float: none;
    text-align: left;
    width: auto!important;
  }
  .form-line,
  .form-line.form-line-column {
    padding: 2% 5%;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  input[type=text],
  input[type=email],
  input[type=tel],
  textarea {
    width: 100%;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    max-width: initial !important;
  }
  .form-dropdown,
  .form-textarea,
  .form-textbox {
    width: 100%!important;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  .form-input,
  .form-input-wide,
  .form-textarea,
  .form-textbox,
  .form-dropdown {
    max-width: initial!important;
  }
  .form-address-city,
  .form-address-line,
  .form-address-postal,
  .form-address-state,
  .form-address-table,
  .form-address-table .form-sub-label-container,
  .form-address-table select,
  .form-input {
    width: 100%;
  }
  div.form-header-group {
    padding: 24px 0px !important;
    margin: 0 12px 2% !important;
    margin-left: 5%!important;
    margin-right: 5%!important;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  div.form-header-group.hasImage img {
    max-width: 100%;
  }
  [data-type="control_button"] {
    margin-bottom: 0 !important;
  }
  [data-type=control_fullname] .form-sub-label-container {
    width: 48%;
  }
  [data-type=control_fullname] .form-sub-label-container:first-child {
    margin-right: 4%;
  }
  [data-type=control_phone] .form-sub-label-container {
    width: 65%;
  }
  [data-type=control_phone] .form-sub-label-container:first-child {
    width: 31%;
    margin-right: 4%;
  }
  [data-type=control_datetime] .form-sub-label-container + .form-sub-label-container,
  [data-type=control_datetime] .form-sub-label-container:first-child {
    width: 27.3%;
    margin-right: 6%;
  }
  [data-type=control_datetime] .form-sub-label-container + .form-sub-label-container + .form-sub-label-container {
    width: 33.3%;
    margin-right: 0;
  }
  [data-type=control_datetime] span + span + span > span:first-child {
    display: block;
    width: 100% !important;
  }
  [data-type=control_birthdate] .form-sub-label-container,
  [data-type=control_datetime] span + span + span > span:first-child + span + span,
  [data-type=control_time] .form-sub-label-container {
    width: 27.3%!important;
    margin-right: 6% !important;
  }
  [data-type=control_birthdate] .form-sub-label-container:last-child,
  [data-type=control_time] .form-sub-label-container:last-child {
    width: 33.3%!important;
    margin-right: 0 !important;
  }
  .form-pagebreak-back-container,
  .form-pagebreak-next-container {
    width: 50% !important;
  }
  .form-pagebreak-back,
  .form-pagebreak-next,
  .form-product-item.hover-product-item {
    width: 100%;
  }
  .form-pagebreak-back-container {
    padding: 0;
    text-align: right;
  }
  .form-pagebreak-next-container {
    padding: 0;
    text-align: left;
  }
  .form-pagebreak {
    margin: 0 auto;
  }
  .form-buttons-wrapper {
    margin: 0!important;
    margin-left: 0!important;
  }
  .form-buttons-wrapper button {
    width: 100%;
  }
  /* .form-buttons-wrapper .form-submit-print {
    margin: 0 !important;
  } */
  table {
    width: 100%!important;
    max-width: initial!important;
  }
  table td + td {
    padding-left: 3%;
  }
  .form-checkbox-item,
  .form-radio-item {
    white-space: normal!important;
  }
  .form-checkbox-item input,
  .form-radio-item input {
    width: auto;
  }
  .form-collapse-table {
    margin: 0 5%;
    display: block;
    zoom: 1;
    width: auto;
  }
  .form-collapse-table:before,
  .form-collapse-table:after {
    display: table;
    content: '';
    line-height: 0;
  }
  .form-collapse-table:after {
    clear: both;
  }
  .fb-like-box {
    width: 98% !important;
  }
  .form-error-message {
    clear: both;
    bottom: -10px;
  }
  .date-separate,
  .phone-separate {
    display: none;
  }
  .custom-field-frame,
  .direct-embed-widgets,
  .signature-pad-wrapper {
    width: 100% !important;
  }
}
/* | */

/*PREFERENCES STYLE*/
    .form-all {
      font-family: Terminal Dosis Light, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Terminal Dosis Light, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Terminal Dosis Light, sans-serif;
    }
    .form-header-group {
      font-family: Terminal Dosis Light, sans-serif;
    }
    .form-label {
      font-family: Terminal Dosis Light, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: inline-block;
    float: left;
    text-align: left;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      width: 800px;
    }
  
    .form-label-left,
    .form-label-right,
    .form-label-left.form-label-auto,
    .form-label-right.form-label-auto {
      width: 150px;
    }
  
    .form-all {
      font-size: 16px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 16px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 16px
    }
  
    .supernova .form-all, .form-all {
      background-color: rgba(155,155,155,0.51);
      border: 1px solid transparent;
    }
  
    .form-all {
      color: #6a4a3c;
    }
    .form-header-group .form-header {
      color: #6a4a3c;
    }
    .form-header-group .form-subHeader {
      color: #6a4a3c;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #6a4a3c;
    }
    .form-sub-label {
      color: #846456;
    }
  
    .supernova {
      background-color: #eb6841;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: #fff;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
.supernova .form-all {
    box-shadow : none !important;
    border : none !important;
}

.supernova {
    padding : 0;
    background : #E6E6EC;
}

.form-all * {
    -moz-box-sizing : border-box;
    -webkit-box-sizing : border-box;
    box-sizing : border-box;
    font-weight : normal;
    font-style : normal;
}

.form-all {
    width : 100%;
    background : #E6E6EC;
    max-width : 800px;
    margin-left: 270px;
    margin-top: -50px;
}

.form-textbox, .form-textarea, .form-dropdown {
    padding : 4px;
    box-shadow : 0 1px 2px #eee inset;
}

.form-header-group {
    text-align : center;
    padding : 0;
    margin-right : 0;
    margin-left : 0;
    background : -moz-linear-gradient(left,  rgba(51,51,51,1) 88%, rgba(243,87,75,1) 88%);
    background : -webkit-gradient(linear, left top, right top, color-stop(88%,rgba(51,51,51,1)), color-stop(88%,rgba(243,87,75,1)));
    background : -webkit-linear-gradient(left,  rgba(51,51,51,1) 88%,rgba(243,87,75,1) 88%);
    background : -o-linear-gradient(left,  rgba(51,51,51,1) 88%,rgba(243,87,75,1) 88%);
    background : -ms-linear-gradient(left,  rgba(51,51,51,1) 88%,rgba(243,87,75,1) 88%);
    background : linear-gradient(to right,  rgba(51,51,51,1) 88%,rgba(243,87,75,1) 88%);
    filter : progid:DXImageTransform.Microsoft.gradient( startColorstr='#333333', endColorstr='#f3574b',GradientType=1 );
}

.form-header {
    color : #FFF !important;
    font-size : 36px !important;
    width : 98%;
    margin : 0 !important;
    padding : 15px;
    font-size : 22px;
   /*  background : url(https://shots.jotform.com/elton/images/cart_icon.png) no-repeat right 17px; */
    padding-right : 0;
    width : 100%;
    padding-left : 25px;
}

.form-label-top, .form-label-left, .form-label-right {
    background : #f3574b;
    color : #fff;
    text-align : left;
    padding-left : 30px;
    margin-right : 0;
    padding : 25px;
    width : 145px !important;
}

.form-line-active {
    background : -moz-linear-gradient(left,  rgba(255,251,234,0) 0%, rgba(255,251,234,0) 18%, rgba(255,251,234,1) 18%, rgba(255,251,234,1) 100%);
    background : -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(255,251,234,0)), color-stop(18%,rgba(255,251,234,0)), color-stop(18%,rgba(255,251,234,1)), color-stop(100%,rgba(255,251,234,1)));
    background : -webkit-linear-gradient(left,  rgba(255,251,234,0) 0%,rgba(255,251,234,0) 18%,rgba(255,251,234,1) 18%,rgba(255,251,234,1) 100%);
    background : -o-linear-gradient(left,  rgba(255,251,234,0) 0%,rgba(255,251,234,0) 18%,rgba(255,251,234,1) 18%,rgba(255,251,234,1) 100%);
    background : -ms-linear-gradient(left,  rgba(255,251,234,0) 0%,rgba(255,251,234,0) 18%,rgba(255,251,234,1) 18%,rgba(255,251,234,1) 100%);
    background : linear-gradient(to right,  rgba(255,251,234,0) 0%,rgba(255,251,234,0) 18%,rgba(255,251,234,1) 18%,rgba(255,251,234,1) 100%);
    filter : progid:DXImageTransform.Microsoft.gradient( startColorstr='#00ffffff', endColorstr='#ffffff',GradientType=1 );
}

ul.form-section  ul.form-section {
    border-top-right-radius : 20px;
    background : -moz-linear-gradient(left,  rgba(255,255,255,0) 0%, rgba(255,255,255,0) 18%, rgba(255,255,255,1) 18%, rgba(255,255,255,1) 100%);
    background : -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(255,255,255,0)), color-stop(18%,rgba(255,255,255,0)), color-stop(18%,rgba(255,255,255,1)), color-stop(100%,rgba(255,255,255,1)));
    background : -webkit-linear-gradient(left,  rgba(255,255,255,0) 0%,rgba(255,255,255,0) 18%,rgba(255,255,255,1) 18%,rgba(255,255,255,1) 100%);
    background : -o-linear-gradient(left,  rgba(255,255,255,0) 0%,rgba(255,255,255,0) 18%,rgba(255,255,255,1) 18%,rgba(255,255,255,1) 100%);
    background : -ms-linear-gradient(left,  rgba(255,255,255,0) 0%,rgba(255,255,255,0) 18%,rgba(255,255,255,1) 18%,rgba(255,255,255,1) 100%);
    background : linear-gradient(to right,  rgba(255,255,255,0) 0%,rgba(255,255,255,0) 18%,rgba(255,255,255,1) 18%,rgba(255,255,255,1) 100%);
    filter : progid:DXImageTransform.Microsoft.gradient( startColorstr='#00ffffff', endColorstr='#ffffff',GradientType=1 );
}

ul.form-section  ul.form-section:last-child {
    background : transparent !important;
    margin-top : 40px;
}

#id_2 {
    border-top-right-radius : 20px;
}

.form-line-error {
    background : transparent;
}

.form-product-item label, .form-product-item .form-radio, .form-product-item .form-checkbox {
    font-size : 20px;
}

.form-line {
    padding : 0;
    margin : 0;
    display : inline-block;
}

.form-input {
    padding : 10px;
    padding-left : 30px;
}

/* .form-submit-button {
    background : #F3574B url('https://shots.jotform.com/elton/images/order_form_button_bg.png') no-repeat 123px 6px;
    box-shadow : none;
    border : none;
    filter : none;
    text-shadow : none;
    color : #FFF;
    outline : none;
    text-transform : uppercase;
    border-radius : 5px;
    padding : 5px 47px 5px 30px;
}
 */
.form-submit-button:hover {
    box-shadow : none;
}

.form-buttons-wrapper {
    margin : 0 !important;
    padding : 0;
    text-align : center;
}

.form-payment-total span {
    font-size : 20px;
}

.form-button-error {
    font-size : 22px;
}

.form-error-message {
    font-size : 20px !important;
    line-height : 13px;
}

.form-product-item  {
    color : #F3574B;
}

input[name$="[first]"] {
    width : 130px;
}

input[name$="[last]"] {
    width : 173px;
}

input[name$="[area]"] {
    width : 50px;
}

input[name$="[phone]"] {
    width : 133px;
}

span.form-sub-label-container+span.form-sub-label-container {
    margin-right : 0;
}

.form-address-line,
.form-address-state,
.form-address-table .form-sub-label-container,
.form-address-table select {
    width : 100%;
}

.form-address-postal,.form-address-city {
    width : 96%;
}

table.form-address-table {
    width : 310px;
}

.form-address-table td,.form-address-table th {
    padding : 0 1px 21px;
}

@media only screen and (max-width:40em){
    ul.form-section ul.form-section {
        background : #FFF !important;
        border-radius : 0 !important;
    }

    .form-line-active {
        background : #FFFBEA;
    }

    #id_2 {
        border-radius : 0 !important;
    }

    .form-label-top, .form-label-left, .form-label-right {
        padding : 5px;
    }

    .form-header-group {
        text-align : left !important;
    }

    .form-header {
        color : #fff !important;
        font-size : 36px !important;
        background-position : right 2px;
    }

    .form-input {
        padding : 10px !important;
    }

    .form-header-group {
        background : -moz-linear-gradient(left,  rgba(51,51,51,1) 69%, rgba(243,87,75,1) 69%);
        background : -webkit-gradient(linear, left top, right top, color-stop(69%,rgba(51,51,51,1)), color-stop(69%,rgba(243,87,75,1)));
        background : -webkit-linear-gradient(left,  rgba(51,51,51,1) 69%,rgba(243,87,75,1) 69%);
        background : -o-linear-gradient(left,  rgba(51,51,51,1) 69%,rgba(243,87,75,1) 69%);
        background : -ms-linear-gradient(left,  rgba(51,51,51,1) 69%,rgba(243,87,75,1) 69%);
        background : linear-gradient(to right,  rgba(51,51,51,1) 69%,rgba(243,87,75,1) 69%);
        filter : progid:DXImageTransform.Microsoft.gradient( startColorstr='#333333', endColorstr='#f3574b',GradientType=1 );
    }

    .form-submit-button {
        width : auto !important;
    }

    .form-product-item .form-sub-label {
        display : block;
    }

    table.form-address-table {
        width : 100%;
    }

    .form-label-top, .form-label-left, .form-label-right {
        width : 100% !important;
    }

    div.form-header-group {
        margin-left : 0 !important;
        margin-right : 0 !important;
    }

}


    /* Injected CSS Code */
</style>
    </head>
    <body>
        
        
         <form class="jotform-form"  method="post" name="form_81340922568459" id="81340922568459" accept-charset="utf-8">
  <input type="hidden" name="formID" value="81340922568459" />
  <div class="form-all">
    <ul class="form-section page-section">
      <li id="cid_20" class="form-input-wide" data-type="control_head">
        <div class="form-header-group ">
          <div class="header-text httal htvam">
            <h2 id="header_20" class="form-header" data-component="header">
              Suggestion Form
            </h2>
          </div>
        </div>
      </li>
<!--             <h5> Enter the subject : </h5>
            <input type="text" name="t1" value="" placeholder="Enter subject"/>
            <h5> Enter your suggestion here : </h5>
            <textarea name="ta1" rows="5" cols="25" placeholder="Enter suggestion">
            </textarea>
            <br>
            <input type="submit" value="submit suggestion" name="b1" />-->

         <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left" id="label_21" for="input_21"> Username </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="input_21" name="q21_username" data-type="input-textbox" class="form-textbox" size="20" value="${get_username}" data-component="textbox" disabled/>
        </div>
      </li>
      
      <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left" id="label_21" for="input_21"> Enter Subject </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="input_21" name="t1" data-type="input-textbox" class="form-textbox" size="20" value="" data-component="textbox" />
        </div>
      </li>

      <li class="form-line" data-type="control_textarea" id="id_26">
        <label class="form-label form-label-left" id="label_26" for="input_26"> Issue </label>
        <div id="cid_26" class="form-input">
          <span class="form-sub-label-container" style="vertical-align:top">
            <textarea id="input_26" class="form-textarea" name="ta1" cols="40" rows="6" data-component="textarea" required></textarea>
            <label class="form-sub-label" for="input_26" style="min-height:13px"> Enter your issue here! </label>
          </span>
        </div>
      </li>
        
      <li class="form-line" data-type="control_button" id="id_13">
        <div id="cid_13" class="form-input-wide">
          <div style="text-align:center" class="form-buttons-wrapper">
            <input id="input_13" type="submit" name="b1" value="SUBMIT" class="btn btn-danger">
        
          
  
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
        url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
            
        
        <c:if test="${param.b1!=null}">
            
              <sql:update dataSource="${db}">
                  insert into tbsuggestions(username,subject,suggestion,status,reply)values('${get_username}','${param.t1}','${param.ta1}','sent','NO REPLY TILL NOW');
                       
            </sql:update>
                   <script>
//                        alert("wrong match");
swal({
  title: "Thank you!",
  text: "Suggestion Uploaded Successfully!",
  icon: "success"
});
                        </script>
    </c:if>
                  </div>
        </div>
      </li>
       </form>
    </body>
</html>
