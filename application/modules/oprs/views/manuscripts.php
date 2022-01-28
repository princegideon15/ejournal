<?php $role = $this->session->userdata('_oprs_type_num');?>
<div class="container-fluid" style="padding-top:3.5em">
  <!-- Breadcrumbs-->
  <ol class="breadcrumb">
    <li class="breadcrumb-item">
      <a href="javascript:void(0);">Manuscripts</a></li>
      <li class="breadcrumb-item active"><?php echo $this->session->userdata('_oprs_type'); ?> (<?php echo $this->session->userdata('_oprs_username'); ?>)</li>
    </ol>
    <!-- Manuscript Table -->
    <div class="card mb-3">
      <div class="card-header font-weight-bold">
        <i class="fa fa-table"></i> List of Manuscripts
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <?php if (_UserRoleFromSession() == 5) {?>
          <table class="table table-hover" id="dataTable_rev" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th></th>
                <th>Title</th>
                <th>Date Submitted</th>
                <th>Date Reviewed</th>  
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php $c = 1;foreach ($manus as $m): ?>
              <?php $drev = ($m->date_reviewed == null) ? '-' : $m->date_reviewed?>
              <?php $mantitle = rawurlencode($m->man_title); ?>
              <?php $action = (($m->scr_status == '4') ? '<span class="badge badge-pill badge-success">Recommended as submitted</span>' 
                              : ((($m->scr_status == '5') ? '<span class="badge badge-pill badge-warning">Recommended with minor revisions</span>' 
                              : ((($m->scr_status == '6') ? '<span class="badge badge-pill badge-warning">Recommended with major revisions</span>'  
                              : ((($m->scr_status == '7') ? '<span class="badge badge-pill badge-danger">Not recommended</span>' 
                              : '<button type="button" class="btn btn-light text-success btn-sm"  data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#startReviewModal" onclick="start_review(\'' . $m->man_file . '\',\'' . $m->row_id . '\',\'' . $mantitle . '\',\'' . $m->man_author . '\',\'' . $m->rev_hide_auth . '\')"><span class="fa fa-chevron-circle-right" ></span> Start Review</button>'))))))
	                            );?>
              <tr >
                <td><?php echo $c++; ?></td>
                <td>
                <a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>,<?php echo $m->rev_hide_auth; ?>);" class="text-dark "><i class="fa fa-plus-circle text-primary" rel="tooltip" data-placement="top" title="Click for more details"></i></a> <?php echo $m->man_title; ?></td>
                <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                <td><?php echo $drev; ?></td>
                <td><?php echo $action; ?></td>
              </tr>
              <?php endforeach;?>
            </tbody>
          </table>
          <?php } else {?>
          <?php if ($role == 3) {?>
          <div class="alert alert-warning " role="alert">
            <p class="font-weight-bold">Instructions to Managing Editor</p>
            The manuscript/article to be submitted must not contain any traces of identity of author (i.e. Name of author, co-authors, email address and affiliation). <br/>
            The information, however, should be inputted in the upload forms. <br/>
            <button type="button" class="btn btn-sm btn-primary mt-2" data-toggle="modal" data-target="#uploadModal" onclick="show_hidden_manus()"><i class="fas fa-upload"></i> Upload Manuscript</button>
          </div>
          <?php } ?>

          <nav>
            <div class="nav nav-tabs font-weight-bold" id="nav-tab" role="tablist">
              <a class="nav-link text-dark  active" id="nav-all-tab" data-toggle="tab" href="#nav-all" role="tab" aria-controls="nav-all" aria-selected="true">All
                <span class="badge badge-pill badge-dark"><?php echo count($man_count);?></span></a>
              <a class="nav-link text-dark " id="nav-new-tab" data-toggle="tab" href="#nav-new" role="tab" aria-controls="nav-new" aria-selected="true">New
                <span class="badge badge-pill badge-warning"><?php echo count($man_new);?></span></a>
              <a class="nav-link text-dark " id="nav-onreview-tab" data-toggle="tab" href="#nav-onreview" role="tab" aria-controls="nav-onreview" aria-selected="false">On-review 
                <span class="badge badge-pill badge-primary"><?php echo count($man_onreview);?></span></a>
              <a class="nav-link text-dark " id="nav-reviewed-tab" data-toggle="tab" href="#nav-reviewed" role="tab" aria-controls="nav-reviewed" aria-selected="false">Reviewed 
                <span class="badge badge-pill badge-info"><?php echo count($man_reviewed);?></span></a>
              <a class="nav-link text-dark " id="nav-final-tab" data-toggle="tab" href="#nav-final" role="tab" aria-controls="nav-final" aria-selected="false">To submit final manuscript 
                <span class="badge badge-pill badge-danger"><?php echo count($man_final);?></span></a>
              <a class="nav-link text-dark " id="nav-publication-tab" data-toggle="tab" href="#nav-publication" role="tab" aria-controls="nav-publication" aria-selected="false">For publication 
                <span class="badge badge-pill badge-success"><?php echo count($man_for_p);?></span></a>
              <a class="nav-link text-dark " id="nav-published-tab" data-toggle="tab" href="#nav-published" role="tab" aria-controls="nav-published" aria-selected="false">Published 
                <span class="badge badge-pill badge-light"><?php echo count($man_pub);?></span></a>
            </div>
          </nav>
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active p-3" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
              <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th></th>
                  <th>Title</th>
                  <th>Date Submitted</th>
                  <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php $c = 1;foreach ($manus as $m): ?>
                <?php $role = $this->session->userdata('_oprs_type_num');?>
                <?php $rev_cnt = count($this->Manuscript_model->get_reviewers_display($m->row_id));?>
                <?php $rev_total = count($this->Manuscript_model->get_reviewers_display($m->row_id, 999));?>
                <?php $rev_act = count($this->Manuscript_model->get_reviewers_w_score($m->row_id));?>
                <?php $scr = count($this->Review_model->get_review(_UserRoleFromSession(), $m->row_id));?>
                <!-- get total reveiewers with scores -->
                <?php $status = (($m->man_status == '1') ? 'New' 
                : ((($m->man_status == '2') ? 'On-review (0/' . $rev_cnt . ')' 
                : ((($m->man_status == '3') ? 'Reviewed (' . $rev_act . '/' . $rev_cnt . ')'
                : ((($m->man_status == '4') ? 'To submit final manuscript' 
                : ((($m->man_status == '5') ? 'For Publication' 
                // : ((($m->man_status == '5') ? 'Approved' 
                :	'Published')))))))));?>
                <?php $class = (($m->man_status == '1') ? 'warning' 
                : ((($m->man_status == '2') ? 'primary' 
                : ((($m->man_status == '3') ? 'info' 
                : ((($m->man_status == '4') ? 'danger' 
                // : ((($m->man_status == '5') ? 'success' 
                : 'success')))))));?>

                <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                <tr >
                  <td><?php echo $c++; ?></td>
                  <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                  <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                  <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                  <td>
                    <!-- download manuscript -->
                    <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                      <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                    <?php } ?>
                    <!-- view manuscript -->
                    <?php if (_UserRoleFromSession() != 5) { ?>
                      <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                      <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                    <?php } ?>
                    <!-- submit revision -->
                    <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                    <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                    <?php } ?>
                    <!-- process manuscript -->
                    <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                    <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                    <?php } ?>
                    <!-- view reviewers -->
                    <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                    <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                    <?php } ?>
                    <!-- approve manuscript -->
                    <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                    <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                    <?php } ?>
                    <!-- delete manuscript -->
                    <?php if (_UserRoleFromSession() == 8) { ?>
                    <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                    <?php } ?>
                  </td>
                </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
            </div>
            <div class="tab-pane fade p-3" id="nav-new" role="tabpanel" aria-labelledby="nav-new-tab">
              <table class="table table-hover" id="new_manus_table" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Date Submitted</th>
                    <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $c = 1;foreach ($man_new as $m): ?>
                  <?php $role = $this->session->userdata('_oprs_type_num');?>
                  <?php $status = 'New'; ?>
                  <?php $class = 'warning'; ?>
                  <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                  <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                  <tr >
                    <td><?php echo $c++; ?></td>
                    <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                    <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                    <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                    <td>
                      <!-- download manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                        <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                      <?php } ?>
                      <!-- view manuscript -->
                      <?php if (_UserRoleFromSession() != 5) { ?>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                      <?php } ?>
                      <!-- submit revision -->
                      <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                      <?php } ?>
                      <!-- process manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                      <?php } ?>
                      <!-- view reviewers -->
                      <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                      <?php } ?>
                      <!-- approve manuscript -->
                      <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                      <?php } ?>
                      <!-- delete manuscript -->
                      <?php if (_UserRoleFromSession() == 8) { ?>
                      <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                      <?php } ?>
                    </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
            <div class="tab-pane fade p-3" id="nav-onreview" role="tabpanel" aria-labelledby="nav-onreview-tab">
              <table class="table table-hover" id="onreview_manus_table" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Date Submitted</th>
                    <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $c = 1;foreach ($man_onreview as $m): ?>
                  <?php $role = $this->session->userdata('_oprs_type_num');?>
                  <?php $rev_cnt = count($this->Manuscript_model->get_reviewers_display($m->row_id));?>
                  <?php $rev_total = count($this->Manuscript_model->get_reviewers_display($m->row_id, 999));?>
                  <?php $rev_act = count($this->Manuscript_model->get_reviewers_w_score($m->row_id));?>
                  <?php $scr = count($this->Review_model->get_review(_UserRoleFromSession(), $m->row_id));?>
                  <!-- get total reveiewers with scores -->
                  <?php $status = 'On-review'; ?>
                  <?php $class = 'primary'; ?>
                  <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                  <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                  <tr >
                    <td><?php echo $c++; ?></td>
                    <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                    <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                    <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                    <td>
                      <!-- download manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                        <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                      <?php } ?>
                      <!-- view manuscript -->
                      <?php if (_UserRoleFromSession() != 5) { ?>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                      <?php } ?>
                      <!-- submit revision -->
                      <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                      <?php } ?>
                      <!-- process manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                      <?php } ?>
                      <!-- view reviewers -->
                      <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                      <?php } ?>
                      <!-- approve manuscript -->
                      <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                      <?php } ?>
                      <!-- delete manuscript -->
                      <?php if (_UserRoleFromSession() == 8) { ?>
                      <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                      <?php } ?>
                    </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
            <div class="tab-pane fade p-3" id="nav-reviewed" role="tabpanel" aria-labelledby="nav-reviewed-tab">
             <table class="table table-hover" id="reviewed_manus_table" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Date Submitted</th>
                    <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $c = 1;foreach ($man_reviewed as $m): ?>
                  <?php $role = $this->session->userdata('_oprs_type_num');?>
                  <?php $rev_cnt = count($this->Manuscript_model->get_reviewers_display($m->row_id));?>
                  <?php $rev_total = count($this->Manuscript_model->get_reviewers_display($m->row_id, 999));?>
                  <?php $rev_act = count($this->Manuscript_model->get_reviewers_w_score($m->row_id));?>
                  <?php $scr = count($this->Review_model->get_review(_UserRoleFromSession(), $m->row_id));?>
                  <!-- get total reveiewers with scores -->
                  <?php $status = 'Reviewed (' . $rev_act . '/' . $rev_cnt . ')'; ?>
                  <?php $class = 'info'; ?>
                  <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                  <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                  <tr >
                    <td><?php echo $c++; ?></td>
                    <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                    <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                    <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                    <td>
                      <!-- download manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                        <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                      <?php } ?>
                      <!-- view manuscript -->
                      <?php if (_UserRoleFromSession() != 5) { ?>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                      <?php } ?>
                      <!-- submit revision -->
                      <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                      <?php } ?>
                      <!-- process manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                      <?php } ?>
                      <!-- view reviewers -->
                      <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                      <?php } ?>
                      <!-- approve manuscript -->
                      <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                      <?php } ?>
                      <!-- delete manuscript -->
                      <?php if (_UserRoleFromSession() == 8) { ?>
                      <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                      <?php } ?>
                    </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
            <div class="tab-pane fade p-3" id="nav-final" role="tabpanel" aria-labelledby="nav-final-tab">
              <table class="table table-hover" id="final_manus_table" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Date Submitted</th>
                    <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $c = 1;foreach ($man_final as $m): ?>
                  <?php $role = $this->session->userdata('_oprs_type_num');?>
                  <?php $status = 'To submit final manuscript'; ?>
                  <?php $class = 'danger'; ?>
                  <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                  <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                  <tr >
                    <td><?php echo $c++; ?></td>
                    <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                    <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                    <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                    <td>
                      <!-- download manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                        <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                      <?php } ?>
                      <!-- view manuscript -->
                      <?php if (_UserRoleFromSession() != 5) { ?>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                      <?php } ?>
                      <!-- submit revision -->
                      <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                      <?php } ?>
                      <!-- process manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                      <?php } ?>
                      <!-- view reviewers -->
                      <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                      <?php } ?>
                      <!-- approve manuscript -->
                      <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                      <?php } ?>
                      <!-- delete manuscript -->
                      <?php if (_UserRoleFromSession() == 8) { ?>
                      <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                      <?php } ?>
                    </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
            <div class="tab-pane fade p-3" id="nav-publication" role="tabpanel" aria-labelledby="nav-publication-tab">
              <table class="table table-hover" id="for_p_manus_table" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Date Submitted</th>
                    <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $c = 1;foreach ($man_for_p as $m): ?>
                  <?php $role = $this->session->userdata('_oprs_type_num');?>
                  <?php $status = 'For publication'; ?>
                  <?php $class = 'success'; ?>
                  <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                  <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                  <tr >
                    <td><?php echo $c++; ?></td>
                    <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                    <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                    <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                    <td>
                      <!-- download manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                        <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                      <?php } ?>
                      <!-- view manuscript -->
                      <?php if (_UserRoleFromSession() != 5) { ?>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                      <?php } ?>
                      <!-- submit revision -->
                      <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                      <?php } ?>
                      <!-- process manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                      <?php } ?>
                      <!-- view reviewers -->
                      <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                      <?php } ?>
                      <!-- approve manuscript -->
                      <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                      <?php } ?>
                      <!-- delete manuscript -->
                      <?php if (_UserRoleFromSession() == 8) { ?>
                      <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                      <?php } ?>
                    </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
            <div class="tab-pane fade p-3" id="nav-published" role="tabpanel" aria-labelledby="nav-published-tab">
            <table class="table table-hover" id="pub_manus_table" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Date Submitted</th>
                    <th>Status <i class="fa fa-exclamation-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $c = 1;foreach ($man_pub as $m): ?>
                  <?php $role = $this->session->userdata('_oprs_type_num');?>
                  <?php $status = 'Published'; ?>
                  <?php $class = 'light'; ?>
                  <?php $acoa = (empty($this->Coauthor_model->get_author_coauthors($m->row_id))) ? '' : ', ' . $this->Coauthor_model->get_author_coauthors($m->row_id);?>
                  <?php $title = $m->man_title . ', ' . $m->man_author . $acoa?>
                  <tr >
                    <td><?php echo $c++; ?></td>
                    <td><a href="javascript:void(0);" onclick="view_manus(<?php echo $m->row_id; ?>);" class="text-dark "><?php echo $title; ?></a></td>
                    <td><?php echo date_format(new DateTime($m->date_created), 'F j, Y, g:i a'); ?></td>
                    <td><span style="cursor:pointer" class="badge badge-pill badge-<?php echo $class; ?>" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking('<?php echo $m->row_id; ?>','<?php echo $this->session->userdata('_oprs_type_num');?>','<?php echo $title ?>','<?php echo $m->man_status ?>')"><?php echo $status;?></span></td>
                    <td>
                      <!-- download manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == 5) { ?>
                        <a href="<?php echo base_url('/assets/oprs/uploads/words/'.$m->man_word); ?>" class="btn btn-sm btn-light text-dark"><span class="fa fa-file-word"></span> Download WORD</a>
                      <?php } ?>
                      <!-- view manuscript -->
                      <?php if (_UserRoleFromSession() != 5) { ?>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_abs; ?>', 'abs')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Abstract"><span class="fa fa-eye"></span> Abstract</button>
                        <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('<?php echo $m->man_file; ?>', 'full')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View Full Manuscript"><span class="fa fa-eye"></span> Manuscript</button>
                      <?php } ?>
                      <!-- submit revision -->
                      <?php if (_UserRoleFromSession() == 1 && $rev_act >= 3 && $m->man_status == 3) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="submit_final('<?php echo $m->row_id; ?>')" data-toggle="modal" data-target="#finalModal" rel="tooltip" data-placement="top" title="Submit Final Manuscript"><span class="fa fa-mail-forward"></span> Submit Final</button>
                      <?php } ?>
                      <!-- process manuscript -->
                      <?php if (_UserRoleFromSession() == 3 && $m->man_status == '1') { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" onclick="process_man(<?php echo $m->row_id; ?>)" data-toggle="modal" data-target="#processModal" rel="tooltip" data-placement="top" title="Process"><span class="fa fa-wrench" ></span> Process</button>
                      <?php } ?>
                      <!-- view reviewers -->
                      <?php if ((_UserRoleFromSession() == 3 && $m->man_status != 1) || _UserRoleFromSession() == 8 ) { ?>
                      <button type="button" class="btn btn-light text-info btn-sm" onclick="view_reviewers('<?php echo $m->row_id; ?>','0','<?php echo $title; ?>','<?php echo $m->man_status; ?>')" data-toggle="modal" data-target="#reviewerModal" rel="tooltip" data-placement="top" title="View Reviewers"><span class="fa fa-user-secret" ></span> Reviewers</button>
                      <?php } ?>
                      <!-- approve manuscript -->
                      <?php if (_UserRoleFromSession() == 9 && $rev_act >= 3 ) { ?>
                      <button type="button" class="btn btn-light text-success btn-sm" rel="tooltip" data-placement="top" title="Final Review" onclick="final_review('<?php echo $m->row_id; ?>')"><span class="	fa fa-gavel"></span> Final Review</button>
                      <?php } ?>
                      <!-- delete manuscript -->
                      <?php if (_UserRoleFromSession() == 8) { ?>
                      <button type="button" class="btn btn-light text-danger btn-sm" rel="tooltip" data-placement="top" title="Delete" onclick="remove_manus('<?php echo $m->row_id; ?>')"><span class="fa fa-trash"></span> Remove</button>
                      <?php } ?>
                    </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
          <?php }?>
        </div>
      </div>
      <div class="card-footer small text-muted">
      <?php if (_UserRoleFromSession() == 3) { ?>
      <button type="button" data-toggle="collapse" data-target="#publishables" class="btn btn-outline-primary">View Publishables  <span class="badge badge-primary"><?php echo count($publish);?></span></button>
      <!-- <button type="button" class="btn btn-outline-secondary" disabled>BRIS Manuscripts  <span class="badge badge-secondary">0</span></button> -->
      <?php } ?>
      </div>
    </div>

    <!-- <div class="tab-content" id="pubContent"> data-parent="#accordionExample" -->
      <div  id="publishables" class="collapse" >
        <table class="table table-striped" id="table-publishables">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Volume</th>
                <th scope="col">Issue</th>
                <th scope="col">Year</th>
                <th scope="col">Approved</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <?php $r=1; $c=0; foreach($u_man_jor as $row):?>
              <?php $i = $row->man_issue;
                    $issue = (($i == 5) ? 'Special Issue No. 1' 
                            : (($i == 6) ? 'Special Issue No. 2' 
                            : (($i == 7) ? 'Special Issue No. 3' 
                            : (($i == 8) ? 'Special Issue No. 4' 
                            : 'Issue ' . $i))));
                    $articles = $this->Manuscript_model->get_publishable_manus($row->journal); $c++;
                  
                    ?>        
                         
                <tr>
                    <td><?php echo $r++;?></td>
                    <td><?php echo 'Volume ' . $row->man_volume;?></td>
                    <td><?php echo $issue;?></td>
                    <td><?php echo $row->man_year;?></td>
                    <td><?php echo $row->articles;?></td>
                    <td><button type="button" class="btn btn-sm btn-outline-success" rel="tooltip" data-placement="top" title="Publish selected items" onclick="publish_articles(<?php echo $c++;?>)"><span class="fa fa-globe" ></span> Publish to eJournal</button></td>
                </tr>
                <tr>
                  <td></td>
                  <td colspan="4">
                  <?php  foreach($articles as $a):?> 
                    <div class="form-group">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" value="<?php echo $a->row_id;?>" name="publish_title" id="publish_title<?php echo $a->row_id;?>">
                        <label class="custom-control-label pt-1" for="publish_title<?php echo $a->row_id;?>"><?php echo $a->man_title;?></label>
                      </div>
                    </div>
                  <?php endforeach;?>
                  </td>
                </tr>
              <?php endforeach;?>
            </tbody>
        </table>
      </div>
    <!-- </div> -->
  </div>
  <!-- /.container-fluid -->
  <!-- Sticky Footer -->
  <footer class="sticky-footer">
    <div class="container my-auto">
      <div class="copyright text-center my-auto">
        <span>Copyright © Your Website 2019</span>
      </div>
    </div>
  </footer>
</div>
<!-- /.content-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>

<!-- Upload Manuscript-->
<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="uploadModal" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header">
    <h5 class="modal-title">Manuscript Details</h5>
    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">x</span>
      </button>
    </div>
    <div class="modal-body">
      <table class="table table-borderless" >
        <tbody>
        </tbody>
      </table>
      <form id="manuscript_form">
        <div class="form-group">
          <label class="font-weight-bold" for="man_title">Title</label>
          <textarea class="form-control" id="man_title" name="man_title" placeholder=""></textarea>
        </div>
        <div class="form-group">
          <label class="font-weight-bold mr-1" for="man_title">Member?</label>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="non_member" value="1">No
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="non_member" value="2">Yes
            </label>
          </div>
        </div>
        <div class="form-group autocomplete" style="width:100% !important">
          <label class="font-weight-bold principal" for="man_author">Principal Author</label>
          <input type="text" class="form-control mt-2" id="man_author" name="man_author" placeholder="Search/Type by Name/Specialization/Non-member/Non-account">
        </div>
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Affiliation" id="man_affiliation" name="man_affiliation">
        </div>
        <div class="form-group">
          <input type="email" class="form-control" placeholder="Email" id="man_email" name="man_email">
        </div>
          <input type="hidden" class="form-control" id="man_usr_id" name="man_usr_id">
        <span id="coauthors"></span>
        <div class="form-group" id="man_abs_div">
          <label class="font-weight-bold" for="man_abs">Upload  Abstract</label>
          <span class="badge badge-danger" id="badge_abs">PDF only</span>
          <input type="file" class="form-control" id="man_abs" name="man_abs" accept="application/pdf">
        </div>
        <div class="form-group" id="man_file_div">
          <label class="font-weight-bold" for="man_file">Upload Full Manuscript</label>
          <span class="badge badge-danger" id="badge_pdf">PDF only</span>
          <input type="file" class="form-control" id="man_file" name="man_file" accept="application/pdf">
        </div>
        <div class="form-group" id="man_word_div">
          <label class="font-weight-bold" for="man_word">Upload Full Manuscript</label>
          <span class="badge badge-primary" id="badge_word">WORD only</span>
          <input type="file" class="form-control" id="man_word" name="man_word" accept="application/msword">
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="man_pages">Number of pages</label>
          <input type="number" class="form-control w-25" placeholder="0" id="man_pages" name="man_pages" min="1">
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-outline-secondary mr-auto" type="button" id="btn_add_coa"><i class="fa fa-plus"></i> Add Co-author</button>
        <button class="btn btn-outline-secondary btn_cancel" type="button" data-dismiss="modal">Cancel</button>
        <button class="btn btn-outline-secondary btn_close" type="button" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" id="btn_save">Proceed</button>
      </form>
    </div>
  </div>
</div>
</div>
<!-- /.Upload Manuscript-->
<!-- Confirm Upload Manuscript -->
<div class="modal fade" id="confirmUploadModal" tabindex="-1">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Submit Manuscript</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Do you want to submit?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" id="submit_upload_manuscript">Submit</button>
      </div>
    </div>
  </div>
</div>
<!--/. Confirm Upload Manuscript -->
<!-- Submit Final Manuscript -->
<div class="modal fade" id="finalModal" tabindex="-1" role="dialog">
<div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title">Submit Final Manuscript</h5>
      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">×</span>
      </button>
    </div>
    <div class="modal-body">
      <form id="final_manuscript_form">
        <!-- <div class="form-group" id="man_file_div">
          <label for="man_file">Upload Final Manuscript</label>
          <span class="badge badge-warning" id="badge_pdf">PDF only</span>
          <input type="file" class="form-control" id="man_file" name="man_file" accept="application/pdf">
        </div> -->
        <div class="form-group" id="man_word_div">
          <label class="font-weight-bold" for="man_word">Upload Final Manuscript</label>
          <span class="badge badge-primary" id="badge_word">WORD</span>
          <input type="file" class="form-control" id="man_word" name="man_word" accept="application/msword">
        </div>
        <div class="form-group" id="man_abs_div">
          <label for="man_abs">Upload Abstract</label>
          <span class="badge badge-danger" id="badge_pdf">PDF</span>
          <input type="file" class="form-control" id="man_abs" name="man_abs" accept="application/pdf">
        </div>
        <div class="form-group" id="man_key_div">
          <label for="man_keywords">Keywords</label>
          <input type="text" class="form-control" id="man_keywords" name="man_keywords" placeholder="ex. science, community, etc.">
        </div>
        <div class="form-group">
          <label for="man_remarks">Remarks</label>
          <textarea class="form-control" id="man_remarks" name="man_remarks" placeholder="(optional)"  maxlength="255"></textarea>
          <small class="text-muted float-right limit"></small>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</div>
</div>
  <!-- Submit successfull -->
  <div class="modal fade" id="refreshModal" tabindex="-1" role="dialog" aria-labelledby="refreshModal" aria-hidden="true" style="z-index:999999">
<div class="modal-dialog modal-sm" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Message</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <p>
      <i class="fa fa-check"></i> Manuscript uploaded successfully.</p>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-outline-secondary" data-dismiss="modal" onclick="refresh_manus();">Close</button>
    </div>
  </div>
</div>
</div>
<!--/. Submit successful -->
<!-- Process Manuscript-->
<div class="modal fade" id="processModal" tabindex="-1" data-keyboard="false" data-backdrop="static" role="dialog" aria-labelledby="processModal" aria-hidden="true" style="z-index:9999" >
<div class="modal-dialog modal-lg" role="document" style="max-width:90%">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title">Process Manuscript</h5>
      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">×</span>
      </button>
    </div>
    <div class="modal-body">
      <form id="process_manuscript_form" autocomplete="off">
        <div class="form-row">
          <div class="col-6">
            <div class="form-group" id="form_journal">
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="new-tab" data-toggle="tab" href="#new" role="tab" aria-controls="new" aria-selected="true"><span class="fa fa-book"></span> New Journal</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="article-tab" data-toggle="tab" href="#article" role="tab" aria-controls="article" aria-selected="false"><span class="fa fa-plus-square"></span> Add Article</a>
                </li>
              </ul>
              <div class="tab-content p-3" id="myTabContent">
                <div class="tab-pane fade show active" id="new" role="tabpanel" aria-labelledby="new-tab">
                  <div class="form-row">
                    <div class="col">
                      <label class="font-weight-bold" for="jor_volume">Volume No.</label>
                      <select class="form-control text-uppercase" id="jor_volume" name="jor_volume" placeholder="ex. X" style="background-color:white">
                        <?php foreach ($u_journal as $j): ?>
                        <?php echo '<option value=' . $j->jor_volume . '>' . $j->jor_volume . '</option>'; ?>
                        <?php endforeach;?>
                      </select>
                    </div>
                    <div class="col">
                      <label class="font-weight-bold" for="jor_issue">Issue No.</label>
                      <select class="form-control" id="jor_issue" name="jor_issue">
                        <option value="">Select Issue</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">Special Issue No. 1</option>
                        <option value="6">Special Issue No. 2</option>
                        <option value="7">Special Issue No. 3</option>
                        <option value="8">Special Issue No. 4</option>
                      </select>
                    </div>
                    <div class="col">
                      <label class="font-weight-bold" for="jor_year">Year</label>
                      <input type="number" class="form-control" id="jor_year" name="jor_year" max="9999" min="1000" >
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="article" role="tabpanel" aria-labelledby="article-tab">
                  <div class="form-row">
                    <div class="col">
                      <div class="col">
                        <label for="jor_issue">Year</label>
                        <select class="form-control" id="art_year" name="art_year">
                          <option value="">Select year</option>
                          <?php foreach ($u_year as $j): ?>
                          <?php echo '<option value=' . $j->jor_year . '>' . $j->jor_year . '</option>'; ?>
                          <?php endforeach;?>
                        </select>
                      </div>
                    </div>
                    <div class="col">
                      <label for="art_issue">Volume, Issue</label>
                      <select class="form-control" id="art_issue" name="art_issue">
                        <option value="">Select Volume, Issue</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <!-- <small class="text-muted">Unselectable options in <span class="text-info">Issue No.</span> means were existing already.</small> -->
            </div>
            <nav>
              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" data-toggle="tab" href="#nav-rev" role="tab" aria-controls="nav-rev" aria-selected="true"  id="btn_add_rev"><span class="fa fa-plus-square"></span> Add Reviewer</a>
                <a class="nav-item nav-link disabled" data-toggle="tab" href="#nav-rev" role="tab" aria-controls="nav-rev" aria-selected="true"  id="btn_add_rev"><small>All reviewer emails will be Cc to <span class="text-info">oed@nrcp.dost.gov.ph</span></small> </a>
              </div>
            </nav>
            <div class="tab-content p-3" id="nav-tabContent">
              <div class="tab-pane fade show active" id="nav-rev" role="tabpanel">
                <div class="form-group">
                  <div id="rev_acc">
                    <div class="card">
                      <div class="card-header p-0" id="heading1"  data-toggle="collapse" data-target="#collapse1">
                        <h5 class="mb-0">
                        <button class="btn btn-link" type="button">
                        <span class="fa fa-address-card"></span> Reviewer 1 : <span id="rev_header1"></span>
                        </button>
                        </h5>
                      </div>
                      <div id="collapse1" class="collapse show" data-parent="#rev_acc">
                        <div class="card-body">
                          <div class="form-row mb-2">
                            <div class="col-3">
                              <select class="form-control" id="trk_title1" name="trk_title[]" placeholder="Title">
                                <?php foreach ($titles as $t): ?>
                                <?php echo '<option value=' . $t->title_name . '>' . $t->title_name . '</option>'; ?>
                                <?php endforeach;?>
                              </select>
                            </div>
                            <div class="col autocomplete">
                              <input autofocus type="text" class="form-control " id="trk_rev1" name="trk_rev[]" placeholder="Search by Name/Specialization/Non-member/Non-account">
                            </div>
                          </div>
                          <div class="form-row mb-2">
                            <div class="col">
                              <input type="text" class="form-control" placeholder="Email" id="trk_rev_email1" name="trk_rev_email[]">
                            </div>
                            <div class="col">
                              <input type="text" class="form-control" placeholder="Contact" id="trk_rev_num1" name="trk_rev_num[]">
                            </div>
                            <input type="hidden" id="trk_rev_id1" name="trk_rev_id[]">
                          </div>
                          <div class="form-row">
                            <div class="col">
                              <input type="text" class="form-control" placeholder="Specialization" id="trk_rev_spec1" name="trk_rev_spec[]" autofocus>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <nav>
              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-timeframe-tab" data-toggle="tab" href="#nav-timeframe" role="tab" aria-controls="nav-timeframe" aria-selected="true"><span class="fas fa-stopwatch"></span> Timeframes</a>  </div>
              </nav>
              <div class="tab-content p-3" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-timeframe" role="tabpanel" aria-labelledby="nav-timeframe-tab">
                  <p class="font-weight-bold">Accept Review
                   <br/><small>Days/weeks to accept or decline the review request.</small>
                  </p>

                  <div class="w-50 input-group mb-3">
                    <input type="number" style="width:75px !important" placeholder="0" id="trk_request_timer" name="trk_request_timer" min="1">
                    <div class="input-group-append">
                      <select class="custom-select" id="trk_req_day_week" name="trk_req_day_week">
                        <option value="1" selected>Days</option>
                        <option value="2">Week/s</option>
                      </select>
                    </div>
                  </div>
                  <!-- <div class="input-group mb-3">
                    <input type="number" placeholder="0" id="trk_request_timer" name="trk_request_timer" style="width:70px !important;" min="1">
                    <div class="input-group-append">
                      <span class="input-group-text">Days to accept or decline the review request.</span>
                    </div>
                  </div> -->
                  
                  <p class="font-weight-bold">Review Request
                    <br/><small>Days/weeks to finish the review task</small>
                  </p>

                  <div class="input-group mb-3">
                  <input type="number" placeholder="0" style="width:75px !important" id="trk_timeframe" name="trk_timeframe" style="width:50px !important;" min="1">
                    <div class="input-group-append">
                      <select class="custom-select" id="trk_rev_day_week" name="trk_rev_day_week">
                        <option value="1" selected>Days</option>
                        <option value="2">Week/s</option>
                      </select>
                    </div>
                  </div>

                  
                  <!-- <div class="input-group mb-3">
                    <input type="number" placeholder="0" id="trk_timeframe" name="trk_timeframe" style="width:70px !important;" min="1">
                    <div class="input-group-append">
                      <span class="input-group-text">Days to finish the review task</span>
                    </div>
                  </div> -->
                </div>
              </div>
              <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                  <a class="nav-item nav-link active" id="nav-timeframe-tab" data-toggle="tab" href="#nav-timeframe" role="tab" aria-controls="nav-timeframe" aria-selected="true"><span class="fas fa-check-square"></span> Optional</a>  </div>
                </nav>
                <div class="tab-content p-3" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-timeframe" role="tabpanel" aria-labelledby="nav-timeframe-tab">
                    <div class="form-group text-left">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" value="1" id="rev_hide_auth" name="rev_hide_auth">
                        <label class="custom-control-label pt-1" for="rev_hide_auth"> Hide Authors to Reviewers <small>(Names, affiliations and emails are hidden)</small></label>
                      </div>
                    </div>
                    <div class="form-group text-left">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" value="1" id="rev_hide_rev" name="rev_hide_rev">
                        <label class="custom-control-label pt-1" for="rev_hide_rev"> Hide Reviewers to Authors <small>(Names, affiliations and emails are hidden)</small></label>
                      </div>
                    </div>
                    <!-- <div class="form-group text-left">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" value="1" id="rev_cc" name="rev_cc">
                        <label class="custom-control-label pt-1" for="rev_cc"> Additional CC</label>
                      </div>
                      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                    </div> -->
                    <div class="form-group">
                      <label class="font-weight-bold" for="man_remarks">Remarks</label>
                      <textarea class="form-control" id="trk_remarks" name="trk_remarks" placeholder="Type your remarks here" onkeydown="countChar(this)"></textarea>
                      <small class="text-muted float-right limit"></small>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-6">
                <div class="accordion" id="rev_acc_mail">
                  <h6 class="font-weight-bold">Request for Manuscript Review Email</h6>
                  <div class="card">
                    <div class="card-header p-0" id="heading1" data-toggle="collapse" data-target="#collapse_mail1">
                      <h5 class="mb-0">
                      <button class="btn btn-link" type="button" >
                      <span class="fa fa-envelope"></span> Reviewer 1 : <span id="rev_header_mail1"></span>
                      </button>
                      </h5>
                    </div>
                    <div id="collapse_mail1" class="collapse show" data-parent="#rev_acc_mail">
                      <div class="card-body p-0">
                        <textarea type="text" id="tiny_mail1" name="tiny_mail[]" style="height:500px"></textarea>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Process Status-->
  <div class="modal fade" id="trackingModal" tabindex="-1" role="dialog" aria-labelledby="trackingModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Status Tracking</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body m-0 p-0" style="font-size:20px;">
          <!--  <div class="progress">
            <div class="progress-bar bg-success border" role="progressbar" style="width: 33%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">Author</div>
            <div class="progress-bar bg-success border" role="progressbar" style="width: 33%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">Division Chief</div>
            <div class="progress-bar bg-light text-dark border" role="progressbar" style="width: 34%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">Reviewers</div>
          </div> -->
          <div class="list-group w-100" id="track_list">
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- /.Process Status-->
  <!-- View Manuscript -->
  <div class="modal fade" id="manusModal"  role="dialog"  aria-labelledby="abstract_modal" aria-hidden="true" >
    <div class="modal-dialog modal-lg" role="document" >
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Manuscript</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" >
          <embed id="manus_view"  width="100%" height="700px" type="application/pdf">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- /.View Manuscript -->
  <!-- Reviewers -->
  <div class="modal fade" id="reviewerModal" tabindex="-1" role="dialog" aria-labelledby="processModal" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Reviewers</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <p class="font-weight-bold"></p>
          <div class="table-responsive">
            <table class="table table-hover" id="table-reviewers" width="100%" cellspacing="0" style="font-size:14px">
              <thead>
                <tr>
                  <th></th>
                  <th>Reviewer</th>
                  <th>Email</th>
                  <th>Contact</th>
                  <th>Request Status</th>
                  <th>Review Status</th>
                  <th>Date Responded</th>
                  <th>Time Remaining</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer">
          <div class="mr-auto">
            ( <span class="fa fa-user-secret"></span> ) <span class="text-danger">Reviewers hidden to Authors</span>
            ( <span class="fas fa-user-alt-slash ml-2"></span> ) <span class="text-danger">Authors hidden to Reviewers</span>
          </div>
          <?php if(_UserRoleFromSession() != 8) { ?>
          <a href="javascript:void(0);" id="new_rev" data-toggle="modal" data-target="#processModal" class="btn btn-primary"><span class="fa fa-search"></span> Find new reviewer</a>
          <?php } ?>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- /.Reviewers -->
  <!-- Start Review -->
  <div class="modal fade" id="startReviewModal" tabindex="-1" role="dialog" aria-labelledby="startReviewModal" aria-hidden="true"  style="z-index:1499">
    <div class="modal-dialog modal-lg" role="document" style="max-width:90%">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">NRCP Research Journal - Manuscript Review</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" >
          <div class="container-fluid">
            <div class="row">
              <div class="col">
                <embed id="manus_review" width="100%" height="700px" type="application/pdf" class="border border-dark">
              </div>
              <div class="col">
                <form id="submit_review_form">
                  <table class="table table-hover table-borderless" style="font-size:14px;">
                    <thead>  <tr>
                      <th>TITLE</th>
                      <th colspan="4" id="rev_title"></th>
                    </tr>
                    <tr>
                      <th>AUTHOR</th>
                      <th  colspan="4"  id="rev_author"></th>
                    </tr>
                    <tr>
                      <th scope="col">CRITERIA</th>
                      <th scope="col">DESCRIPTION</th>
                      <th scope="col">WEIGHT</th>
                      <th scope="col" width="80px">SCORE</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $y = 1;
$x = 1;foreach ($criteria as $key => $c): ?>
                    <tr>
                      <td><?php echo $c->crt_subject; ?></td>
                      <td><?php echo $c->crt_description; ?></td>
                      <td><?php echo $c->crt_weight; ?></td>
                      <?php if ($c->crt_type == 'text') {
	?>
                      <td><input type="text" class="form-control border border-danger crt_score" maxlength="2" id="scr_crt_<?php echo $x; ?>" name="scr_crt_<?php echo $x; ?>">
                    </td>
                    <?php $x++;}?>
                  </tr>
                  <?php if ($c->crt_type == 'text') {?>
                  <tr>
                    <td colspan="4">
                    <textarea class="form-control form-control-sm" cols="2" name="scr_rem_<?php echo $y; ?>" placeholder="Comments/Remarks (Optional)"></textarea></tr>
                  </td>
                  <tr>
                    <?php $y++;}?>
                    <?php endforeach;?>
                    <td colspan="3" class="font-weight-bold">TOTAL SCORE</td>
                    <td><input type="text" id="crt_total" name="scr_total" class="form-control border border-dark" readonly=""></td>
                  </tr>
                  <tr>
                    <td colspan="4">
                      <div class="form-group">
                        <label for="scr_remarks">General Remarks</label>
                        <textarea class="form-control form-control-sm" id="scr_remarks" name="scr_remarks" placeholder="(Optional)"></textarea>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4">
                    <div class="form-group">
                      <label class="font-weight-bold" for="man_file">You may upload your commented manuscript here (If any)</label>
                      <span class="badge badge-primary mr-1">WORD</span><span class="badge badge-danger">PDF</span> 
                      <input type="file" class="form-control" id="scr_file" name="scr_file" accept="application/msword, application/pdf">
                    </div>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4">
                      <p class="font-weight-bold">Recommendation</p>
                      <div class="custom-control custom-radio" >
                        <input type="radio" id="opt1" value="4" name="scr_status" class="custom-control-input" >
                        <label class="custom-control-label pt-1" for="opt1">Recommended as submitted</label>
                      </div>
                      <div class="custom-control custom-radio" >
                        <input type="radio" id="opt2" value="5" name="scr_status" class="custom-control-input">
                        <label class="custom-control-label pt-1" for="opt2">Recommended with minor revisions</label>
                      </div>
                      <div class="custom-control custom-radio" >
                        <input type="radio" id="opt3" value="6" name="scr_status" class="custom-control-input">
                        <label class="custom-control-label pt-1" for="opt3">Recommended with major revisions</label>
                      </div>
                      <div class="custom-control custom-radio" >
                        <input type="radio" id="opt4" value="7" name="scr_status" class="custom-control-input" > 
                        <label class="custom-control-label pt-1" for="opt4">Not recommended</label>
                      </div>
                      <!-- <div class="custom-control custom-radio" >
                        <input type="radio" id="approve_review" value="4" name="scr_status" class="custom-control-input">
                        <label class="custom-control-label pt-1" for="approve_review">Approve</label>
                      </div>
                      <div class="custom-control custom-checkbox pl-5" >
                        <input type="checkbox" class="custom-control-input" value="5" name="scr_status" id="revise_review">
                        <label class="custom-control-label pt-1" for="revise_review">Need Revision</label>
                      </div>
                      <div class="custom-control custom-radio" >
                        <input type="radio" id="disapprove_review" value="6" name="scr_status" class="custom-control-input">
                        <label class="custom-control-label pt-1" for="disapprove_review">Disapprove</label>
                      </div> -->
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
          <div class="btn-group" role="group">
            <!-- <button type="submit" class="btn btn-success" id="app_btn" value="4"><i class="fa fa-thumbs-up"></i> Approve</button>
            <button type="submit" class="btn btn-warning"  id="rev_btn" value="5"><i class="fa fa-pencil-square"></i> Needs Revision</button>
            <button type="submit" class="btn btn-danger"  id="dis_btn" value="6"><i class="fa fa-thumbs-down"></i> Disapprove</button> -->
            <button type="submit" class="btn btn-success">Proceed</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
<!-- /.Start Review -->
<!-- Final Review -->
<div class="modal fade" id="committeeModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Final Review</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="final_review_form">
          <div class="form-group">
            <label class="font-weight-bold">Title</label>
            <textarea class="form-control" name="manus_title" id="manus_title" readonly></textarea>
          </div>
          <div class="form-group">
            <label class="font-weight-bold">Author</label>
            <textarea class="form-control" name="manus_author" id="manus_author" readonly></textarea>
          </div>
          <span class="font-weight-bold">Please select:</span>
          <div class="custom-control custom-radio" >
            <input type="radio" value="1" name="com_rev" class="custom-control-input" id="com_rev_nr">
            <label class="custom-control-label pt-1" for="com_rev_nr">No Revisions, Approve</label>
          </div>
          <div class="custom-control custom-radio" >
            <input type="radio" class="custom-control-input" value="2" name="com_rev" id="com_rev_mnr">
            <label class="custom-control-label pt-1" for="com_rev_mnr">Recommended with Minor Revisions</label>
          </div>
          <div class="custom-control custom-radio" >
            <input type="radio" value="3" name="com_rev" class="custom-control-input" id="com_rev_mjr">
            <label class="custom-control-label pt-1" for="com_rev_mjr">Recommended with Major Revisions</label>
          </div>
          <div class="custom-control custom-radio" >
            <input type="radio" value="4" name="com_rev" class="custom-control-input" id="com_rev_dis">
            <label class="custom-control-label pt-1" for="com_rev_dis">Disapprove</label>
          </div>
          <div class="form-group pt-3">
            <label class="font-weight-bold" for="com_remarks">Remarks</label>
            <textarea class="form-control form-control-sm" id="com_remarks" name="com_remarks" placeholder="(Optional)"></textarea>
          </div>
          <input type="hidden" id="com_man_id" name="com_man_id">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- /.Final Review -->
<!-- View Score -->
<div class="modal fade" id="scoreModal" tabindex="-1" role="dialog" aria-labelledby="scoreModal" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Score</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <table class="table table-hover">
        <thead>
          <tr>
            <th>TITLE</th>
            <th colspan="4" id="score_title"></th>
          </tr>
          <tr>
            <th>AUTHOR</th>
            <th  colspan="4"  id="score_author"></th>
          </tr>
          <tr>
            <th scope="col">CRITERIA</th>
            <th scope="col">DESCRIPTION</th>
            <th scope="col">WEIGHT</th>
            <th scope="col" width="80px">SCORE</th>
            <th scope="col">Remarks</th>
          </tr>
        </thead>
        <tbody>
          <?php $x = 1;foreach ($criteria as $key => $c): ?>
          <tr>
            <td><?php echo $c->crt_subject; ?></td>
            <td><?php echo $c->crt_description; ?></td>
            <td><?php echo $c->crt_weight; ?></td>
            <td id="<?php echo $c->crt_input_name; ?>" class="text-primary"></td>
            <?php if ($c->crt_type == 'text') {
	?>
            <td id="scr_rem_<?php echo $x;
	$x++; ?>" class="text-primary"></td>
            <?php $y++;}?>
          </tr>
          <?php endforeach;?>
          <tr>
            <td colspan="3" class="font-weight-bold">TOTAL SCORE</td>
            <td colspan="2" id="scr_total" class="text-primary"></td>
            <td></td>
          </tr>
          <tr>
            <td class="font-weight-bold">GENERAL REMARKS</td>
            <td colspan="4" id="scr_remarks"></td>
          </tr>
          <tr>
            <td class="font-weight-bold">REVIEWER</td>
            <td colspan="4" id="score_reviewer"></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    </div>
  </div>
</div>
</div>
<!-- Review inputs before process -->
<div class="modal fade" id="processReviewModal" tabindex="-1" role="dialog" aria-labelledby="processReviewModal" aria-hidden="true" style="z-index:999999">
<div class="modal-dialog modal-sm" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Verify Process Manuscript</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <p>Do you want to check information you have entered?, click Cancel.</p>
      <p>Otherwise, click Submit.</p>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
      <button type="button" class="btn btn-primary" id="submit_final_process">Submit</button>
    </div>
  </div>
</div>
</div>
<!-- Publish Modal -->
<div class="modal fade" id="publishModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Publish Manuscripts</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body p-0">
        <form id="publish_form">
          <ul class="list-group list-group-flush list-publish">
          </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Confirm Submit Review Manuscript -->
<div class="modal fade" id="confirmSubmitReviewModal" tabindex="-1" style="z-index:1500">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Submit Review</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Do you want to submit?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" id="submit_review_manuscript">Submit</button>
      </div>
    </div>
  </div>
</div>
<!--/. Confirm Submit Review Manuscript -->

<!-- Confirm Delete Manuscript -->
<div class="modal fade" id="confirmRemoveModal" tabindex="-1" style="z-index:1500">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Remove Manuscript</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        This action cannot be undo. Do you want to remove anyway?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-danger" id="remove_manus">Remove</button>
      </div>
    </div>
  </div>
</div>
<!--/. Confirm Delete Manuscript -->
