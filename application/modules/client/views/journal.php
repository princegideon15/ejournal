
<div class="container-fluid pb-5" style="margin-top:70px">

	<div class="row">
		<div class="col">
			<img src="<?php echo base_url("assets/images/Sequence-01.gif"); ?>" class="img-fluid w-100" alt="Responsive image">
		</div>
	</div>
	<br/>
	<div class="row">
		<!-- SIDE NAVIGATION -->
	  <div class="col-2">
        <div class="list-group sticky" id="list_group_menu">
          <a href="#home" data-toggle="tab" class="list-group-item list-group-item-action active"><span class="oi oi-home"></span> Home</a>

			<?php if ($journals != null) {
	$c = 0;foreach ($journals as $item => $value): ?>
				<?php $c++;?>
				<?php echo '<a href="#issue' . $c . '" class="list-group-item list-group-item-action" data-parent="#issue' . $c . '" data-toggle="collapse"><span class="oi oi-book"></span> Volume ' . $item . '<span class="oi oi-chevron-bottom float-right mt-1" style="font-size:10px"></span></a>'; ?>
				<?php echo '<div class="collapse" id="issue' . $c . '" class="list-group-submenu">'; ?>

				<?php foreach ($value as $v) {

					

		$issue = (
			($v['jor_issue'] == 5) ? 'Special Issue No. 1' :
			(($v['jor_issue'] == 6) ? 'Special Issue No. 2' :
				(($v['jor_issue'] == 7) ? 'Special Issue No. 3' :
					(($v['jor_issue'] == 8) ? 'Special Issue No. 4' : 'Issue ' . $v['jor_issue'])))
		);

		echo '<a href="#list_articles" id="item' . $c . '" data-parent="#issue' . $c . '" data-toggle="tab" onclick="get_articles(' . $v['jor_id'] . ')" class="list-group-item sub-item list-group-item-action"><small><span class="oi oi-media-record"></span></small> ' . $issue . '</a>';
	}?>
				<?php echo '</div>'; ?>
			<?php endforeach;}?>

           <a href="#guidelines" class="list-group-item list-group-item-action" data-toggle="tab"><span class="oi oi-task"></span> Guidelines</a>
           <a href="#editorials" class="list-group-item list-group-item-action" data-toggle="tab"><span class="oi oi-people"></span> Editorial Boards</a>
        </div>
	  </div>
	  <div class="col-10">
	    <div class="tab-content" id="nav-tabContent">
	      <div class="tab-pane fade" id="list_articles" role="tabpanel" aria-labelledby="list_articles">

	      	 <div class="jumbotron">
	      	 	<div class="media">
				  <img class="mr-3 img-thumbnail" id="viy_photo" src="<?php echo base_url('assets/images/unavailable.jpg'); ?>" alt="Loading image" style="width:150px; height:210px;cursor:zoom-in">
				  <div class="media-body">
				    <h3 class="mt-0" id="viy"></h3>
				    <p class="text-muted" id="viyd"></p>
				  </div>
				</div>
				  <!-- LIST OF JOURNALS -->
				  <hr class="my-4">
				  <div class="list-group list-group-articles"></div>
				</div>
	      </div>
	      <div class="tab-pane fade" id="guidelines" role="tabpanel" aria-labelledby="guidelines">

	      	 <div class="jumbotron">
				  <h2>Guidelines</h2>
				  <p class="lead"></p>
				  <div class="row">
				  	<div class="col-6">

				  		<embed class="border border-secondary" WMODE="transparent" src="<?php echo base_url('assets/uploads/DO_NOT_DELETE_guidelines.pdf#toolbar=0&navpanes=0&scrollbar=0'); ?>" width="100%" height="700px" type="application/pdf">

				  		<a role="button" class="btn btn-sm btn-secondary" href="<?php echo base_url('assets/uploads/DO_NOT_DELETE_guidelines.pdf'); ?>" download="Guidelines.pdf"><i class="oi oi-data-transfer-download"></i> Download</a>
				  	</div>
				  </div>

				</div>
	      </div>
	      <div class="tab-pane fade" id="editorials" role="tabpanel" aria-labelledby="editorials">

	      	 <div class="jumbotron">
				  <h2>Editorial Boards</h2>
				  <p class="lead"></p>
				  <div class="row">
				  	<div class="col-3">

				  		<?php if ($editorials != null) {
	echo '<ul class="list-group list-group-flush">';
	foreach ($editorials as $row) {
		echo ' <li class="list-group-item">
											<div class="d-flex w-100 justify-content-between">
												<h5 class="mb-1">' . $row->edt_name . '</h5>
											</div>
											<p class="mb-1">' . $row->edt_position . ', ' . $row->edt_affiliation . ', ' . $row->edt_email . '</p>
											<small>Specialization: ' . $row->edt_specialization . '</small>
										  </li>';
	}

	echo '</ul>';
} else {echo '<span class="oi oi-warning"></span> Not yet posted.';}
?>

				  	</div>
				  </div>
				</div>
	      </div>

	      <!-- HOME -->

	      <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home">
	      	 <div class="jumbotron">
	      	 	<div class="row">
	      	 		<div class="col">
	      	 			<h2>Home</h2>
	      	 			<pre><?php echo file_get_contents('./assets/uploads/DO_NOT_DELETE_description.txt'); ?></pre>



	      	 			<?php if ($client_count != '' && $hits_count != '') {
	?>
	      	 			<h6><span class="oi oi-star text-warning"></span> Top 10 Articles</h6>
							<?php $c = 0;foreach ($popular as $row):

		$c++;
		$pop[$c]['title'] = $row->art_title;
		$pop[$c]['id'] = $row->art_id;
		$pop[$c]['id_jor'] = $row->art_jor_id;
		$pop[$c]['file'] = $row->art_abstract_file;
		$pop[$c]['keyw'] = $row->art_keywords;
		$pop[$c]['coa'] = $this->Client_journal_model->get_author_coauthors($row->art_id);
		$issue = (
			($row->jor_issue == 5) ? 'Special Issue No. 1' :
			(($row->jor_issue == 6) ? 'Special Issue No. 2' :
				(($row->jor_issue == 7) ? 'Special Issue No. 3' :
					(($row->jor_issue == 8) ? 'Special Issue No. 4' : 'Issue ' . $row->jor_issue)))
		);
		$pop[$c]['cite'] =  $this->Client_journal_model->get_citation($row->art_id) . '('. $row->art_year .'). ' . ucfirst(strtolower($row->art_title)) . '. NRCP Research Journal, Volume ' . $row->jor_volume . ', ' . $issue . ', ' . $row->art_page;

		$server_dir = '/var/www/html/ejournal/assets/uploads/pdf/';
		$get_file = filesize($server_dir . $row->art_full_text_pdf);

		// $get_file = filesize($_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/uploads/pdf/'.$row->art_full_text_pdf);

		if ($get_file >= 1048576) {
			$pop[$c]['fsize'] = round($get_file / 1024 / 1024, 1) . ' MB';
		} elseif ($get_file >= 1024) {
		$pop[$c]['fsize'] = round($get_file / 1024, 1) . ' KB';
	} else {
		$pop[$c]['fsize'] = round($get_file, 1) . ' bytes';
	}

	$pop[$c]['citations'] = $this->Client_journal_model->count_citation($row->art_id);
	$pop[$c]['count'] = $this->Client_journal_model->count_pdf($row->art_id);
	$pop[$c]['abs'] = $this->Client_journal_model->count_abstract($row->art_id);
	$pop[$c]['cover'] = $this->Client_journal_model->get_cover($row->art_jor_id);

	endforeach;?>

					  		<?php $c = 1;foreach ($pop as $row): ?>
					  		<?php $coa_arr = (explode(",& ", $row['coa']));?>
  			      	 			<div class="media">
								  <img class="mr-1 img-thumbnail" height="10%" width="10%" src="<?php echo base_url('assets/uploads/cover/' . $row['cover'] . ''); ?>">
								  <div class="media-body">
								    <p class="mt-0">
								    	<a href="javascript:void(0);" class="text-primary h6 "onclick="top_article('<?php echo $row['id']; ?>','top','<?php echo $row['file']; ?>')"><?php echo $row['title']; ?></a>
								    	<br/>By

								    	<?php foreach ($coa_arr as $c): ?>
								    		<a href="javascript:void(0);" class="text-dark" onclick="author_details('<?php echo $row['id_jor']; ?>','<?php echo $c; ?>')"><?php echo $c; ?></a>;
								    	<?php endforeach;?>

										<br/>
										<span class="text-secondary">
											<span class="badge badge badge-secondary" data-toggle="tooltip" data-placement="top" title="Full Text Requests"><span class="oi oi-data-transfer-download"></span> <?php echo $row['count']; ?></span>
											<span class="badge badge badge-secondary" data-toggle="tooltip" data-placement="top" title="Abstract Hits"><span class="oi oi-eye"></span> <?php echo $row['abs']; ?></span>
											<span class="badge badge badge-secondary" data-toggle="tooltip" data-placement="top" title="File Size">
												<span class="oi oi-paperclip"></span> <?php echo $row['fsize']; ?>
											</span>
											<span class="badge badge badge-secondary" data-toggle="tooltip" data-placement="top" title="Cited"><span class="oi oi-pin"></span> <?php echo $row['citations']; ?></span>

										</span>
										<a  href="javascript:void(0);" data-toggle="modal" data-target="#citationModal" onclick="get_citee_info('<?php echo addslashes($row['cite']); ?>','<?php echo $row['id'];?>')"><span class="badge badge-light"><span class="oi oi-pin"></span> Cite this paper</span></a>
										
									</p>
										
									
										<!-- <p>
										<strong>Cite this Paper :</strong> <br/>
										<a href="javascript:void(0);" style="text-decoration:none" class="text-dark copy_citation" onclick="copyToClipboard('<?php echo addslashes($row['cite']); ?>')" data-toggle="tooltip" title="Click to copy & paste" data-placement="top"><?php echo $row['cite']; ?></a>									
										</p> -->
								  </div>
								</div>
					  		<?php endforeach;}?>
	      	 		</div>
	      	 		<div class="col">
	      	 			<h2>Call for Papers</h2>
	      	 			<?php
$filename = 'assets/uploads/';

if (file_exists($filename . 'DO_NOT_DELETE_callforpapers.pdf')) {?>
							    <embed class="border border-secondary" WMODE="transparent" id="embed_cfp" src="<?php echo base_url('assets/uploads/DO_NOT_DELETE_callforpapers.pdf#toolbar=0&navpanes=0&scrollbar=0'); ?>" width="100%" height="950px" type="application/pdf">
							    	<a role="button" class="btn btn-sm btn-secondary float-right" href="<?php echo base_url('assets/uploads/DO_NOT_DELETE_callforpapers.pdf'); ?>" download="Call_for_papers.pdf"><i class="oi oi-data-transfer-download"></i> Download</a>
							<?php } else {?>
							    <img class="border border-secondary" id="embed_cfp" src="<?php echo base_url('assets/uploads/DO_NOT_DELETE_callforpapers.jpg'); ?>" width="100%" height="auto" >
							<?php }?>


	      	 		</div>
	      	 	</div>
			</div>
	      </div>


	    </div>
	  </div>
</div>

 <!-- ABSTRACT MODAL -->
<div class="modal fade" id="abstract_modal"  role="dialog"  aria-labelledby="abstract_modal" aria-hidden="true" >
  <div class="modal-dialog modal-lg" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Abstract</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" >
		<embed id="abstract_view" WMODE="transparent" width="100%" height="700px" type="application/pdf">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="download_pdf" ><span class="oi oi-data-transfer-download"></span> Request Full Text PDF</button>
      </div>
    </div>
  </div>
</div>

<!-- IMAGE PREVIEW -->
<!-- <div class="modal fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        </div>
        <div class="modal-body">
          <img src="" class="enlargeImageModalSource" style="width: 100%;height:50%">
        </div>
      </div>
    </div>
</div> -->

<div class="modal fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        </div>
        <div class="modal-body">
          <img src="" class="enlargeImageModalSource" style="height:50%;width: 100%;">
        </div>
      </div>
    </div>
</div>


  <!-- TOP ARTICLE MODAL -->
<div class="modal fade" id="top_modal" tabindex="-1" role="dialog" style="z-index: 1051 !important;">
  <div class="modal-dialog modal-lg" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Top Article</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<embed id="top_abstract_view" WMODE="transparent" width="100%" height="700px" type="application/pdf">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="top_download_pdf"><span class="oi oi-data-transfer-download"></span> Request Full Text PDF</button>
      </div>
    </div>
  </div>
</div>

<!-- PDF MODAL -->
<div class="modal fade" id="client_modal"  role="dialog" aria-labelledby="client_modal" aria-hidden="true"  data-backdrop="static" style="z-index: 1052 !important;" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      	<div class="media">
		  <div class="media-body">
		    <h5 class="mt-0">Please provide your information</h5>
		   <small>This file will be sent to your email</small>
		  </div>
		</div>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div class="modal-body">
		<form id="form-client">
		  <div class="form-group">
		    <label class="font-weight-bold" for="clt_title">Title<span class="text-danger font-weight-bold">*</span></label>
		    <input type="text" class="form-control" id="clt_title" name="clt_title" placeholder="Mr. / Ms. / Dr.">
		  </div>
		  <div class="form-group">
		    <label class="font-weight-bold" for="clt_name">Full name<span class="text-danger font-weight-bold">*</span></label>
		    <input type="text" class="form-control" id="clt_name" name="clt_name" placeholder="Juan Dela Cruz">
		  </div>
		  <div class="form-group">
		    <label class="font-weight-bold" for="clt_sex">Sex<span class="text-danger font-weight-bold">*</span></label>
		    <select  class="form-control" id="clt_sex" name="clt_sex">
		      <option value="">Select Sex</option>
		      <option value="1">Male</option>
		      <option value="2">Female</option>
		    </select>
		  </div>
		  <div class="form-group">
		      <label class="font-weight-bold" for="clt_affiliation">Affiliation<span class="text-danger font-weight-bold">*</span></label>
		    <input type="text" class="form-control" id="clt_affiliation" name="clt_affiliation">
		  </div>
		   <div class="form-group">
		    <label class="font-weight-bold" for="clt_country">Country<span class="text-danger font-weight-bold">*</span></label>
		    <select class="form-control" id="clt_country" name="clt_country" placeholder="Select Country" style="background-color: white">
                          <!-- foreach of country -->
                          <?php foreach ($country as $c): ?>
                          	d
                            <?php $selected = ($c->country_id == '175') ? 'selected' : '';
echo '<option value=' . $c->country_id . ' ' . $selected . '>' . $c->country_name . '</option>';?>
                            <?php endforeach;?>
                          <!-- /.end of foreach-->
                        </select>
		  </div>
		  <div class="form-group">
		      <label class="font-weight-bold" for="clt_email">Email<span class="text-danger font-weight-bold">*</span></label>
		    <input type="email" class="form-control" id="clt_email" name="clt_email" placeholder="Valid email is required">
		  </div>
		    <div class="form-group">
		    <label class="font-weight-bold" for="clt_purpose">Purpose<span class="text-danger font-weight-bold">*</span></label>
		    <textarea class="form-control" id="clt_purpose" name="clt_purpose"></textarea>
		  </div>
		  <div class="form-group text-left">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" value="1" name="clt_member" id="clt_member">
                <label class="custom-control-label" for="clt_member">Please check the box if you are an <strong>NRCP member</strong>.</label>
              </div>
            </div>
		  <input type="hidden" id="clt_journal_downloaded_id" name="clt_journal_downloaded_id" >


      </div>
      <div class="modal-footer">
      	<div id="alert-processing" class="alert alert-primary text-center h6 w-100 invisible" role="alert">
		 	<span class="oi oi-clock oi-spin "></span> Sending Full Text PDF... 
			 <!-- <span class="font-weight-bold" id="pdf_mail"></span> -->
		</div>

        <button type="button" class="btn btn-outline-secondary" id="btn_cancel_client_info" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-danger" id="btn_submit_client_info" name="btn_submit_client_info"><span class="oi oi-check"></span> Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- AUTHOR DETAILS -->
<div class="modal fade" tabindex="-1" role="dialog" id="acoa_details_modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

         <small></small>
         <p></p>

      </div>
    </div>
  </div>
</div>
<!-- Citation Modal -->
<div class="modal fade" id="citationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Citation</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<p>Please provide us with your Full Name and Email Address. Then click SUBMIT to show the APA citation</p>
		<form id="form_citation">
			<div class="form-group">
				<input type="text" class="form-control" id="cite_name" name="cite_name" placeholder="Full name">
			</div>
			<div class="form-group">
				<input type="email" class="form-control" id="cite_email" name="cite_email" placeholder="Email">
			</div>
			<div class="form-group text-left">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" value="1" name="cite_member" id="cite_member">
                <label class="custom-control-label" for="cite_member">Please check the box if you are an <strong>NRCP member</strong>.</label>
              </div>
            </div>
			<button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cancel</button>
        	<button type="submit" class="btn btn-primary">Submit</button>
		</form>
      </div>
      <div class="modal-footer">
	  <div id="cite_content" class="w-100">
				<ul class="nav nav-tabs" id="cite_tab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#apa" role="tab">APA</a>
					</li>
				</ul>
				<div class="tab-content" id="cite_tab_content">
					<div class="tab-pane fade show active text-center" role="tabpanel"  id="apa">
						<textarea id="apa_format" class="form-control" readonly rows="5"></textarea>
					</div>
				</div>
			</div> 
      </div>
    </div>
  </div>
</div>

<!-- feedback modal -->
<div class="modal fade" id="feedbackModal" data-backdrop="static" style="z-index: 1051 !important;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header pb-0">
        <p><span class="modal-title font-weight-bold h3">Your feedback</span><br/>
        <small>We would like your feedback to improve our system.</small></p>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div class="modal-body p-4">
        <form id="feedback_form">
			<input type="hidden" id="fb_usr_id" name="fb_usr_id">
            <div class="feedback text-center">
                <p class="font-weight-bold h4 text-center">User Interface</p>
                <div class="feedback-container ui-container">
                    <div class="feedback-item">
                        <label for="ui-1" data-toggle="tooltip" data-placement="bottom" title="Sad">
                            <input class="radio" type="radio" name="fb_rate_ui" id="ui-1" value="1" >
                            <span >🙁</span>
                        </label>
                    </div>

                    <div class="feedback-item">
                        <label for="ui-2" data-toggle="tooltip" data-placement="bottom" title="Neutral">
                            <input class="radio" type="radio" name="fb_rate_ui" id="ui-2" value="2">
                            <span>😶</span>
                        </label>
                    </div>

                    <div class="feedback-item">
                        <label for="ui-3" data-toggle="tooltip" data-placement="bottom" title="Happy">
                            <input class="radio" type="radio" name="fb_rate_ui" id="ui-3" value="3">
                            <span>🙂</span>
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="fb_suggest_ui"></label>
                    <textarea class="form-control" name="fb_suggest_ui" id="fb_suggest_ui" rows="3" placeholder="Type your suggestions here"></textarea>
                </div>

                <hr/>

                <p class="font-weight-bold h4 text-center">User Experience</p>
                <div class="feedback-container ux-container">
                    <div class="feedback-item">
                        <label for="ux-1" data-toggle="tooltip" data-placement="bottom" title="Sad">
                            <input class="radio" type="radio" name="fb_rate_ux" id="ux-1" value="1">
                            <span>🙁</span>
                        </label>
                    </div>

                    <div class="feedback-item">
                        <label for="ux-2" data-toggle="tooltip" data-placement="bottom" title="Nuetral">
                            <input class="radio" type="radio" name="fb_rate_ux" id="ux-2" value="2">
                            <span>😶</span>
                        </label>
                    </div>

                    <div class="feedback-item">
                        <label for="ux-3" data-toggle="tooltip" data-placement="bottom" title="Happy">
                            <input class="radio" type="radio" name="fb_rate_ux" id="ux-3" value="3">
                            <span>🙂</span>
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="fb_suggest_ux"></label>
                    <textarea class="form-control" name="fb_suggest_ux" id="fb_suggest_ux" rows="3" placeholder="Type your suggestions here"></textarea>
                </div>

				<div class="form-group">
					<button type="submit" class="btn btn-primary  w-100">Submit Feedback</button> 
				</div>

            </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- /.feedback modal -->

<button class="btn btn-primary" onclick="trynga('<?php echo htmlentities('Agro-Waste Research and Augmentation (AWRA) Phase 2: Carbonization of Rice Husk, Corn Stem and Husk and Giant Taro Peel as Raw Materials for Charcoal Briquettes'); ?>');"><button>