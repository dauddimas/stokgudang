<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {

	function show_barang(){
		$hasil=$this->db->query("SELECT * FROM barang");
		return $hasil;
	}

	function tambah_barang($nama_barang,$jenis_barang,$harga_barang,$stok_barang,$ID_gudang){
		$hasil=$this->db->query("INSERT INTO barang (nama_barang,jenis_barang,harga_barang,stok_barang,ID_gudang) VALUES ('$nama_barang','$jenis_barang','$harga_barang','$stok_barang','$ID_gudang')");
		return $hasil;
	}

	function atur_stok_barang($ID_barang,$stok_barang){
		$hasil=$this->db->query("UPDATE barang SET stok_barang='$stok_barang' WHERE ID_barang='$ID_barang'");
		return $hasil;
	}

	function ubah_barang($ID_barang,$nama_barang,$jenis_barang,$harga_barang){
		$hasil=$this->db->query("UPDATE barang SET nama_barang='$nama_barang',jenis_barang='$jenis_barang',harga_barang='$harga_barang' WHERE ID_barang='$ID_barang'");
		return $hasil;
	}

	function hapus_barang($ID_barang){
		$hasil=$this->db->query("DELETE FROM barang WHERE ID_barang='$ID_barang'");
		return $hasil;
	}

	public function tabel_barang() {
		$hasil=$this->db->query("SELECT barang.ID_barang, barang.nama_barang, barang.jenis_barang, barang.harga_barang, barang.stok_barang, gudang.nama_gudang FROM barang INNER JOIN gudang ON gudang.ID_gudang = barang.ID_gudang");
		return $hasil;
	}

	public function tabel_pegawai() {
		$hasil=$this->db->query("SELECT pegawai.ID_pegawai, pegawai.nama_pegawai, gudang.nama_gudang, gudang.alamat_gudang FROM pegawai INNER JOIN gudang ON gudang.ID_gudang = pegawai.ID_gudang");
		return $hasil;
	}
}