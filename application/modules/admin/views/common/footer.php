<!-- FOOTER -->
<nav class="navbar navbar-dark bg-dark text-muted fixed-bottom ">
	<span class="text-center"><?php $date = date('Y');
$footer = 'Copyright &copy;' . $date . ' .  Department of Science and Technology | National Research Council of the Philippines | eJournal Admin';
echo $footer;?></span>
</nav>
</body>
<!-- global variable for export privilege -->
<script type="text/javascript" >
var base_url = '<?php echo base_url(); ?>';
var prv_add = <?php echo $this->session->userdata('_prv_add'); ?>;
var prv_edt = <?php echo $this->session->userdata('_prv_edt'); ?>;
var prv_del = <?php echo $this->session->userdata('_prv_del'); ?>;
var prv_view = <?php echo $this->session->userdata('_prv_view'); ?>;
var prv_exp = <?php echo $this->session->userdata('_prv_exp'); ?>;
</script>
<!-- /.global variable for export privilege -->

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script> -->
<!-- chart -->
<script type="text/javascript" src="<?php echo base_url("assets/js/chart.js"); ?>"></script>

<!-- bootstrap defaults and plugins -->
<script type="text/javascript" src="<?php echo base_url("assets/js/jquery-3.3.1.min.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/tether.min.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/popper.min.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/bootstrap.bundle.min.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/journal.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/moment.min.js"); ?>">moment().format();moment().tz("Asia/Manila").format();</script>
<!-- /.bootstrap defaults and plugins -->

<!-- editable dropdown -->
<script src="<?php echo base_url("assets/js/jquery-editable-select.min.js"); ?>"></script>
<!-- /.editable dropdown -->

<!-- datatables -->
<script src="<?php echo base_url("assets/js/jquery.dataTables.min.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/dataTables.bootstrap4.min.js"); ?>"></script>
<!-- /.datatables -->

<!-- select datatables -->
<script src="<?php echo base_url("assets/js/dataTables.select.min.js"); ?>"></script>
<!-- /.select datatables -->

<!-- jquery validation -->
<script src="<?php echo base_url("assets/js/jquery.validate.min.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/additional-methods.min.js"); ?>"></script>
<!-- /.jquery validation -->

<!-- bootstrap notify -->
<script src="<?php echo base_url("assets/js/bootstrap-notify.js"); ?>"></script>
<!-- /.bootstrap notify -->

<!-- loading screen -->
<script type="text/javascript" src="<?php echo base_url("assets/js/jquery.loading.admin.js"); ?>"></script>
<!-- /.loading screen -->

<!-- datatables button -->
<script type="text/javascript" src="<?php echo base_url("assets/js/dataTables.buttons.min.js"); ?>"></script>
<script type="text/javascript" src="<?php echo base_url("assets/js/buttons.flash.min.js"); ?>"></script>
<script type="text/javascript" src="<?php echo base_url("assets/js/jszip.min.js"); ?>"></script>
<script type="text/javascript" src="<?php echo base_url("assets/js/pdfmake.min.js"); ?>"></script>
<script type="text/javascript" src="<?php echo base_url("assets/js/vfs_fonts.js"); ?>"></script>
<script type="text/javascript" src="<?php echo base_url("assets/js/buttons.html5.min.js"); ?>"></script>
<script type="text/javascript" src="<?php echo base_url("assets/js/buttons.print.min.js"); ?>"></script>
<!-- /.datatables button -->

<!-- Autocomplete-->
<script src="<?php echo base_url(); ?>assets/js/sh-autocomplete.min.js"></script>
<!-- /.Autocomplete-->

</html>