-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2020 pada 20.32
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalhit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `admin_username` varchar(128) NOT NULL,
  `admin_password` varchar(128) NOT NULL,
  `admin_view_password` varchar(128) NOT NULL,
  `admin_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_username`, `admin_password`, `admin_view_password`, `admin_level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainmenu`
--

CREATE TABLE `mainmenu` (
  `seq` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `active_menu` varchar(50) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `menu_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainmenu`
--

INSERT INTO `mainmenu` (`seq`, `idmenu`, `nama_menu`, `active_menu`, `icon_class`, `link_menu`, `menu_akses`, `entry_date`, `entry_user`) VALUES
(9, 9, 'Beranda', '', 'fas fa-home fa-2x', 'Admin', '', '2020-04-18 06:02:37', NULL),
(19, 19, 'Kontak', '', 'fa fa-phone fa-2x', 'Kontak', '', '2020-04-21 17:04:45', NULL),
(27, 27, 'Setting Ukuran', '', 'fas fa-cogs fa-2x', 'Setting_ukuran', '', '2020-03-13 20:53:59', NULL),
(21, 21, 'Setting Title', '', 'fas fa-wrench fa-2x', 'Setting_title', '', '2020-03-13 20:51:06', NULL),
(22, 22, 'Setting User', '', 'fas fa-user fa-2x', 'setting_user', '', '2020-03-13 20:51:10', NULL),
(10, 10, 'Slider', '', 'fas fa-sliders-h fa-2x', 'C_slider', '', '2020-04-23 21:07:49', NULL),
(11, 11, 'Tentang', '', 'fas fa-info fa-2x', 'C_tentang', '', '2020-04-24 11:39:14', NULL),
(12, 12, 'Properti', '', 'fas fa-th fa-2x', 'C_properti', '', '2020-04-24 12:51:08', NULL),
(13, 13, 'Galeri', '', 'fas fa-images fa-2x', 'C_galeri', '', '2020-04-24 14:25:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_beranda`
--

CREATE TABLE `meta_beranda` (
  `id_meta_beranda` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_beranda`
--

INSERT INTO `meta_beranda` (`id_meta_beranda`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Berandae', 'keyworde', 'desce', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_kontak`
--

CREATE TABLE `meta_kontak` (
  `id_meta_kontak` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_kontak`
--

INSERT INTO `meta_kontak` (`id_meta_kontak`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Kontake', 'keyworde', 'yryee', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_produk`
--

CREATE TABLE `meta_produk` (
  `id_meta_produk` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_produk`
--

INSERT INTO `meta_produk` (`id_meta_produk`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Produke', 'keyworde', 'oooooe', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_struktur`
--

CREATE TABLE `meta_struktur` (
  `id_meta_struktur` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_struktur`
--

INSERT INTO `meta_struktur` (`id_meta_struktur`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Strukture', 'keyworde', 'alale', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_ukuran`
--

CREATE TABLE `setting_ukuran` (
  `id_setting_ukuran` int(11) NOT NULL,
  `ukuran_foto_slider` char(15) NOT NULL,
  `ukuran_foto_tentang` char(15) NOT NULL,
  `ukuran_foto_produk` char(15) NOT NULL,
  `ukuran_foto_galeri` char(15) NOT NULL,
  `footer` char(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_ukuran`
--

INSERT INTO `setting_ukuran` (`id_setting_ukuran`, `ukuran_foto_slider`, `ukuran_foto_tentang`, `ukuran_foto_produk`, `ukuran_foto_galeri`, `footer`) VALUES
(1, '1000x500', '1000x1000', '2000x2000', '400x500', '200x200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id_sub` int(11) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `mainmenu_idmenu` int(11) NOT NULL,
  `active_sub` varchar(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `link_sub` varchar(50) NOT NULL,
  `sub_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `mainmenu_idmenu`, `active_sub`, `icon_class`, `link_sub`, `sub_akses`, `entry_date`, `entry_user`) VALUES
(1, 'Entry User', 8, '', '', 'User', '', '2017-10-18 21:28:25', NULL),
(2, 'Kategori Produk', 4, '', '', 'Produk', '', '2017-10-18 21:34:17', NULL),
(3, 'Produk', 4, '', '', 'Produk/detail', '', '2017-10-18 21:34:26', NULL),
(4, 'Album', 5, '', '', 'Gallery', '', '2017-10-18 21:34:34', NULL),
(5, 'Foto', 5, '', '', 'Gallery/foto', '', '2017-10-18 21:34:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_akses_mainmenu`
--

CREATE TABLE `tab_akses_mainmenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_akses_mainmenu`
--

INSERT INTO `tab_akses_mainmenu` (`id`, `id_menu`, `id_level`, `c`, `r`, `u`, `d`, `entry_date`, `entry_user`) VALUES
(1, 1, 1, NULL, 1, NULL, NULL, '2017-09-26 20:49:01', 'direktur'),
(8, 7, 1, 0, 1, 0, 0, '2017-10-28 00:52:10', ''),
(9, 9, 1, 0, 1, 0, 0, '2018-01-21 02:05:57', ''),
(10, 10, 1, 0, 1, 0, 0, '2018-12-28 08:29:38', ''),
(11, 11, 1, 0, 1, 0, 0, '2018-12-28 08:29:38', ''),
(12, 12, 1, 0, 1, 0, 0, '2018-12-28 08:29:38', ''),
(13, 13, 1, 0, 1, 0, 0, '2019-01-09 09:27:14', ''),
(14, 14, 1, 0, 1, 0, 0, '2019-01-10 08:43:47', ''),
(15, 15, 1, 0, 1, 0, 0, '2019-01-10 12:59:44', ''),
(23, 16, 1, 0, 1, 0, 0, '2019-02-08 08:00:02', ''),
(24, 17, 1, 0, 1, 0, 0, '2020-01-23 23:30:13', ''),
(25, 18, 1, 0, 1, 0, 0, '2020-01-23 23:30:13', ''),
(26, 19, 1, 0, 1, 0, 0, '2020-03-13 20:46:38', ''),
(27, 25, 1, 0, 1, 0, 0, '2020-02-24 10:49:48', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_akses_submenu`
--

CREATE TABLE `tab_akses_submenu` (
  `id` int(11) NOT NULL,
  `id_sub_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_akses_submenu`
--

INSERT INTO `tab_akses_submenu` (`id`, `id_sub_menu`, `id_level`, `c`, `r`, `u`, `d`, `entry_date`, `entry_user`) VALUES
(1, 1, 1, 0, 1, 0, 0, '2017-10-14 21:45:40', ''),
(2, 2, 1, 0, 1, 0, 0, '2017-10-17 02:59:02', ''),
(3, 3, 1, 0, 0, 0, 0, '2017-10-19 08:12:32', ''),
(4, 4, 1, 0, 1, 0, 0, '2017-10-17 02:59:16', ''),
(5, 5, 1, 0, 0, 0, 0, '2017-10-19 08:12:33', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_beranda`
--

CREATE TABLE `tb_beranda` (
  `id_beranda` int(11) NOT NULL,
  `file_slider1` text NOT NULL,
  `file_slider2` text NOT NULL,
  `file_slider3` text NOT NULL,
  `file_slider4` text NOT NULL,
  `keyword` text NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `judul_tentang` text NOT NULL,
  `deskripsi_tentang` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_beranda`
--

INSERT INTO `tb_beranda` (`id_beranda`, `file_slider1`, `file_slider2`, `file_slider3`, `file_slider4`, `keyword`, `jumlah_produk`, `judul_tentang`, `deskripsi_tentang`) VALUES
(1, 'spada.jpg', 'bergabung.jpg', 'materi.jpg', '1.jpg', 'Aptisi', 0, 'Selamat Datang Di SPADA APTISI JATIM', '<p>Official Site APTISI Pusat merupakan website utama dari Asosiasi Perguruan Tinggi Swasta Indonesia. Tidak berbeda dengan official site lainnya untuk menyajikan informasi berupa sebuah berita maupun artikel, official site APTISI Pusat memiliki sebuah artikel, dan saat ini sudah tercatat bahwa terdapat 360 postingan dengan total view mencapai 147238 views dalam official site APTISI Pusat. User yang sering aktif posting berita yaitu Resti Rahmawati dengan total posting sebanyak 117 Post. Terbukti pula bahwa official site APTISI sudah dikenal oleh seluruh anggota, mahasiswa maupun masyarakat luas. Mengapa tidak, subscriber official site APTISI saat ini tercatat sebanyak 288 subscriber. Dalam official site ini tidak hanya untuk melihat berita atau artikel tetapi bisa berkomunkasi dengan sesama pengguna lain dan terbukti dengan adanya 310 comment. Mari kita tingkatkan kualitas official site APTISI Pusat dengan menjadi subscriber dan memberikan feedback berupa comment pada setiap artikel yang ada</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `foto_galeri`) VALUES
(1, '10.jpg'),
(2, '11.jpg'),
(3, '12.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL,
  `deskripsi_kontak` text NOT NULL,
  `script_embed_code` text NOT NULL,
  `email_kontak` varchar(128) NOT NULL,
  `nomor_kontak` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kontak`
--

INSERT INTO `tb_kontak` (`id_kontak`, `deskripsi_kontak`, `script_embed_code`, `email_kontak`, `nomor_kontak`) VALUES
(1, '<p><span>Alamat : Jl. Kamal Raya Outer Ring Road Komplek Rukan Malibu Blok I No.75, Cengkareng, Jakarta Barat, DKI Jakarta, RT.7/RW.14, Cengkareng Tim., Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11730</span><br /><span>Hari : Senin &ndash; Jumat</span><br /><span>Jam Kerja : 09:00 &ndash; 16:00</span></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d44704.912996884916!2d112.95773565647879!3d-7.9582352167973385!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd636fe48e2b08b%3A0x19b75487127bd0c6!2sGn.%20Bromo!5e0!3m2!1sid!2sid!4v1587159508186!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'elecomp.sh@gmail.com', '0821 3122 2331');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_properti`
--

CREATE TABLE `tb_properti` (
  `id_properti` int(11) NOT NULL,
  `foto_properti` text NOT NULL,
  `nama_properti` text NOT NULL,
  `deskripsi_properti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_properti`
--

INSERT INTO `tb_properti` (`id_properti`, `foto_properti`, `nama_properti`, `deskripsi_properti`) VALUES
(1, '2.jpg', 'TYPE 36', 'Vestibulum pulvinar lobortis lorem lectus pretium non.'),
(2, '3.jpg', 'TYPE 48', 'Vestibulum pulvinar lobortis lorem lectus pretium non.'),
(3, '4.jpg', 'TYPE 56', 'Vestibulum pulvinar lobortis lorem lectus pretium non.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL,
  `foto_slider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `foto_slider`) VALUES
(1, 'banner1.jpg'),
(2, 'banner2.jpg'),
(3, 'banner3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tentang`
--

CREATE TABLE `tb_tentang` (
  `id_tentang` int(11) NOT NULL,
  `foto_tentang` text NOT NULL,
  `nama_depan` varchar(128) NOT NULL,
  `nama_belakang` varchar(128) NOT NULL,
  `deskripsi_tentang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tentang`
--

INSERT INTO `tb_tentang` (`id_tentang`, `foto_tentang`, `nama_depan`, `nama_belakang`, `deskripsi_tentang`) VALUES
(1, '61d9044795389101d65a746367a0e356.jpg', 'Royal Hit', 'Property', '<p>Kami merupakan Perusahaan Developer Perumahan yang saat ini sedang membangun Sisir Regency. Sisir Regency merupakan salah satu perumahan Premium di Kabupatan Malang. <br />Kami merupakan Perusahaan Developer Perumahan yang saat ini sedang membangun Sisir Regency. Sisir Regency merupakan salah satu perumahan Premium di Kabupatan Malang. <br />Kami merupakan Perusahaan Developer Perumahan yang saat ini sedang membangun Sisir Regency. Sisir Regency merupakan salah satu perumahan Premium di Kabupatan Malang.</p>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`seq`);

--
-- Indeks untuk tabel `meta_beranda`
--
ALTER TABLE `meta_beranda`
  ADD PRIMARY KEY (`id_meta_beranda`);

--
-- Indeks untuk tabel `meta_kontak`
--
ALTER TABLE `meta_kontak`
  ADD PRIMARY KEY (`id_meta_kontak`);

--
-- Indeks untuk tabel `meta_produk`
--
ALTER TABLE `meta_produk`
  ADD PRIMARY KEY (`id_meta_produk`);

--
-- Indeks untuk tabel `meta_struktur`
--
ALTER TABLE `meta_struktur`
  ADD PRIMARY KEY (`id_meta_struktur`);

--
-- Indeks untuk tabel `setting_ukuran`
--
ALTER TABLE `setting_ukuran`
  ADD PRIMARY KEY (`id_setting_ukuran`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indeks untuk tabel `tab_akses_mainmenu`
--
ALTER TABLE `tab_akses_mainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_akses_submenu`
--
ALTER TABLE `tab_akses_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_beranda`
--
ALTER TABLE `tb_beranda`
  ADD PRIMARY KEY (`id_beranda`);

--
-- Indeks untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `tb_properti`
--
ALTER TABLE `tb_properti`
  ADD PRIMARY KEY (`id_properti`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `tb_tentang`
--
ALTER TABLE `tb_tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_properti`
--
ALTER TABLE `tb_properti`
  MODIFY `id_properti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_tentang`
--
ALTER TABLE `tb_tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
