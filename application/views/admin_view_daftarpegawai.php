<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Dashboard Admin | Stok Barang</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" language="javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<!-- Jquery DataTables -->
	<script type="text/javascript" language="javascript" src="http:////cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
	<!-- Bootstrap dataTables Javascript -->
	<script type="text/javascript" language="javascript" src="http://cdn.datatables.net/plug-ins/9dcbecd42ad/integration/bootstrap/3/dataTables.bootstrap.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!-- Panggil Fungsi -->
	<script type="text/javascript" charset="utf-8">
	    $(document).ready(function() {
		$('.table-paginate').dataTable();
	 } );
	</script>
	<style>
		body {
			font-size: 12px;
		}
		h1 {
			font-size: 1.8vw;
			line-height: 125%;
		}
		h2 {
			font-size: 1.125vw;
			line-height: 150%;
			color: #e2e2e2;
		}
		.sidenav {
			position: fixed;
			z-index: 1;
			left: 0;
			top: 0;
			width: 17.5%;
			height: 100%;
			background-color: #965324;
			color: white;
			padding: 2.5% 0%;
			overflow-x: hidden;
		}
		.sidenav .nav-info {
			padding: 0 10%;
		}
		.sidenav .nav-links a {
			display: block;
			text-align: left;
			width: 100%;
			font-size: 1vw;
			padding: 5% 2%;
			color: #d0d0d0;
			border-radius: 0;
		}
		.sidenav .nav-links a:hover {
			background-color: #AA622F;
			color: white;
		}
		#btn-active {
			background-color: #AA622F;
			color: white;
		}
		hr {
			border-top: 2px solid #ACACAC;
			margin: 20% 0 10% 0;
		}
		.tabelstok {
			position: absolute;
			right: 0;
			top: 0;
			width: 82.5%;
			height: 100%;
			color: #965324;
			background-color: #F6FEFF;
			padding: 2.5% 1%;
			font-size: 1.25rem;
		}
		td {
			color: #606060;
		}
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		  margin: 0;
		}

		/* Firefox */
		input[type=number] {
		  -moz-appearance: textfield;
		}
		.dataTables_info {
			color: blue;
		}
		#DataTables_Table_0_filter label {
			position: relative;
			float: right;
		}
		#DataTables_Table_0_wrapper .row:first-child {
			margin-bottom: 2%;
		}
		#DataTables_Table_0_info {
			color: #965324;
		}
		#DataTables_Table_0_paginate {
			color: #965324;
		}
		.btn-logout {
			margin: 0;
			padding: 0;
			color: white;
			border: 1px solid white;
			border-radius: 6px;
			padding: 1rem 2rem;
			font-size: 0.8vw;
		}
		.btn-logout:hover {
			background-color: #AA622F;
			color: white;
		}
		.btn-modal {
			color: white;
			background-color: #965324;
		}
		.btn-modal:hover {
			background-color: #AA622F;
			color: white;
		}
	</style>
</head>

<body>
	<div class="container-fluid">
		<div class="sidenav">
			<div class="nav-info">
				<h1><?php echo $this->session->userdata['nama_pegawai']; ?></h1>
	            <h2><?php echo "username : ".$this->session->userdata['username']; ?></h2><br>
	            <a href="<?php echo site_url('Login/logout');?>" class="btn btn-logout" role="button">Log Out</a>
	        </div><hr>
            <div class="nav-links">
	            <a href="<?php echo site_url('Admin/view_aturstokbarang');?>" class="btn" role="button"><i class="material-icons" style="font-size:24px; transform: translateY(4px); margin-right: 10px;">assignment</i>Atur Stok Barang</a>
	            <a href="<?php echo site_url('Admin/view_tambahbarang');?>" class="btn" role="button"><i class="material-icons" style="font-size:24px; transform: translateY(4px); margin-right: 10px;">add_circle_outline</i>Tambah Data Barang</a>
	            <a href="<?php echo site_url('Admin/view_edithapusbarang');?>" class="btn" role="button"><i class="material-icons" style="font-size:24px; transform: translateY(4px); margin-right: 10px;">find_replace</i>Ubah/Hapus Data Barang</a>
	            <a href="<?php echo site_url('Admin/view_daftarpegawai');?>" class="btn" id="btn-active" role="button"><i class="material-icons" style="font-size:24px; transform: translateY(4px); margin-right: 10px;">supervisor_account</i>Daftar Pegawai</a>
        	</div>
		</div>
		<div class="tabelstok">
			<h1>Daftar Pegawai Penanggung Jawab Gudang</h1><br><br>
			<table class="table table-bordered table-paginate" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>No</th>
						<th>ID Pegawai</th>
						<th>Nama Pegawai</th>
						<th>Nama Gudang</th>
						<th>Alamat Gudang</th>
					</tr>
				</thead>
				<tbody>
					<?php 
	                    $no = 1;
	    				foreach($data->result_array() as $tabeljoinpegawai):
	    					$ID_pegawai=$tabeljoinpegawai['ID_pegawai'];
	    					$nama_pegawai=$tabeljoinpegawai['nama_pegawai'];
	    					$nama_gudang=$tabeljoinpegawai['nama_gudang'];
	    					$alamat_gudang=$tabeljoinpegawai['alamat_gudang'];
	    			?>
	    			<tr>
	    				<td><?php echo $no++;?></td>
	    				<td><?php echo $ID_pegawai;?></td>
	    				<td><?php echo $nama_pegawai;?></td>
	    				<td><?php echo $nama_gudang;?></td>
	    				<td><?php echo $alamat_gudang;?></td>
	    			</tr>
	    			<?php endforeach;?>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>