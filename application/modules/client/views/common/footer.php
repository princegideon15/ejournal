<!-- FOOTER -->

 <nav class="navbar navbar-light bg-light text-muted fixed-bottom text-center ">
  <?php $date = date('Y');
	$footer= 'Copyright &copy;'.$date.' .  Department of Science and Technology | National Research Council of the Philippines | eJournal ';
	echo  $footer; ?>
 </nav>

</body>

<script src="<?php echo base_url("assets/js/tether.min.js");?>"></script>
<script src="<?php echo base_url("assets/js/popper.min.js");?>"></script>
<script src="<?php echo base_url("assets/js/bootstrap.min.js");?>"></script>
<script src="<?php echo base_url("assets/js/front_journal.js");?>"></script>
<script src="<?php echo base_url("assets/js/jquery-editable-select.min.js");?>"></script> 
<script src="<?php echo base_url("assets/js/jquery.validate.min.js");?>"></script> 
<script type="text/javascript" src="<?php echo base_url("assets/js/jquery.loading.js"); ?>"></script>
<script src="<?php echo base_url("assets/js/bootstrap-notify.js");?>"></script> 


    
</html>

<!-- bug on search when text is remove -->