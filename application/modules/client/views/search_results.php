<?php error_reporting(0);?>
<script>
$('#search_filter').hide();
$('.right-inner-addon').hide();
</script>


<div class="container-fluid  p-5" style="padding-top:70px; background-color:#F3F4F6">
    <div class="row mt-5">
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
    <div class="row mt-5">
        <div class="col">
                <div class="dropdown form-inline my-2 my-lg-0">
                    <select class="form-control bg-dark text-white font-weight-bold" id="search_filter2"
                        value="<?php echo $filter;?>">
                        <option value="1" <?php if ($filter == 1) echo ' selected="selected"'; ?>>Title</option>
                        <option value="2" <?php if ($filter == 2) echo ' selected="selected"'; ?>>Author
                        </option>
                        <option value="3" <?php if ($filter == 3) echo ' selected="selected"'; ?>>Keywords</option>
                    </select>
                    <div class="right-inner-addon">
                        <i class="oi oi-magnifying-glass"></i>
                        <input type="text" class="form-control" placeholder="Quick search" id="search_ejournal2"
                            value="<?php echo str_replace('%C3%B1','ñ',(str_replace('%2C',',',str_replace('+',' ',$keyword))));?>" />
                    </div>
                    <?php $results = (array_key_exists('authors',$result)) ? array_merge($result['authors'],$result['coas']) : $result;?>
                </div>
                <div class="mt-3" style="font-size:20px">
                    <strong><?php echo count($results);?></strong> 
                    <span class="text-muted">results for</span> 
                    "<strong><?php echo str_replace('%C3%B1','ñ',str_replace('+',' ',$keyword));?></strong>" 
                    <span class="text-muted">for <?php echo ($filter == 1 ? 'Title' : (($filter == 2) ? 'Author' : 'Keywords')) ?></span>
                </div>
                <div class="row pt-3">
                    <div class="col-8">
                        <?php if($this->session->flashdata('email_message')){
					      		$msg = $this->session->flashdata('email_message');
					      		$message = $msg['msg'];
					      		$class = $msg['class'];
					      		$icon = $msg['icon'];?>
                        <div class="alert <?php echo $class;?> alert-dismissible fade show" role="alert">
                            <strong><span class="oi <?php echo $icon;?>"></span> <?php echo $message;?></strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <?php } $this->session->unset_userdata('email_message');?>

                        <ul class="list-group">
                            <?php $results = (array_key_exists('authors',$result)) ? array_merge($result['authors'],$result['coas']) : $result;
									$c = 1;
									foreach($results as $res):

									$title = preg_replace("/\p{L}*?".preg_quote(str_replace("+"," ",$keyword))."\p{L}*/ui", "<b>$0</b>", $res->art_title);
									$author = preg_replace("/\p{L}*?".preg_quote(str_replace("%20"," ",$keyword))."\p{L}*/ui", "<b>$0</b>", $res->art_author);
									$affiliation = preg_replace("/\p{L}*?".preg_quote(str_replace("%20"," ",$keyword))."\p{L}*/ui", "<b>$0</b>", $res->art_affiliation);
									$keywords = preg_replace("/\p{L}*?".preg_quote(str_replace("+"," ",$keyword))."\p{L}*/ui", "<b>$0</b>", $res->art_keywords);
									$file =  $res->art_abstract_file;
									$get_cover = $this->Search_model->get_cover($res->art_jor_id);
									$cover = ($get_cover > 0) ? base_url('assets/uploads/cover/'.$get_cover) : base_url('assets/images/unavailable.jpg');
									$coas  = $this->Search_model->get_coauthors($res->art_id);
									$coa =  $this->Client_journal_model->get_author_coauthors($res->art_id);
									
									$jor_id = $res->art_jor_id;
									$pdf = $this->Client_journal_model->count_pdf($res->art_id);
									$abs = $this->Client_journal_model->count_abstract($res->art_id);
									$citations = $this->Client_journal_model->count_citation($res->art_id);
									$pages = $res->art_page;
									$issn = $res->jor_issn;
									$vol = $res->jor_volume;
									$issue = (
										($res->jor_issue == 5) ? 'Special Issue No. 1' :
										(($res->jor_issue == 6) ? 'Special Issue No. 2' :
											(($res->jor_issue == 7) ? 'Special Issue No. 3' :
												(($res->jor_issue == 8) ? 'Special Issue No. 4' : 'Issue ' . $res->jor_issue)))
									);
									$cite =  $this->Client_journal_model->get_citation($res->art_id) . ' ('. $res->art_year .'). ' . ucfirst(strtolower($res->art_title)) . '. NRCP Research Journal, Volume ' . $res->jor_volume . ', ' . $issue . ', ' . $res->art_page;


									$server_dir = '/var/www/html/ejournal/assets/uploads/pdf/';
									$get_file = filesize($server_dir.$res->art_full_text_pdf);


									// $get_file = filesize($_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/uploads/pdf/'.$res->art_full_text_pdf);

									if ($get_file >= 1048576){
									$fsize = round($get_file / 1024 / 1024,1) . ' MB';
									} elseif($get_file >= 1024) {
									$fsize = round($get_file / 1024,1) . ' KB';
									} else {
									$fsize = round($get_file,1) . ' bytes';
									}

									$coa_arr = (explode(",& ",$coa));


								?>
                            <li class="list-group-item list-group-item-action">
                                <div class="media">
                                    <!-- <span class="badge badge-primary mr-3"
                                        style="font-size:15px"><?php echo $c++;?></span> -->
                                    <img class="mr-3 img-thumbnail" id="viy_photo" src="<?php echo $cover;?>"
                                        style="cursor:zoom-in" height="20%" width="20%" alt="Loading image">
                                    <div class="media-body">

                                        <p class="mt-0 text-dark mb-0"><?php ; echo $title;?></p>
                                        <?php $i = 0; foreach($coa_arr as $cr):?>
                                        <?php $cc = preg_replace("/\p{L}*?".preg_quote(str_replace("+"," ",$keyword))."\p{L}*/ui", "<b>$0</b>", $cr);?>
                                        <a href="javascript:void(0);" class="text-primary" style="font-size:14px"
                                            onclick="author_details_search('<?php echo $jor_id;?>','<?php echo $cr;?>')"><?php echo $cc;?></a>
                                            
                                        <?php if($i < (count($coa_arr) - 1)) echo '<span class="font-italic text-muted ">|</span>'; ?>
                                        <?php $i++; ?>
                                        <?php endforeach;?>
                                        <br />
                                        <small><span class="text-muted">Keywords:</span>
                                            <?php $this->Client_journal_model->click_keyword($keywords);?></small>

                                        <br/>
                                        <small class="text-muted">Pages: <?php echo $pages; ?></small>
                                        <br/>
                                        <small class="text-muted"><?php echo $res->art_year; ?></small>
                                        <br/>
                                        <small class="text-muted"><a class="text-muted" href="<?php echo  base_url('/client/ejournal/get_articles/'.$vol.'/'.$jor_id.'');?>">Volume <?php echo $res->jor_volume . ' ' . $issue; ?></a></small>
                                        <br/>
                                        <!-- <small class="text-muted">ISSN: <?php echo $issn; ?></small>
                                        <br /> -->
                                        <div class='mb-2 mt-2'>
                                            <span class="badge badge badge-light" data-toggle="tooltip"
                                                data-placement="top" title="File Size">
                                                <span class="oi oi-paperclip"></span> <?php echo $fsize;?></span>
                                            <span class="badge badge badge-light" data-toggle="tooltip"
                                                data-placement="top" title="Full Text PDF Requests"><span
                                                    class="oi oi-data-transfer-download"></span>
                                                <?php echo $pdf;?></span>
                                            <span class="badge badge badge-light" data-toggle="tooltip"
                                                data-placement="top" title="Abstract Hits"><span
                                                    class="oi oi-eye"></span> <?php echo $abs;?></span>
                                            <span class="badge badge badge-light" data-toggle="tooltip"
                                                data-placement="top" title="Cited"><span class="oi oi-document"></span>
                                                <?php echo $citations; ?></span>
                                        </div>
                                        <!-- <p>
											<strong>Cite this Paper :</strong> <br/>
											<a href="javascript:void(0);" style="text-decoration:none" class="text-dark copy_citation" onclick="copyToClipboard('<?php echo addslashes($cite); ?>')" data-toggle="tooltip" title="Click to copy & paste" data-placement="top"><?php echo $cite; ?></a>									
										  </p> -->
                                        <div class="btn-group mt-5" role="group">
                                            <a data-toggle="modal" data-target="#client_modal"
                                                class="btn btn-sm btn-primary mr-2 pr-3 pl-3" href="javascript:void(0);"
                                                role="button" onclick="get_download_id(<?php echo $res->art_id;?>)">
                                                <span class="oi oi-file"></span> Download</a>
                                            <a class="btn btn-sm btn-outline-dark mr-2 pr-3 pl-3"
                                                onclick="get_download_id(<?php echo $res->art_id;?>,'hits','<?php echo $file;?>')"
                                                href="javascript:void(0);" role="button">
                                                <span class="oi oi-eye"></span> Abstract</a>
                                            <a data-toggle="modal" data-target="#citationModal"
                                                class="btn btn-sm btn-outline-dark pr-3 pl-3" href="javascript:void(0);"
                                                role="button"
                                                onclick="get_citee_info('<?php echo addslashes($cite); ?>','<?php echo $res->art_id;?>')">
                                                <span class='oi oi-document'></span> Cite</a>
                                        </div>



                                    </div>
                                </div>
                            </li>
                            <?php endforeach;




							  ?>

                            <?php if(count($results) == 0)
							 {
							 	echo ' <ul class="list-group "><li class="list-group-item list-group-item-secondary"><span class="oi oi-warning"></span> Sorry, no results found for <strong>'.str_replace('%C3%B1','ñ',str_replace('+',' ',$keyword)).'</strong>. Try entering fewer or broader query terms.</li></ul>';
							 }
							 ?>
                        </ul>
                    </div>
                    <div class="col-4">
                        <div class="card mb-3 sticky">
                            <div class="card-body">
                                <h5 class="card-title mb-0">Title</h5>
                                <small class="card-subtitle text-muted">Most searched words with results</small><br />
                                <hr />
                                <?php
										$file = './assets/title.txt';

										$file = fopen($file, "r");
										$keys = array();

										while (!feof($file)) {
										$keys[] = fgets($file);
										}
										fclose($file);

										$out = array();
										foreach($keys as $val)
										{
											 $key = serialize($val);
											   if (!isset($out[$key]))
											       $out[$key]=1;
											   else
											       $out[$key]++;
										}

										arsort($out);

										$top10 = 0;
										foreach($out as $val=>$count)
										{
										    $top10++;
											if($top10 <= 10)
											{
												$item = unserialize($val);
												$get_key = substr($item, strpos($item, ">") + 1);
												$get_explode = explode("=>", $item,3);
												$filter = @$get_explode[0];
												$key = @$get_explode[1];
												$res = @$get_explode[2];
												$res = preg_replace('/\s/', '', $res);
												if($key != '')
													echo '<a href="javascript:void(0);" data-toggle="tooltip" title="'.rawurldecode($key).'" class="text-primary" onclick="click_top_search(\''.str_replace('%20','+',$key).'\',\''.$filter.'\')">
															<div class="d-flex bd-highlight">
															  <div class="flex-fill mr-1 bd-highlight text-truncate">'.rawurldecode($key).'</div>
															  <div class="flex-fill bd-highlight">('.$res.')</div>
															</div></a>';
											}
										}
								?>

                                <h5 class="card-title mb-0 mt-3">Author/Co-author</h5>
                                <small class="card-subtitle text-muted">Most searched words with results</small><br />
                                <hr />
                                <?php
										$file = './assets/acoa.txt';

										$file = fopen($file, "r");
										$keys = array();

										while (!feof($file)) {
										$keys[] = fgets($file);
										}
										fclose($file);

										$out = array();
										foreach($keys as $val)
										{
											 $key = serialize($val);
											   if (!isset($out[$key]))
											       $out[$key]=1;
											   else
											       $out[$key]++;
										}
										arsort($out);

										$top10 = 0;
										foreach($out as $val=>$count)
										{
										    $top10++;
											if($top10 <= 10)
											{
												$item = unserialize($val);
												$get_key = substr($item, strpos($item, ">") + 1);
												$get_explode = explode("=>", $item,3);
												$filter = @$get_explode[0];
												$key = @$get_explode[1];
												$res = @$get_explode[2];
												$res = preg_replace('/\s/', '', $res);
												if($key != '')
													echo '<a href="javascript:void(0);" data-toggle="tooltip" title="'.rawurldecode($key).'" class="text-primary" onclick="click_top_search(\''.$key.'\',\''.$filter.'\')">
															<div class="d-flex bd-highlight">
															  <div class="flex-fill mr-1 bd-highlight text-truncate">'.str_replace('+',' ',$key).'</div>
															  <div class="flex-fill bd-highlight">('.$res.')</div>
															</div></a>';
											}
										}
								?>

                                <h5 class="card-title mb-0 mt-3">Keywords</h5>
                                <small class="card-subtitle text-muted">Most searched words with results</small><br />
                                <hr />
                                <?php
										$file = './assets/keywords.txt';

										$file = fopen($file, "r");
										$keys = array();

										while (!feof($file)) {
										$keys[] = fgets($file);
										}
										fclose($file);

										$out = array();
										foreach($keys as $val)
										{
											 $key = serialize($val);
											   if (!isset($out[$key]))
											       $out[$key]=1;
											   else
											       $out[$key]++;
										}
										arsort($out);

										$top10 = 0;
										foreach($out as $val=>$count)
										{
										    $top10++;
											if($top10 <= 10)
											{
												$item = unserialize($val);
												$get_key = substr($item, strpos($item, ">") + 1);
												$get_explode = explode("=>", $item,3);
												$filter = @$get_explode[0];
												$key = @$get_explode[1];
												$res = @$get_explode[2];
												$res = preg_replace('/\s/', '', $res);
												if($key != '')
													echo '<a href="javascript:void(0);" data-toggle="tooltip" title="'.rawurldecode($key).'" class="text-primary" onclick="click_top_search(\''.str_replace('%20','+',$key).'\',\''.$filter.'\')">
															<div class="d-flex bd-highlight">
															  <div class="flex-fill mr-1 bd-highlight text-truncate">'.rawurldecode($key).'</div>
															  <div class="flex-fill bd-highlight">('.$res.')</div>
															</div></a>';
											}
										}
								?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-5">
                    
            <a rel="license" href="http://creativecommons.org/licenses/by/4.0/" target="_blank"><img
                    alt="Creative Commons License" style="border-width:0"
                    src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed
            under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons
                Attribution 4.0 International License</a>.
                </div>
            </div>
        </div>



    <!-- PDF MODAL -->
    <div class="modal fade" id="client_modal" role="dialog" aria-labelledby="client_modal" aria-hidden="true"
        style="z-index: 3000" data-backdrop="static" data-keyboard="false">
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
                    <?php echo form_open('client/ejournal/download_pdf',array('id'=>'form-client'));?>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_title">Title</label><span
                            class="text-danger font-weight-bold">*</span>
                        <input type="text" class="form-control" id="clt_title" name="clt_title"
                            placeholder="Mr. / Ms. / Dr." required>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_name">Full Name</label><span
                            class="text-danger font-weight-bold">*</span>
                        <input type="text" class="form-control" id="clt_name" name="clt_name"
                            placeholder="Juan Dela Cruz" required>
                    </div>
                    <div class="form-group">
                            <label class="font-weight-bold" for="clt_age">Age<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <input type="number" class="form-control" id="clt_age" name="clt_age" min="20" max="100">
                        </div>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_sex">Sex</label><span
                            class="text-danger font-weight-bold">*</span>
                        <select class="form-control" id="clt_sex" name="clt_sex" required>
                            <option value="">Select Sex</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_affiliation">Affiliation</label><span
                            class="text-danger font-weight-bold">*</span>
                        <input type="text" class="form-control" id="clt_affiliation" name="clt_affiliation" required>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_country">Country</label> <span
                            class="text-danger font-weight-bold">*</span>
                        <select class="form-control" id="clt_country" name="clt_country" placeholder="Select Country"
                            style="background-color: white" required>
                            <!-- foreach of country -->
                            <?php foreach($country as $c): ?>
                            <?php $selected = ($c->country_id == '175')?'selected':'';
                            echo '<option value='.$c->country_id.' '.$selected.'>'.$c->country_name.'</option>'; ?>
                            <?php endforeach;?>
                            <!-- /.end of foreach-->
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_email">Email</label><span
                            class="text-danger font-weight-bold">*</span>
                        <input type="email" class="form-control" id="clt_email" name="clt_email"
                            placeholder="Valid email is required" required>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold" for="clt_purpose">Purpose</label><span
                            class="text-danger font-weight-bold">*</span>
                        <textarea class="form-control" id="clt_purpose" name="clt_purpose" required></textarea>
                    </div>
                    <div class="form-group text-left">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" value="1" name="clt_member"
                                id="clt_member">
                            <label class="custom-control-label" for="clt_member">Please check the box if you are an NRCP
                                member?</label>
                        </div>
                    </div>
                    <input type="hidden" id="clt_journal_downloaded_id" name="clt_journal_downloaded_id">


                </div>
                <div class="modal-footer">
                    <div id="alert-processing" class="alert alert-primary text-center h6 w-100 invisible" role="alert">
                        <span class="oi oi-clock oi-spin "></span> Sending Full Text PDF...
                        <!-- <span class="font-weight-bold" id="pdf_mail"></span> -->
                    </div>

                    <button type="button" class="btn btn-outline-secondary" id="btn_cancel_client_info"
                        data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-danger" id="btn_submit_client_info"
                        name="btn_submit_client_info"><span class="oi oi-check"></span> Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ABSTRACT MODAL -->
    <div class="modal fade" id="abstract_modal" role="dialog" aria-labelledby="abstract_modal" aria-hidden="true"
        style="z-index: 9999 !important">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Abstract</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <embed id="abstract_view" width="100%" height="700px" type="application/pdf">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
                    <!-- <button type="button" class="btn btn-danger" id="download_pdf"><span
                            class="oi oi-data-transfer-download"></span> Request Full Text PDF</button> -->
                </div>
            </div>
        </div>
    </div>

    <!-- IMAGE PREVIEW -->
    <div class="modal fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <img src="" class="enlargeImageModalSource" style="height:50%;width: 100%;">
                </div>
            </div>
        </div>
    </div>

    <!-- AUTHOR DETAILS -->
    <div class="modal fade" tabindex="-1" role="dialog" id="acoa_details_modal_search">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>

    <!-- CITATION MODAL -->
    <div class="modal fade" id="citationModal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Citation</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Please fill up the required fields. Then click SUBMIT to show the APA
                        citation</p>
                    <form id="form_citation">
                        
                    <input type="hidden" id="cite_value" name="cite_value">
                        <div class="form-group">
                            <label class="font-weight-bold" for="cite_title">Title<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <input type="text" class="form-control" id="cite_title" name="cite_title"
                                placeholder="Mr. / Ms. / Dr.">
                        </div>
                        <div class="form-group">
                        <label class="font-weight-bold" for="cite_name">Name<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <input type="text" class="form-control" id="cite_name" name="cite_name"
                                placeholder="Full name">
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold" for="cite_sex">Sex<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <select class="form-control" id="cite_sex" name="cite_sex">
                                <option value="">Select Sex</option>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold" for="clt_affiliation">Affiliation<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <input type="text" class="form-control" id="cite_affiliation" name="cite_affiliation" placeholder="Affiliation">
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold" for="cite_country">Country<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <select class="form-control" id="cite_country" name="cite_country"
                                placeholder="Select Country" style="background-color: white">
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
                        <label class="font-weight-bold" for="cite_email">Email<span
                                    class="text-danger font-weight-bold">*</span></label>
                            <input type="email" class="form-control" id="cite_email" name="cite_email"
                                placeholder="Email">
                        </div>
                        <div class="form-group text-left">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" value="1" name="cite_member"
                                    id="cite_member">
                                <label class="custom-control-label" for="cite_member">Please check the box if you are an
                                    NRCP member?</label>
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
                            <div class="tab-pane fade show active text-center" role="tabpanel" id="apa">
                                <textarea id="apa_format" class="form-control" readonly rows="5"></textarea>
                            </div>
                        </div>
                        <button type="button" onClick="copyCitationToClipboard('#apa_format')" class="btn btn-outline-primary mt-3 w-100">Copy to clipboard</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- FEEDBACK MODAL -->
    <div class="modal fade" id="feedbackModal" data-backdrop="static" data-keyboard="false" style="z-index: 1051 !important;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header pb-0">
                    <p><span class="modal-title font-weight-bold h3">Your feedback</span><br />
                        <small>We would like your feedback to improve our system.</small>
                    </p>
                    <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
                </div>
                <div class="modal-body p-4">
                    <form id="feedback_form">
                        <input type="hidden" id="fb_usr_id" name="fb_usr_id">
                        <input type="hidden" id="fb_source" name="fb_source">
                        <div class="feedback text-center">
                            <p class="font-weight-bold h4 text-center">User Interface</p>
                            <div class="feedback-container ui-container">
                                <div class="feedback-item">
                                    <label for="ui-1" data-toggle="tooltip" data-placement="bottom" title="Sad">
                                        <input class="radio" type="radio" name="fb_rate_ui" id="ui-1" value="1">
                                        <span>🙁</span>
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
                                <textarea class="form-control" name="fb_suggest_ui" id="fb_suggest_ui" rows="3"
                                    placeholder="Type your suggestions here"></textarea>
                            </div>

                            <hr />

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
                                <textarea class="form-control" name="fb_suggest_ux" id="fb_suggest_ux" rows="3"
                                    placeholder="Type your suggestions here"></textarea>
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

</div>