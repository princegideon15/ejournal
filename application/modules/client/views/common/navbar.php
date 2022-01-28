
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand font-weight-bold" href="#"><img src="<?php echo base_url('assets/images/ejicon-07.png');?>" width="50" height="50" alt=""> eJournal</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link" id="nav_home" href="<?php echo base_url();?>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" id="nav_gdl">Guidelines</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" id="nav_edt">Editorial Boards</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://skms.nrcp.dost.gov.ph" target="_blank">SKMS Portal</a>
      </li>
    </ul>

    <form method="post" class="dropdown form-inline my-2 my-lg-0 ">
       <select class="form-control bg-primary text-white font-weight-bold" id="search_filter">
      <option value="1">Title</option>
      <option value="2">Author/Co-author</option>
      <option value="3" selected> Keywords</option>
    </select>
    <div class="right-inner-addon">
        <i class="oi oi-magnifying-glass  "></i>
        <input type="text"
               class="form-control border-primary  text-primary" 
               placeholder="Quick Search" id="search_ejournal" />
    </div>
    </form>
  </div>
</nav>

