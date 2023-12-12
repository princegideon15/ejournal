<!DOCTYPE html>
<html lang="en"> 
<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $main_title; ?></title>
    <script type="text/javascript" >var base_url = '<?php echo base_url(); ?>';</script>
    <script type="text/javascript" src="<?php echo base_url("assets/js/jquery-3.3.1.min.js"); ?>"></script>

    <link rel="stylesheet" href="<?php echo base_url("assets/css/bootstrap.min.css");?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/font/css/open-iconic-bootstrap.css");?>">
    <link rel="icon" href="<?php echo base_url("assets/images/ejicon-07.png");?>">
    <link href="<?php echo base_url("assets/css/animate.min.css");?>" rel="stylesheet"/>
    <link rel="stylesheet" href="<?php echo base_url("assets/css/jquery-editable-select.min.css");?>"> 
    <link rel="stylesheet" href="<?php echo base_url("assets/css/jquery.loading.css"); ?>">

    
    <style>
    pre {
        display: block;
        font-family:  Helvetica, Arial, sans-serif;
        white-space: pre-wrap;
        margin: 1em 0;
        font-size:16px;
    } 
    </style>

    <style>
    .oi-spin {
    -animation: spin .7s infinite linear;
    -ms-animation: spin .7s infinite linear;
    -webkit-animation: spinw .7s infinite linear;
    -moz-animation: spinm .7s infinite linear;
    }

    @keyframes spin {
        from { transform: scale(1) rotate(0deg);}
        to { transform: scale(1) rotate(360deg);}
    }
      
    @-webkit-keyframes spinw {
        from { -webkit-transform: rotate(0deg);}
        to { -webkit-transform: rotate(360deg);}
    }

    @-moz-keyframes spinm {
        from { -moz-transform: rotate(0deg);}
        to { -moz-transform: rotate(360deg);}
    }
    .right-inner-addon {
    position: relative;
    }
    .right-inner-addon input {
        padding-right: 30px;    
    }
    .right-inner-addon i {
        position: absolute;
        right: 0px;
        padding: 10px 12px;
        pointer-events: none;
    }

    div.sticky{
    position: sticky;
    top: 6rem;
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

    /* star rating */
    .rating {
    display: flex;
    flex-direction: row-reverse;
    justify-content: left;
    margin-top: -20px;
    padding-top: 0;
    margin-left: -5px;
    }

    .rating > input{ display:none;}

    .rating > label {
    position: relative;
        width: 1em;
        font-size: 2.5vw;
        color: gray;
        cursor: pointer;
    }
    .rating > label::before{ 
    content: "\2605";
    position: absolute;
    opacity: 0;
    color: #FFD600;
    }
    .rating > label:hover:before,
    .rating > label:hover ~ label:before {
    opacity: 1 !important;
    }

    .rating > input:checked ~ label:before{
    opacity:1;
    }

    .rating:hover > input:checked ~ label:before{ opacity: 0; }

    </style>
    
</head>

<body style="overflow-y: scroll !important">


