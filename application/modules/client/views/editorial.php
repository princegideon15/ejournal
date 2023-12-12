<?php error_reporting(0);?>
<div class="container-fluid" style="margin-top:70px; background-color:#F3F4F6">

	<div class="row">
		<div class="col">
			<img src="<?php echo base_url("assets/images/banner2024.png"); ?>" class="img-fluid w-100"
				alt="Responsive image">
		</div>
	</div>
	<br />
	<div class="row">
		<!-- SIDE NAVIGATION -->
		<div class="col-2 mb-5">
			<div class="list-group sticky" id="list_group_menu">
				<li class="list-group-item font-weight-bold bg-light"><span class="oi oi-book"></span> JOURNALS</li>
				<?php if ($journals != null) {
				$c = 0;foreach ($journals as $row): ?>
				<?php $c++;?>
				<?php echo '<a href="'.base_url('/client/ejournal/get_issues/'.$row->jor_volume.'').'" class="list-group-item  list-group-item-action">Volume ' . $row->jor_volume . ', ' . $row->jor_year . '<span class="oi oi-chevron-right float-right mt-1" style="font-size:10px"></span></a>'; ?>
				<?php endforeach;}?>
			</div>
		</div>
		<div class="col-10">
			<div class="tab-content" id="nav-tabContent">

				<!-- ABOUT -->
				<div class="tab-pane fade show active " id="home" role="tabpanel" aria-labelledby="home">
					<div class="jumbotron shadow p-5 bg-white mb-5  rounded">
						<div class="row">
							<div class="col">
								<div class="btn-group" role="group" aria-label="Basic example">
								<a type="button" class="btn btn-dark mr-1 text-white disabled">ARTICLES:</a>
									<a href="<?php echo base_url('/client/ejournal/get_index');?>" type="button" class="btn btn-outline-primary mr-1">INDEX</a>
									 <?php foreach (range('A', 'Z') as $char) {
										echo '<a href="'.base_url('/client/ejournal/get_index/'.$char.'').'" type="button" class="btn btn-outline-primary mr-1">'. $char .'</a>';
										}
									 ?>
								</div>
							</div>
						</div>
						<h2 class="mt-5">Editorial Board and Staff</h2>
                        <div class="accordion bg-white" id="accordionExample">
							<?php $body;$flag = 0; foreach($editorials_vol_year as $row):
                            
                                
                                $issue = (
                                    ($row->edt_issue == 5) ? 'Special Issue No. 1, ' :
                                    (($row->edt_issue == 6) ? 'Special Issue No. 2, ' :
                                        (($row->edt_issue == 7) ? 'Special Issue No. 3, ' :
                                            (($row->edt_issue == 8) ? ',Special Issue No. 4, ' :
                                              (($row->edt_issue == 0) ? '' : 'Issue ' . $row->edt_issue . ', '))))
                                );
                                
                                $flag++;
                                $show = ($flag == 1) ? 'show' : '';
                                // $top = ($flag == 1) ? '<h2 class="text-dark">Editorial Board and Staff - '. $issue . $row->volume .'</h2>' :  'Editorial Board and Staff - '. $issue . $row->volume; 
                                
                                $body .= '<div class="card">
                                    <div class="card-header " id="headingOne">
                                        <a href="" class="btn btn-link text-left" type="button" data-toggle="collapse" data-target="#collapseOne'. $flag .'" aria-expanded="true" aria-controls="collapseOne">
                                        Editorial Board and Staff - '. $issue . $row->volume .'
                                        </a>
                                    </div>

                                    <div id="collapseOne'. $flag .'" class="collapse '. $show .'" aria-labelledby="headingOne" data-parent="#accordionExample">
                                        <div class="card-body p-0">';
                                        $editorials = $this->Client_journal_model->get_editorials_by_volume_year($row->edt_volume, $row->edt_year, $row->edt_issue);
                                        
                                        $body .= '<ul class="list-group">';

                                        foreach($editorials as $row):
                                                $expertise = ($row->edt_specialization == NULL) ? '' : 'Expertise: ' . $row->edt_specialization . '<br/>';
                                                $body .= '<li class="list-group-item ">
                                                            <div class="media">
                                                                <img class="mr-3 img-thumbnail" src="'. base_url("assets/uploads/editorial/" . $row->edt_photo . "") .'"  alt="..." style="width:150px; height:180px;">
                                                                <div class="media-body">
                                                                <h5 class="mt-0">' . $row->edt_name . '</h5>
                                                                ' . $row->edt_position . '<br/>
                                                                ' . $row->edt_position_affiliation . '<br/>
                                                                ' . $row->edt_affiliation . '<br/>
                                                                ' . $row->edt_address . '<br/>
                                                                ' . $expertise . '
                                                                ' . $row->edt_email . '<br/>
                                                                </div>
                                                            </div>
                                                        </li>';
                                        endforeach;
                                            
                                        $body .= '</ul>';
                                        $body .= '</div>
                                    </div>
                                </div>';

                            endforeach; ?>

							<?php echo $body; ?>

						</div>
                        
						<div class="mt-5">
							<a rel="license" href="http://creativecommons.org/licenses/by/4.0/" target="_blank"><img
									alt="Creative Commons License" style="border-width:0"
									src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is
							licensed
							under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"
								target="_blank">Creative Commons Attribution 4.0 International License</a>.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>
</div>


<!-- Submit Feedback Floater -->
<!-- <div class="fixed-bottom text-right pr-5">
	<button type="button" class="btn btn-sm btn-warning font-weight-bold px-3 py-2" data-target="#feedbackModal"
		data-toggle="modal">
		<span class="oi oi-comment-square mr-1"></span>
		Submit Feedback
	</button>
</div> -->
