-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2023 pada 14.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testlaravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bimouts`
--

CREATE TABLE `bimouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` bigint(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `kodeunik` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jeniskelamin` enum('PRIA','WANITA') DEFAULT 'PRIA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bimouts`
--

INSERT INTO `bimouts` (`id`, `nik`, `nama`, `jabatan`, `kodeunik`, `created_at`, `updated_at`, `jeniskelamin`) VALUES
(7, 1234567895, 'wanita update', 'staf update', '38a5c2deb9cb5e1bebeaa663ebfa9a62caea1f07b645d2e584f17aa2e3a0d875', '2023-11-18 10:55:34', '2023-12-07 20:48:24', 'WANITA'),
(9, 1234567897, 'bimo wahyu 7', 'Manager', 'dbcb6ca03eabca20675988c12cb768461762531d2061f8669ec78a09073deab3', '2023-11-18 10:55:34', '2023-11-18 10:55:34', 'PRIA'),
(10, 1234567898, 'bimo wahyu 8', 'Manager', '7c11b97323b1625cace4da3ebda08a8d873626d06652393050b0a9deae1826dc', '2023-11-18 10:55:34', '2023-11-18 10:55:34', 'PRIA'),
(13, 3374040807030001, 'noname', 'Freelance', 'fbbcfd11ef28dac4af1d962d78d7db9f746973948cbeb401c532a68c1e04db56', '2023-12-06 09:32:39', '2023-12-06 09:32:39', 'PRIA'),
(15, 73262899, 'testupdate1', 'magang', 'eb63be731473a6e58fdca099b468b6149f6cda9f3be0c770814a5d383570c762', '2023-12-06 09:33:58', '2023-12-06 09:33:58', 'PRIA'),
(17, 8888888888888, 'testupdate', 'staf', '1c9ff28a05b45acbbf7e9bdbffe2bb6b1cf778e1ceca2262f9b562f898812efc', '2023-12-06 17:51:10', '2023-12-06 17:51:31', 'WANITA'),
(19, 98887701, 'test', 'staf update', '3f13937459093e17694a40f6bf706f1e725a31c2cfa638d48b32d093c25f9742', '2023-12-06 18:01:19', '2023-12-06 18:01:39', 'WANITA'),
(21, 902919209109, 'naia', 'staf', '5bd17379395abca318866154d68a3c539967e12b494c382c6dd6be7e68fd92db', '2023-12-06 19:12:12', '2023-12-06 19:12:12', 'PRIA'),
(24, 219089237490, 'Novi', 'Manager update', '35647b3b4d16c9abdf4d0d26e5ca956162f58a67c56b9aed8d0ad49bdaf2b576', '2023-12-06 19:18:18', '2023-12-06 19:18:40', 'WANITA'),
(27, 2929010380923, 'nana', 'magang', 'b2e23d56ba6483c4d3448869f4510feee48b7b4ecd5daa08e4c493e1cd443060', '2023-12-06 19:30:44', '2023-12-06 19:30:44', 'WANITA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_fakultas` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id`, `created_at`, `updated_at`, `nama_fakultas`, `deleted_at`) VALUES
(1, NULL, '2023-12-04 08:52:21', 'FTIK', '2023-12-04 08:52:21'),
(2, '2023-12-04 08:44:17', '2023-12-05 09:47:51', 'SIPIL update 1', NULL),
(3, '2023-12-05 09:25:35', '2023-12-05 09:25:48', 'FTIK update', NULL),
(4, '2023-12-16 05:53:17', '2023-12-16 05:53:17', 'HUKUM', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(7, '2023_10_14_093414_create_sessions_table', 2),
(8, '2023_10_14_095355_create_mahasiswa_table', 2),
(10, '2023_10_28_094559_tambah_role', 3),
(20, '2023_11_18_165409_bimo_uts', 4),
(21, '2023_11_18_174938_jeniskelamin', 5),
(23, '2023_11_19_025000_uts_acha', 6),
(24, '2023_11_19_030926_deskripsi', 7),
(25, '2023_11_25_092249_create_fakultas_table', 8),
(26, '2023_12_02_093622_create_prodis_table', 9),
(28, '2023_12_09_090936_create_pendaftarans_table', 10),
(31, '2023_12_19_085950_mst_buku', 11),
(32, '2023_12_19_090030_pinjam', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_anggota`
--

CREATE TABLE `mst_anggota` (
  `id_anggota` bigint(20) UNSIGNED NOT NULL,
  `nim` char(13) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `prodi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_buku`
--

CREATE TABLE `mst_buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftarans`
--

CREATE TABLE `pendaftarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `ijazah_url` varchar(255) NOT NULL,
  `prodi_id` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggal_pendaftaran` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` bigint(20) UNSIGNED NOT NULL,
  `id_anggota` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodis`
--

CREATE TABLE `prodis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `fakultas_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prodis`
--

INSERT INTO `prodis` (`id`, `created_at`, `updated_at`, `nama_prodi`, `fakultas_id`, `deleted_at`) VALUES
(1, '2023-12-02 09:43:00', '2023-12-05 09:43:10', 'sistem informasi', 1, '2023-12-05 09:43:10'),
(2, '2023-12-04 12:56:02', '2023-12-04 12:56:02', 'SIPIL', 2, NULL),
(3, '2023-12-05 09:43:25', '2023-12-05 09:43:25', 'teknik infotmatika', 3, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0Nye6nIOmjbA1ZA4vTy0ahJCx8H7OhJwLl2vMHRS', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibHk4SmFaVzRrc0FYcmJiZmVFYUpiZ2dpV0tWdjVOeHRyUzJwa3lnTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9idWt1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR2V2s3YUQuREllbEVzVUU2c3V4T1YuUllCclIuaU5NVGFJVnBSUjB3Y1Y5TVgvTmhVazlhaSI7fQ==', 1702978435),
('8S4CYxkhs7uO9vtXsyp1DNA2HB0YvAJfsdCwTmVl', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOG5sMThVaFFUbW55MVBUeDR2MWNZMlVHbVNvTGg3RkxOQUVhcUpNOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9waW5qYW0vY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR2V2s3YUQuREllbEVzVUU2c3V4T1YuUllCclIuaU5NVGFJVnBSUjB3Y1Y5TVgvTmhVazlhaSI7fQ==', 1702993511);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('UNIVERSITAS','CAMABA') NOT NULL DEFAULT 'CAMABA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(3, 'Yanto Mulyanto', 'yanto@tomo.com', '2023-11-11 02:38:13', '$2y$10$dkaI9WB95.hIV8JDrBzxiubdWiWe6FpI.UM/SmXy/O7OKJKdwO/Cu', NULL, NULL, NULL, '3FmJNKUVej3xyGd8Y0aNToOAyaDe8hbFsUIGjnUxtepn3gRjX6ltVBafk7WQ', NULL, NULL, 'CAMABA'),
(4, 'Xinta Kuxinta', 'xinta@tomo.com', '2023-11-11 02:38:13', '$2y$10$OXO2PUOnToQI.xkqt6g7EucYvjQa4RU6emnRhrTPJDEFTjKnZ5JtW', NULL, NULL, NULL, 'qiJfdb9J7H', NULL, NULL, 'CAMABA'),
(5, 'administrator', 'administrator@tomo.com', '2023-11-11 02:38:13', '$2y$10$vWk7aD.DIelEsUE6suxOV.RYBrR.iNMTaIVpRR0wcV9MX/NhUk9ai', NULL, NULL, NULL, '5OSvkJVDdDltdXY6aYGRPfKhmezoqrORVwbqttjxCN7Nj7d75L7GImDr1p3g', NULL, NULL, 'UNIVERSITAS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bimouts`
--
ALTER TABLE `bimouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bimouts_nik_unique` (`nik`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mst_anggota`
--
ALTER TABLE `mst_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `mst_buku`
--
ALTER TABLE `mst_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pendaftarans`
--
ALTER TABLE `pendaftarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `prodis`
--
ALTER TABLE `prodis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bimouts`
--
ALTER TABLE `bimouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `mst_anggota`
--
ALTER TABLE `mst_anggota`
  MODIFY `id_anggota` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mst_buku`
--
ALTER TABLE `mst_buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pendaftarans`
--
ALTER TABLE `pendaftarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id_pinjam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prodis`
--
ALTER TABLE `prodis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
