<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $main_title; ?></title>
    <link rel="icon" href="<?php echo base_url("assets/images/ejicon-07.png"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/admin.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/font/css/open-iconic-bootstrap.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/jquery-editable-select.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/dataTables.bootstrap4.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/select.dataTables.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/animate.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/jquery.loading.admin.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/admin/vendor/font-awesome/css/font-awesome.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/buttons.dataTables.min.css"); ?>">
    <link href="<?php echo base_url(); ?>assets/css/sh-autocomplete.min.css" rel="stylesheet">
    
    
    <style>
    /* Customize the label (the container) */
    .rd_container {
    display: block;
    position: relative;
    padding-left: 25px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    }
    /* Hide the browser's default radio button */
    .rd_container input {
    position: absolute;
    opacity: 0;
    }
    /* Create a custom radio button */
    .checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
    }
    /* On mouse-over, add a grey background color */
    .rd_container:hover input ~ .checkmark {
    background-color: #ccc;
    }
    /* When the radio button is checked, add a blue background */
    .rd_container input:checked ~ .checkmark {
    background-color: #2196F3;
    }
    /* Create the indicator (the dot/circle - hidden when not checked) */
    .checkmark:after {
    content: "";
    position: absolute;
    display: none;
    }
    /* Show the indicator (dot/circle) when checked */
    .rd_container input:checked ~ .checkmark:after {
    display: block;
    }
    /* Style the indicator (dot/circle) */
    .rd_container .checkmark:after {
    top: 9px;
    left: 9px;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: white;
    }
    </style>
    
    <style>
    .icon-wrapper{
    position:relative;
    float:left;
    }
    .badge-msg{
    margin: 0;
    border-radius: 100%;
    position:absolute;
    top:-5px;
    right:-8px;
    }
    .badge-nav{
    margin: 0;
    border-radius: 100%;
    position:absolute;
    top:9px;
    right:25px;
    }
    </style>
    <style>
    div.sticky{
    position: sticky;
    top: 4.5rem;
    }
    div.sticky-right-panel{
    position: sticky;
    top: 4.5rem;
    }

    /* feedback */
.feedback-app {
  width: 90%;
  max-width: 500px;
  margin: 0 auto;
}
.feedback-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}

.feedback-item {
  width: 90px;
  height: 90px;
  display: flex;
  justify-content: center;
  align-items: center;
  user-select: none;
}
.feedback-item .radio {
  display: none;
}
.feedback-item .radio ~ span {
  font-size: 3rem;
  filter: grayscale(100);
  cursor: pointer;
  transition: 0.3s;
}

.feedback-item .radio:checked ~ span {
  filter: grayscale(0);
  font-size: 4rem;
}
    </style>

    
  </head>