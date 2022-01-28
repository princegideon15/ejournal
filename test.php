

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OPRS</title>
    <script type="text/javascript" >var base_url = 'http://localhost/oprs2/';</script>
    <!-- Bootstrap core CSS-->


    <!-- Custom fonts for this template-->
    <link href="http://localhost/oprs2/assets/sb-admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="http://localhost/oprs2/assets/sb-admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="http://localhost/oprs2/assets/sb-admin/css/sb-admin.css" rel="stylesheet">

    <!-- Bootstrap Datetimepicker-->
    <link href="http://localhost/oprs2/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <!-- Editable dropwdown-->
    <link href="http://localhost/oprs2/assets/css/jquery-editable-select.min.css" rel="stylesheet">

    <!-- Autocomplete-->
    <link href="http://localhost/oprs2/assets/css/sh-autocomplete.min.css" rel="stylesheet">

    <!-- Animate notify-->
    <link href="http://localhost/oprs2/assets/css/animate.min.css" rel="stylesheet"/>



</head>


<body id="page-top">


<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top">

  <a class="navbar-brand mr-1" href="dashboard">OPRS</a>

  <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
    <i class="fas fa-bars"></i>
  </button>

  <!-- Navbar Search -->
  <!-- <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
      <div class="input-group-append">
        <button class="btn btn-primary" type="button">
          <i class="fas fa-search"></i>
        </button>
      </div>
    </div>
  </form> -->

  <!-- Navbar -->
  <ul class="navbar-nav ml-auto ml-md-0 w-100">
    <!-- <li class="nav-item dropdown no-arrow mx-1">
      <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-bell fa-fw"></i>
        <span class="badge badge-danger">9+</span>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Something else here</a>
      </div>
    </li>
    <li class="nav-item dropdown no-arrow mx-1">
      <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-envelope fa-fw"></i>
        <span class="badge badge-danger">7</span>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Something else here</a>
      </div>
    </li> -->
    <li class="nav-item dropdown no-arrow ml-auto">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-user-circle fa-fw"></i>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="#">Settings</a>
        <a class="dropdown-item" href="#">Activity Log</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
      </div>
    </li>
  </ul>

</nav>

<div id="wrapper">

  <!-- Sidebar -->
  <ul class="sidebar navbar-nav"  style="margin-top:3em;top:4em;">

    <li class="nav-item">
      <a class="nav-link" href="dashboard">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span>
      </a>
    </li>

    <li class="nav-item ">
      <a class="nav-link" href="manuscripts">
        <i class="fas fa-fw fa-book"></i>
        <span>Manuscripts</span>
      </a>
    </li>
        <li class="nav-item ">
      <a class="nav-link" href="user">
        <i class="fas fa-fw fa-user"></i>
        <span>Users</span>
      </a>
    </li>
      </ul>

  <div id="content-wrapper">

<div class="container-fluid" style="margin-top:3.5em">

  <!-- Breadcrumbs-->
  <ol class="breadcrumb">
  <li class="breadcrumb-item">
    <a href="javascript:void(0);">Manuscripts</a></li>
    <li class="breadcrumb-item active">Super Admin</li>
  </ol>

  <!-- Manuscript Table -->
  <div class="card mb-3">
    <div class="card-header ">
      <i class="fa fa-table"></i> List of Manuscripts
           </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th></th>
              <th >Title</th>
              <th>Date Submitted</th>
              <th>Status <i class="fa fa-question-circle text-primary" rel="tooltip" data-placement="top" title="Click the status to view tracking"></i></th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
                                                                                                          <!-- get total reveiewers with scores -->






                    <tr >
                      <td>1</td>
                      <td><a href="javascript:void(0);" onclick="view_manus(1);" class="text-dark ">test, Hannah Joy P. Alcantara, Andrea Santiago</a></td>
                      <td>April 22, 2019, 1:33 pm</td>
                      <td><span style="cursor:pointer" class="badge badge-pill badge-warning" data-toggle="modal" rel="tooltip" data-placement="top" title="View Tracking" data-target="#trackingModal" onclick="tracking(1,8);">New</span></td>
                      <td>

                        <!-- view manuscript -->
                                                  <button type="button" class="btn btn-light text-primary btn-sm" onclick="manus_view('20190422133351_20181207111138_20180710110328_30-39_test_tes_tT_ES_T_tes2test3.pdf')" data-toggle="modal" data-target="#manusModal" rel="tooltip" data-placement="top" title="View PDF"><span class="fa fa-eye"></span> Manuscript</button>

                        <!-- submit revision -->

                        <!-- process manuscript -->

                        <!-- view reviewers -->

                        <!-- view tracking -->

                        <!-- approve manuscript -->

                    </td>
                    </tr>
                            </tbody>



        </table>
      </div>
    </div>
    <div class="card-footer small text-muted"><!-- Updated yesterday at 11:59 PM --></div>
  </div>
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

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">×</span>
    </button>
  </div>
  <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
  <div class="modal-footer">
    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
    <a class="btn btn-primary" href="http://localhost/oprs2/admin/login/logout">Logout</a>
  </div>
</div>
</div>
</div>

<!-- Upload Manuscript-->
<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="uploadModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Manuscript Details</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-borderless" style="font-size:14px;">
          <tbody>
          </tbody>
        </table>

        <form id="manuscript_form">
          <div class="form-group">
            <label for="man_title">Title</label>
            <textarea class="form-control" id="man_title" name="man_title" placeholder=""></textarea>
          </div>
           <div class="form-group autocomplete w-100">
            <label for="man_author">Author</label>
            <input type="text" class="form-control" id="man_author" name="man_author" placeholder="First name, Middle name, Last name">
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col">
                <input type="text" class="form-control" placeholder="Affiliation" id="man_affiliation" name="man_affiliation">
              </div>
              <div class="col">
                <input type="email" class="form-control" placeholder="Email" id="man_email" name="man_email">
              </div>
            </div>
          </div>
          <span id="coauthors"></span>
          <div class="form-group" id="man_file_div">
            <label for="man_file">Upload Manuscript</label>
            <span class="badge badge-warning" id="badge_pdf">PDF only</span>

            <input type="file" class="form-control" id="man_file" name="man_file" accept="application/pdf">
          </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-default mr-auto" type="button" id="btn_add_coa">Add Co-author</button>
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary" id="btn_save">Save</button>
        <button type="button" class="btn btn-success" id="btn_approve"><span class="fa fa-check-square-o"></span> Approve and Publish to eJournal</button>
           </form>
      </div>
    </div>
  </div>
</div>

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
          <!-- <div class="form-group">
            <label for="man_title">Title</label>
            <textarea class="form-control" id="man_title" name="man_title" placeholder=""></textarea>
          </div>
           <div class="form-group autocomplete w-100">
            <label for="man_author">Author</label>
            <input type="text" class="form-control" id="man_author" name="man_author" placeholder="First name, Middle name, Last name">
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col">
                <input type="text" class="form-control" placeholder="Affiliation" id="man_affiliation" name="man_affiliation">
              </div>
              <div class="col">
                <input type="email" class="form-control" placeholder="Email" id="man_email" name="man_email">
              </div>
            </div>
          </div>
          <span id="coauthors"></span> -->
          <div class="form-group" id="man_file_div">
            <label for="man_file">If any, Upload Revised Manuscript</label>
            <span class="badge badge-warning" id="badge_pdf">PDF only</span>
            <!-- <input type="file" class="form-control" id="man_file" name="man_file" accept="application/pdf,application/msword"> -->
            <input type="file" class="form-control" id="man_file" name="man_file" accept="application/pdf">
          </div>
          <div class="form-group">
            <label for="man_remarks">Remarks</label>
            <textarea class="form-control" id="man_remarks" name="man_remarks" placeholder="(optional)"></textarea>
          </div>
      </div>
      <div class="modal-footer">
        <!-- <button class="btn btn-default mr-auto" type="button" id="btn_add_coa">Add Co-author</button> -->
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-primary">Submit</button>
           </form>
      </div>
    </div>
  </div>
</div>

<!-- Process Manuscript-->
<div class="modal fade" id="processModal" tabindex="-1" role="dialog" aria-labelledby="processModal" aria-hidden="true">
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
              <div class="form-group">
                <div class="form-row mb-1">
                  <div class="col">
                     <label for="jor_volume">Volume No.</label>
                      <select class="form-control text-uppercase" id="jor_volume" name="jor_volume" placeholder="ex. X" style="background-color:white">
                                                  <option value=III>III</option>                                                  <option value=XIII>XIII</option>                                                  <option value=XII>XII</option>                                                  <option value=XI>XI</option>                                                  <option value=X>X</option>                                                  <option value=VIII-IX>VIII-IX</option>                                                  <option value=XVI>XVI</option>                                                  <option value=XVII>XVII</option>                                                  <option value=10>10</option>                                                  <option value=WWW>WWW</option>                                              </select>
                  </div>
                  <div class="col">
                    <label for="jor_issue">Issue No.</label>
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
                    <label for="jor_year">Year</label>
                    <input type="text" class="form-control" id="jor_year" name="jor_year" maxlength="4">
                  </div>
                </div>
                <!-- <small class="text-muted">Unselectable options in <span class="text-info">Issue No.</span> means were existing already.</small> -->
              </div>
              <hr>
              <label class="mb-0 font-weight-bold">Select Reviewers</label><br/>
              <button class="btn btn-link btn-light btn-sm float-right" type="button" id="btn_add_rev"><span class="fa fa-plus"></span> Add Reviewer</button>
              <small>All reviewer emails will be Cc to <span class="text-info">exec_dir@gmail.com</span></small>

              <hr>
              <div class="form-group">
                <div class="accordion" id="rev_acc">
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
                        <div class="form-group autocomplete w-100">
                          <input type="text" class="form-control" id="trk_rev1" name="trk_rev[]" placeholder="Search by Name/Specialization">
                        </div>
                        <div class="form-row">
                          <div class="col">
                            <input type="text" class="form-control" placeholder="Email" id="trk_rev_email1" name="trk_rev_email[]">
                          </div>
                          <div class="col">
                            <input type="text" class="form-control" placeholder="Contact" id="trk_rev_num1" name="trk_rev_num[]">
                          </div>
                          <input type="hidden" id="trk_rev_id1" name="trk_rev_id[]">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <hr/>
              <div class="alert alert-dark" role="alert">
                <p class="font-weight-bold">Review Request</p>
                <!-- <p>You have <input type="text" id="trk_request_timer" name="trk_request_timer" class="align-text-bottom bg-transparent" style="display:inline-block;width:50px;height:20px;border:0;border-bottom: 1px solid black;" maxlength="3"> days to accept/decline the review request.</p> -->
                 <div class="input-group mb-3">
                    <input type="text" id="trk_request_timer" name="trk_request_timer" placeholder="000" style="display:inline-block;width:50px !important;" class="align-text-bottom border border-dark"  maxlength="3">
                    <div class="input-group-append">
                      <span class="input-group-text">Days to accept/decline the review request.</span>
                    </div>
                  </div>

                <p class="font-weight-bold">Accept Review</p>

                  <div class="input-group mb-3">
                  <input type="text" id="trk_timeframe" name="trk_timeframe" placeholder="000" style="display:inline-block;width:50px !important;" maxlength="3" class="align-text-bottom border border-dark " >
                    <div class="input-group-append">
                      <span class="input-group-text">Days to finish the review task</span>
                    </div>
                  </div>


              </div>
              <div class="form-group">
                <label for="man_remarks">Remarks</label>
                <textarea class="form-control" id="trk_remarks" name="trk_remarks" placeholder="(optional)"></textarea>
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
      <div class="modal-body m-0 p-0">
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

<!-- Reviewers -->
<div class="modal fade" id="reviewerModal" tabindex="-1" role="dialog" aria-labelledby="processModal" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Reviewers</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="table-responsive">
        <table class="table table-hover" id="table-reviewers" width="100%" cellspacing="0" style="font-size:14px">
          <thead>
            <tr>
              <th></th>
              <th>Reviewer</th>
              <th>Email</th>
              <th>Contact</th>
              <th>Status</th>
              <th>Date Responded</th>
              <th>Time Remaining</th>
           <!--    <th>Review Status</th>
              <th>Review Score</th>
              <th>Review Remarks</th> -->
            </tr>
          </thead>
          <tbody>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</div>

<!-- Start Review -->
<div class="modal fade" id="startReviewModal" tabindex="-1" role="dialog" aria-labelledby="startReviewModal" aria-hidden="true">
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
                 <table class="table table-hover" style="font-size:14px;">
                  <thead>
                    <tr>
                      <th scope="col">CRITERIA</th>
                      <th scope="col">DESCRIPTION</th>
                      <th scope="col">WEIGHT</th>
                      <th scope="col" width="80px">SCORE</th>
                    </tr>
                  </thead>
                  <tbody>

                                              <tr>
                          <td>Relevance</td>
                          <td>The technical outputs (research's results) are significant based on the objectives of the project.</td>
                          <td>30</td>
                                                    <td><input type="text" class="form-control border border-danger crt_score" maxlength="2" id="scr_crt_1" name="scr_crt_1"></td>

                        </tr>
                                              <tr>
                          <td>Scope/Content</td>
                          <td>The breadth and depth of information from the researcher's results are sufficient to contribute to the attainment of the general and specific objectives.</td>
                          <td>30</td>
                                                    <td><input type="text" class="form-control border border-danger crt_score" maxlength="2" id="scr_crt_2" name="scr_crt_2"></td>

                        </tr>
                                              <tr>
                          <td>Quality</td>
                          <td>The research results were creatively presented:</td>
                          <td>20</td>
                                                    <td><input type="text" class="form-control border border-danger crt_score" maxlength="2" id="scr_crt_3" name="scr_crt_3"></td>

                        </tr>
                                              <tr>
                          <td></td>
                          <td>a. Syntax, grammar, and language.</td>
                          <td></td>

                        </tr>
                                              <tr>
                          <td></td>
                          <td>b. Illustrations, photos, graphs, etc.</td>
                          <td></td>

                        </tr>
                                              <tr>
                          <td>Timeliness</td>
                          <td>The research's results are applicable or have great potential to be used as tools (policy or technology) in addressing present regional and national issues.</td>
                          <td>20</td>
                                                    <td><input type="text" class="form-control border border-danger crt_score" maxlength="2" id="scr_crt_4" name="scr_crt_4"></td>

                        </tr>

                      <tr>
                          <td colspan="3" class="font-weight-bold">TOTAL SCORE</td>
                          <td><input type="text" id="crt_total" name="scr_total" class="form-control border border-dark" readonly=""></td>
                      </tr>
                  </tbody>
                </table>
               <div class="form-group">
                <label for="scr_remarks">Remarks</label>
                <textarea class="form-control" id="scr_remarks" name="scr_remarks" placeholder="(optional)"></textarea>
              </div>



              </div>
            </div>
      </div>
      <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
            <div class="btn-group" role="group">
              <button type="submit" class="btn btn-success" id="app_btn" value="4"><i class="fa fa-thumbs-up"></i> Approve</button>
              <button type="submit" class="btn btn-warning"  id="rev_btn" value="5"><i class="fa fa-pencil-square"></i> Needs Revision</button>
              <button type="submit" class="btn btn-danger"  id="dis_btn" value="6"><i class="fa fa-thumbs-down"></i> Disapprove</button>
            </div>
          </form>
      </div>
    </div>
  </div>
</div>



<!-- Bootstrap core JavaScript-->
<script src="http://localhost/oprs2/assets/sb-admin/vendor/jquery/jquery.min.js"></script>
<script src="http://localhost/oprs2/assets/sb-admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="http://localhost/oprs2/assets/sb-admin/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="http://localhost/oprs2/assets/sb-admin/js/sb-admin.min.js"></script>

<!-- Jquery Validate-->
<script src="http://localhost/oprs2/assets/js/jquery.validate.min.js"></script>
<!-- Main jquery-->
<script src="http://localhost/oprs2/assets/js/oprs.js"></script>

<!-- Page level plugin JavaScript-->
<script src="http://localhost/oprs2/assets/sb-admin/vendor/datatables/jquery.dataTables.js"></script>
<script src="http://localhost/oprs2/assets/sb-admin/vendor/datatables/dataTables.bootstrap4.js"></script>


<!-- Editable dropdown-->
<script src="http://localhost/oprs2/assets/js/jquery-editable-select.min.js"></script>

<!-- Bootstrap notify-->
<script src="http://localhost/oprs2/assets/js/bootstrap-notify.js"></script>

<!-- Bootstrap datepicker-->
<script src="http://localhost/oprs2/assets/js/bootstrap-datetimepicker.min.js"></script>

<!-- Autocomplete-->
<script src="http://localhost/oprs2/assets/js/sh-autocomplete.min.js"></script>

<!-- Moment-->
<script src="http://localhost/oprs2/assets/js/moment.min.js">moment().format();moment().tz("Asia/Manila").format();</script>

<!-- Text Editor TinyMCE -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/4.9.2/tinymce.min.js"></script>
<script>tinymce.init({selector: '#tiny_mail1'}); </script>


</body>

</html>
