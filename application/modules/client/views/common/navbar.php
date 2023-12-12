
<nav class="navbar navbar-expand-lg bg-white fixed-top p-3 border">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="" href="https://nrcp.dost.gov.ph/" target="_blank">
    <img src="<?php echo base_url("assets/oprs/img/nrcp.png"); ?>" height="40" width="40">
    </a>
    
  <a class="" href="https://skms.nrcp.dost.gov.ph/" target="_blank">
    <img src="<?php echo base_url("assets/images/skms.png"); ?>" height="40" width="80">
    </a>
    
  <a class="" href="https://researchjournal.nrcp.dost.gov.ph/">
    <img src="<?php echo base_url("assets/oprs/img/ejicon-07.png"); ?>" height="40" width="40"></a>

    <a class="navbar-brand ml-2 font-weight-bold" href="https://researchjournal.nrcp.dost.gov.ph/">eJournal</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0 font-weight-bold">
      <li class="nav-item">
        <a class="nav-link" id="nav_home" href="<?php echo base_url();?>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('/client/ejournal/about');?>">About<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('/client/ejournal/guidelines');?>">Guidelines</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('/client/ejournal/editorial');?>">Editorial Board</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://skms.nrcp.dost.gov.ph/main/login" target="_blank">Submit Manuscript Here</a>
      </li>
    </ul>

    <form method="post" class="dropdown form-inline my-2 my-lg-0 ">
       <select class="form-control bg-dark text-white font-weight-bold" id="search_filter">
      <option value="1">Title</option>
      <option value="2">Author</option>
      <option value="3" selected> Keywords</option>
    </select>
    <div class="right-inner-addon">
        <i class="oi oi-magnifying-glass  "></i>
        <input type="text"
               class="form-control border-primary text-primary" 
               placeholder="Search" id="search_ejournal" />
    </div>
    </form>
  </div>
</nav>

