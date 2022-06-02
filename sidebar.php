<?php
$getUser = $this->session->userdata('session_user');
$getGrup = $this->session->userdata('session_grup');
?>

<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Welcome <sup>C | M</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

       
  <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('Mahasiswa'); ?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Pengguna
        </div>


        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item active">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>Managament Poli</span>
            </a>
            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages"
                data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Data - Data :</h6>
                     <a class="collapse-item" href="<?= base_url('Umum'); ?>">Data Poli Umum</a>
                    <a class="collapse-item" href="<?= base_url('GIGI'); ?>">Data Poli Gigi</a>
                    <a class="collapse-item" href="<?= base_url('KIA'); ?>">Data Poli Kia/kb</a>
                </div>
            </div>
        </li>

        <!-- Sidebar Toggler (Sidebar) -->
                    <div class="text-center d-none d-md-inline">
                        <a class="btn btn-primary" href="<?= base_url(''); ?>">Logout</a>
                    </div>

                </ul>


                <!-- End of Sidebar -->

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

                   
