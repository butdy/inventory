-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2019 at 02:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_keluarga`
--

CREATE TABLE `dt_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `nip` text NOT NULL,
  `nama_pasangan` text NOT NULL,
  `tgl_lahir_pasangan` date NOT NULL,
  `jml_anak` int(11) NOT NULL,
  `telp_pasangan` text NOT NULL,
  `alamat_pasangan` text NOT NULL,
  `pekerjaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_keluarga`
--

INSERT INTO `dt_keluarga` (`id_keluarga`, `nip`, `nama_pasangan`, `tgl_lahir_pasangan`, `jml_anak`, `telp_pasangan`, `alamat_pasangan`, `pekerjaan`) VALUES
(9, 'PEG-1910-0001', 'Angel Karamoy', '2006-12-12', 0, '0812256789', 'Singocandi RT/RW : 03/01', 'wiraswasta'),
(10, 'PEG-1910-0002', 'Siti Rohmah', '1972-05-12', 3, '081234567', 'Singocandi RT/RW : 03/01', 'Karyawan Swasta');

-- --------------------------------------------------------

--
-- Table structure for table `mst_divisi`
--

CREATE TABLE `mst_divisi` (
  `id_divisi` int(11) NOT NULL,
  `kode_divisi` text NOT NULL,
  `divisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_divisi`
--

INSERT INTO `mst_divisi` (`id_divisi`, `kode_divisi`, `divisi`) VALUES
(1, 'DEP-1910-0001', 'Keuangan'),
(2, 'DEP-1910-0002', 'Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `mst_jabatan`
--

CREATE TABLE `mst_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `kode_jabatan` text NOT NULL,
  `jabatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_jabatan`
--

INSERT INTO `mst_jabatan` (`id_jabatan`, `kode_jabatan`, `jabatan`) VALUES
(1, 'JAB-1910-0001', 'Staf Gudang'),
(2, 'JAB-1910-0002', 'Kepala Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `mst_kategori`
--

CREATE TABLE `mst_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kode_kategori` text NOT NULL,
  `nama_kategori` text NOT NULL,
  `ket_kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_kategori`
--

INSERT INTO `mst_kategori` (`id_kategori`, `kode_kategori`, `nama_kategori`, `ket_kategori`) VALUES
(4, 'CRG-201910-0001', 'Kursi', '-'),
(5, 'CRG-201910-0002', 'Meja', '-'),
(6, 'CRG-201910-0003', 'Lemari', '-'),
(7, 'CRG-201910-0004', 'Rak', '-'),
(8, 'CRG-201910-0005', 'Kipas Angin', '-');

-- --------------------------------------------------------

--
-- Table structure for table `mst_pegawai`
--

CREATE TABLE `mst_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `kode_pegawai` text NOT NULL,
  `nama_lengkap` text NOT NULL,
  `sex` text NOT NULL,
  `kota_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_skrg` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `agama` text NOT NULL,
  `no_ktp` int(11) NOT NULL,
  `status` text NOT NULL,
  `pend_akhir` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `pegawai_created` date NOT NULL,
  `pegawai_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_pegawai`
--

INSERT INTO `mst_pegawai` (`id_pegawai`, `kode_pegawai`, `nama_lengkap`, `sex`, `kota_lahir`, `tgl_lahir`, `alamat_skrg`, `email`, `agama`, `no_ktp`, `status`, `pend_akhir`, `image`, `pegawai_created`, `pegawai_active`) VALUES
(2, 'PEG-1910-0001', 'Adonia Vincent Natanael', 'Pria', 'Magelang', '2003-01-02', 'Singocandi Rt/Rw : 03/01', 'adonia@gmail.com', 'Kristen', 2147483647, 'Belum Menikah', 'S1', 'avatar51.png', '2019-10-04', 1),
(3, 'PEG-1910-0002', 'Rahmad Rahardjo', 'Pria', 'Jepara', '1984-09-08', 'Sluke rt/rw : 05/06', 'rahmad@gmail.com', 'Islam', 2147483647, 'Menikah', 'D3', 'default.jpg', '2019-10-04', 1),
(4, 'PEG-1910-0003', 'Kusyadi Jayadi', 'Pria', 'Pati', '1974-12-17', 'Gembong No 54', 'kus@yahoo.com', 'Hindu', 2147483647, 'Menikah', 'SMA', 'default.jpg', '2019-10-04', 1),
(5, 'PEG-1910-0004', 'Adonia Vincent Natanael', 'Pria', 'Magelang', '2019-10-01', 'Singocandi Rt/Rw : 03/01', 'ata.adonia@gmail.com', 'Islam', 45464674, 'Belum Menikah', 'SD', 'default.jpg', '2019-10-05', 1),
(6, 'PEG-1910-0005', 'Kusyadi Jayadi', 'Pria', 'Magelang', '2019-10-09', 'Singocandi Rt/Rw : 03/01', 'ata.adonia@gmail.com', 'Katolik', 58575858, 'Belum Menikah', 'Tidak Sekolah', 'default.jpg', '2019-10-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nip` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `level` text NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`id`, `nama`, `nip`, `email`, `username`, `password`, `level`, `date_created`, `is_active`) VALUES
(9, 'Donny Kurniawan', '321456987', 'ata.adonia@gmail.com', 'admin', '$2y$10$It1SEgiD89EyX3pQP/PA5.UsgMcG0RyLR91cnyXFqmP0Wt4ztRqBW', 'Admin', '2019-08-06', 1),
(13, 'Maya Ratna', '987456321', 'maya_ratna@gmail.com', 'maya', '$2y$10$wjMya98vweLwGzJDwbPusebxq4xP0r4twILCi69Hrt8lHn9OccUQ6', 'Manager', '2019-09-13', 1),
(16, 'Adonia Vincent Natanael', 'PEG-1910-0001', 'adonia@gmail.com', 'ata', '$2y$10$iDE9FstHwHiEKdQ8./4t2e.V8CiwzMOJD/L9MxLb0svXp5z4NrAU.', 'Staf', '2019-10-07', 1),
(19, 'Donny Kurniawan', '87654321', 'ata.adonia@gmail.com', 'manager', '$2y$10$n9TOmbFb4APCZXTCgufdluC8Ic8.geBzKsLJOX3sI1FJ2.U4LduTO', 'Manager', '2019-10-07', 1),
(20, 'Donny Kurniawan', '5432123', 'adonia@gmail.com', 'gudang', '$2y$10$KHHSYhD0lpA9.ekpz8CAl.Q6VpR5PPr4DtJ5p.j8FfudT5ruzUG2G', 'Gudang', '2019-10-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` text NOT NULL,
  `kategori_kode` text NOT NULL,
  `nama_barang` text NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `ket_barang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `kode_barang`, `kategori_kode`, `nama_barang`, `jumlah_barang`, `ket_barang`) VALUES
(2, 'PROD-201910-0002', 'CRG-201910-0002', 'Meja Kantor', 85, ''),
(3, 'PROD-201910-0003', 'CRG-201910-0002', 'Kursi Lipat Kecil', 190, '-'),
(4, 'PROD-201910-0004', 'CRG-201910-0004', 'Rak Sepatu Kecil', 176, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stock_in`
--

CREATE TABLE `tb_stock_in` (
  `id_stock_in` int(11) NOT NULL,
  `sess_id` int(11) NOT NULL,
  `barang_kd` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `divisi_kd` text NOT NULL,
  `pengirim` text NOT NULL,
  `ket_barang` text NOT NULL,
  `jml_masuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stock_in`
--

INSERT INTO `tb_stock_in` (`id_stock_in`, `sess_id`, `barang_kd`, `tgl_masuk`, `divisi_kd`, `pengirim`, `ket_barang`, `jml_masuk`) VALUES
(4, 16, 'PROD-201910-0002', '2019-10-20', 'DEP-1910-0001', 'Donny', '-', 10),
(5, 16, 'PROD-201910-0004', '2019-10-20', 'DEP-1910-0001', 'Donny', '-', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_stock_out`
--

CREATE TABLE `tb_stock_out` (
  `id_stock_out` int(11) NOT NULL,
  `sess_id` int(11) NOT NULL,
  `barang_kd` text NOT NULL,
  `tgl_keluar` date NOT NULL,
  `divisi_kd` text NOT NULL,
  `penerima` text NOT NULL,
  `ket_barang` text NOT NULL,
  `jml_minta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stock_out`
--

INSERT INTO `tb_stock_out` (`id_stock_out`, `sess_id`, `barang_kd`, `tgl_keluar`, `divisi_kd`, `penerima`, `ket_barang`, `jml_minta`) VALUES
(1, 16, 'PROD-201910-0002', '2019-10-20', 'DEP-1910-0001', 'Adonia Vincent Natanael', '-', 25),
(2, 16, 'PROD-201910-0003', '2019-10-20', 'DEP-1910-0001', 'Evie Tamala', '-', 10),
(3, 16, 'PROD-201910-0004', '2019-10-27', 'DEP-1910-0002', 'Arnold', '-', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tb_struktural`
--

CREATE TABLE `tb_struktural` (
  `id_struktural` int(11) NOT NULL,
  `kode_struktural` text NOT NULL,
  `pegawai_kode` text NOT NULL,
  `divisi_kode` text NOT NULL,
  `jabatan_kode` text NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_struktural`
--

INSERT INTO `tb_struktural` (`id_struktural`, `kode_struktural`, `pegawai_kode`, `divisi_kode`, `jabatan_kode`, `tgl_input`) VALUES
(1, '201910150820200001', 'PEG-1910-0001', 'DEP-1910-0001', 'JAB-1910-0002', '2019-10-15'),
(3, '201910150947100003', 'PEG-1910-0002', 'DEP-1910-0002', 'JAB-1910-0001', '2019-10-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dt_keluarga`
--
ALTER TABLE `dt_keluarga`
  ADD PRIMARY KEY (`id_keluarga`);

--
-- Indexes for table `mst_divisi`
--
ALTER TABLE `mst_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `mst_jabatan`
--
ALTER TABLE `mst_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `mst_kategori`
--
ALTER TABLE `mst_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mst_pegawai`
--
ALTER TABLE `mst_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_stock_in`
--
ALTER TABLE `tb_stock_in`
  ADD PRIMARY KEY (`id_stock_in`);

--
-- Indexes for table `tb_stock_out`
--
ALTER TABLE `tb_stock_out`
  ADD PRIMARY KEY (`id_stock_out`);

--
-- Indexes for table `tb_struktural`
--
ALTER TABLE `tb_struktural`
  ADD PRIMARY KEY (`id_struktural`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_keluarga`
--
ALTER TABLE `dt_keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_divisi`
--
ALTER TABLE `mst_divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_jabatan`
--
ALTER TABLE `mst_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_kategori`
--
ALTER TABLE `mst_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_pegawai`
--
ALTER TABLE `mst_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_stock_in`
--
ALTER TABLE `tb_stock_in`
  MODIFY `id_stock_in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_stock_out`
--
ALTER TABLE `tb_stock_out`
  MODIFY `id_stock_out` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_struktural`
--
ALTER TABLE `tb_struktural`
  MODIFY `id_struktural` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
