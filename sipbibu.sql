-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2024 pada 17.41
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipbibu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `antepartum`
--

CREATE TABLE `antepartum` (
  `id` int(11) NOT NULL,
  `pernyataan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `antepartum`
--

INSERT INTO `antepartum` (`id`, `pernyataan`) VALUES
(1, '1. Merasa malu gerakan bayi dalam rahim terlihat dari pakaian saya'),
(2, '2. Pergerakan bayi di dalam rahim menyakitkan'),
(3, '3. Gerakan bayi dalam rahim mengganggu'),
(4, '4. Tidak siap menerima tanggungjawab menjadi ibu'),
(5, '5. Menyapa calom bayi dengan mengucapkan kata-kata yang baik'),
(6, '6. Bahagia setiap merasakan gerakan bayi di dalam rahim'),
(7, '7. Merasa senang merangsang bayi yang di dalam rahim melalui usapan pada perut saya'),
(8, '8. Bahagia saat bayi dalam rahim merespon usapan saya melalui perut'),
(9, '9. Merasa tenang didampingi orangtua selama hamil'),
(10, '10. Senang dengan nama pilihan orangtua buat calon bayi saya'),
(11, '11. Bahagia orangtua memberi nama buat calon bayi saya'),
(12, '12. Bahagia mendapat bantuan dari orangtua selama hamil'),
(13, '13. Kepercayaan orangtua membuat saya percaya diri menjadi seorang ibu'),
(14, '14. Bahagia keluarga menerima calon bayi saya'),
(15, '15. Senang suami memilihkan nama buat calon bayi saya'),
(16, '16. Senang diperhatikan orangtua saat hamil ini'),
(17, '17. Bahagia suami membantu saya selaman hamil'),
(18, '18. Senang suami merawat saya selama hamil'),
(19, '19. Kasih sayang orangtua menguatkan saya menghadapi persalinan'),
(20, '20. Stres melaksanankan aturan orangtua selama hamil'),
(21, '21. Merasa tertekan terhadap nasehat orangtua dalam merawat kehamilan'),
(22, '22. Stres aktivitas dibatasi selama hamil'),
(23, '23. Saya marah suami mengatakan saya belum mampu menjadi seorang ibu\r\n\r\n'),
(24, '24. Sedih tidak dapat melaksanakan upacara penyambutan bayi saat hamil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `penulis` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cover` varchar(255) NOT NULL,
  `pendahuluan` text NOT NULL,
  `isi` text NOT NULL,
  `penutup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `kategori`, `judul`, `penulis`, `created_at`, `updated_at`, `cover`, `pendahuluan`, `isi`, `penutup`) VALUES
(12, 'Kesehatan Fisik', '6 Cara Mengurangi Stres di Kantor Bagi Ibu Hamil', '© 2024 Chubb', '2024-06-10 14:45:59', '2024-06-10 14:45:59', '1718030759_7d1b81eda224d5b833c6.jpeg', 'Apakah Anda merasa pekerjaan di kantor memberikan tekanan cukup berat bagi kondisi mental? Lingkungan kantor yang kurang kondusif seperti adanya intrik dengan atasan atau rekan kerja yang tidak suportif dapat memengaruhi kesehatan mental. Tingkat stres di kantor akan naik semakin tinggi jika Anda sedang dalam kondisi hamil.\r\n\r\nSebagai calon Ibu, Anda tentu tidak ingin stres memengaruhi kondisi bayi dalam kandungan. Bila Anda mulai sering mengalami gangguan tidur atau sakit perut yang berlebihan, maka hal tersebut merupakan tanda bahwa tubuh Anda sedang terkena stres cukup berat.\r\n\r\nMengatasi stres sekaligus mempersiapkan persalinan memang terdengar sulit dilakukan. Namun, Anda bisa mencoba beberapa tips sederhana berikut untuk meringankan beban mental sekaligus menjaga kesehatan kehamilan.', 'Pertama, Buat To-Do List untuk Pekerjaan Kantor,\r\nMembuat daftar pekerjaan yang harus dilakukan merupakan hal sederhana yang membantu Anda menentukan prioritas pekerjaan. Pekerjaan yang banyak dapat membuat Anda kebingungan jika harus diselesaikan sekaligus. Dengan memiliki to-do list, Anda dapat menentukan pekerjaan mana yang harus dibereskan lebih dahulu untuk meringankan beban pikiran.\r\n\r\nKedua, Sediakan Air Mineral di Meja Kerja,\r\nMengonsumsi cukup air mineral sangat diperlukan bagi ibu hamil demi memperkecil kemungkinan dehidrasi. Anda dapat menyediakan botol air minum berukuran besar di meja agar tidak repot balak-balik mengisi air. Gunakan alarm di smartphone Anda sebagai pengingat minum air.\r\n\r\nKetiga, Istirahat Cukup, Mengurus pekerjaan di kantor dalam kondisi hamil dapat melelahkan fisik. Anda perlu memiliki istirahat tidur cukup agar kondisi fisik Anda tidak memengaruhi tingkat stres. Bicarakan pada atasan di kantor dan rekan kerja Anda untuk mengatur ulang beban pekerjaan sementara. Anda juga dapat berkompromi pada keluarga atau pasangan di rumah untuk membagi tugas rumah.\r\n\r\nKeempat, Konsumsi Makanan Sehat Ibu Hamil, \r\nSeperti yang disebutkan sebelumnya, kesehatan fisik dan mental saling berhubungan. Anda perlu menjaga kondisi fisik dengan mengkonsumsi makanan sehat. Hindari junk food dan gaya hidup kurang sehat lain seperti minum alkohol dan merokok selama hamil. Pastikan agar Anda mendapat asupan gizi yang cukup agar tetap fit sekaligus menjaga kesehatan bayi dalam kandungan.\r\n\r\nKelima, Hindari Mengambil Keputusan Besar,\r\nKeputusan besar yang memengaruhi kehidupan sehari-hari Anda dapat berdampak pada kondisi mental. Sebagai contoh, keputusan untuk pindah rumah atau mengganti karir dapat memberikan beban tambahan karena Anda perlu beradaptasi dengan suasana atau lingkungan hidup baru. Usahakan agar Anda tidak melakukan perubahan besar tersebut selama masa kehamilan.\r\n\r\nKeenam, Tetaplah Bersosialisasi, Bersosialisasi dengan teman dan rekan kerja tetap menjadi hal yang penting untuk meringankan beban pikiran. Selain itu, Anda dapat berbagi pikiran dan konsultasi masalah-masalah seputar kehamilan, anak, atau pekerjaan. Bisa jadi mereka dapat memberikan solusi yang membantu meringankan masalah Anda.', 'Demikianlah beberapa tips mengatasi stres dan menjaga kesehatan bagi ibu hamil di kantor. Pastikan juga Anda terbuka pada pasangan bila mengalami masalah di kantor. Anda perlu mengendalikan stres dengan baik demi menjaga kondisi kandungan maupun diri Anda sendiri.'),
(13, 'Kesehatan Fisik', '3 Olahraga Ringan yang Cocok untuk Ibu Hamil, Bisa Mengurangi Stres Lho', 'Rahil Iliya Gustian | liputan6.com', '2024-06-10 15:02:29', '2024-06-10 15:02:29', '1718031749_4628c5282702462601f2.png', 'Liputan6.com, Jakarta Olahraga dapat bermanfaat bagi kesehatan selama masa kehamilan. Seseorang yang berolahraga secara teratur selama kehamilan juga dapat mengurangi kemungkinan melakukan persalinan sesar, menurut American College of Obstetricians and Gynecologists (ACOG).\r\n\r\nOlahraga aerobik, atau kardio, cenderung menjadi yang paling bermanfaat. Jenis olahraga ini membutuhkan jantung untuk memompa darah beroksigen ke otot-otot yang sedang digunakan. Latihan ini juga melibatkan penggunaan kelompok otot besar, seperti kaki, untuk jangka waktu yang lama.\r\n\r\nMenurut Medical News Today, selama trimester pertama kehamilan ibu hamil perlu mengusahakan membangun kebiasaan olahraga yang baik secara bertahap. Frekuensi olahraga untuk ibu hamil akan tergantung pada seberapa aktif mereka sebelum hamil.\r\n\r\nSebaiknya pilihlah olahraga yang tidak terlalu berat seperti jalan kaki, yoga, dan berenang. Ibu hamil juga harus berkonsultasi dengan dokter sebelum memulai latihan atau rutinitas olahraga baru.\r\n\r\nPusat Pengendalian dan Pencegahan Penyakit (CDC) Amerika Serikat menyarankan agar orang hamil melakukan setidaknya 150 menit olahraga dengan intensitas sedang dan berdampak rendah setiap minggunya.\r\n\r\nCDC merekomendasikan agar seseorang melakukan lima kali olahraga selama 30 menit dalam seminggu. Olahraga teratur dikaitkan dengan berbagai manfaat kesehatan bagi ibu hamil, antara lain : Meningkatkan kulitas tidur, Meningkatkan suasana hati, Mengurangi stres dan kecemasan, Persalinan lebih cepat, \r\nMengurangi risiko sembelit dan sakit punggung, Berkurangnya risiko diabetes gestasional dan hipertensi akibat kehamilan, Peningkatan kemampuan untuk mempertahankan berat badan yang moderat selama dan setelah kehamilan.', 'Pertama, Jalan Kaki\r\nDokter Andrew Putranagara, SpOG dari RSUD Cilincing, mengatakan bahwa berjalan kaki merupakan olahraga ringan yang baik untuk ibu hamil.\r\n\r\n“Jalan kaki di tempat yang teduh, 15 sampai 30  menit itu bagus,” katanya dalam siaran langsung (live) di akun Instagram Dinas Kesehatan DKI Jakarta pada Kamis, 14 Maret 2024.\r\n\r\nMengutip dari Medical News Today, berjalan di atas permukaan yang datar dan rata adalah salah satu bentuk olahraga yang paling lembut dan berdampak rendah, sehingga ideal untuk ibu hamil. Berjalan kaki di lingkungan yang tenang dan alami juga dapat membantu meningkatkan kesehatan dan relaksasi.\r\n\r\nKedua, Berenang\r\nOlahraga ringan untuk ibu hamil selanjutnya yaitu berenang. Andrew paling merekomendasikan olahraga ringan ini untuk dilakukan pada ibu hamil, karena berenang dapat meminimalisir risiko jantung.\r\n\r\n“Berenang itu paling oke, karena pertama resiko jantung pada saat berenang tentunya minimal,” kata Andrew.\r\n\r\nSelain itu, berenang juga bisa mengurangi stress dan panas tubuh. “Berenang juga bisa mengurangi stress dan mengurangi panas tubuh. Boleh dilakukan selama 30 menit kalu bisa,” tambahnya.\r\n\r\nMengutip dari laman ayosehat.kemenkes.go.id, massa tubuh cenderung berkurang saat berada di dalam air, sehingga olahraga renang memungkinkan ibu hamil untuk bergerak tanpa mengeluarkan banyak tenaga untuk menopang tubuh. Berenang juga sangat bagus untuk paru-paru dan jantung.\r\n\r\nKetiga, Yoga merupakan senam kehamilan yang baik dilakukan karena yoga dapat melatih pernapasan, dan juga melatih otot-otot untuk persiapan persalinan.\r\n\r\n“Senam yoga hamil yang juga bisa dilakukan bersama suami misalnya, itu juga sangat baik. Terutama untuk melatih otot pernafasan, fokus, pada saat nanti persalinan,” jelas Andrew.\r\n\r\nAndrew menambahkan bahwa yoga juga bermanfaat untuk persalinan nantinya, karena yoga mempersiapkan otot-otot terutama otot panggul. Mengutip dari Medical News Today, melakukan yoga memungkinkan orang untuk meregangkan dan memperkuat tubuh mereka dengan cara yang lembut.', 'Demikianlah beberapa tips atau jenis olahraga untuk menjaga kesehatan bagi ibu hamil. Pastikan juga Anda terbuka pada pasangan bila mengalami masalah. Anda perlu mengendalikan stres dengan baik demi menjaga kondisi kandungan maupun diri Anda sendiri.'),
(14, 'Merawat Bayi', 'Hal yang Wajib Ibu Perhatikan Saat Merawat Bayi Baru Lahir', 'Wings Group', '2024-06-11 03:45:01', '2024-06-11 03:45:01', '1718077501_1cde765d253a753e8ead.png', 'Ibu dan Ayah pasti lagi harap-harap cemas dan nggak sabar menunggu kelahiran Si Kecil. Memang persiapan perawatan bayi yang baru lahir harus diperhatikan sejak sebelum Si Kecil lahir, sebab pasti ada perawatan tertentu yang harus Ibu dan Ayah perhatikan di awal-awal kehidupannya! Dan ini beberapa cara merawat bayi baru lahir yang bisa Ibu dan Ayah simak!', 'Pertama, Lakukan Skin to Skin\r\nSkin to Skin atau kontak kulit antara Ibu dan Si Kecil memiliki manfaat untuk memberikan kehangatan alami pada bayi dan menjaga suhu tubuhnya tetap stabil.\r\n\r\nSelain itu hal ini juga melatih bayi untuk mencari puting Ibu di saat awal mulai menyusui. ASI pertama yang didapat oleh bayi disebut kolostrum.\r\n\r\nSetelah satu jam berpelukan Si Kecil belum mulai menyusui, Mama dapat mendekatkan bayi ke puting untuk melanjutkan prosesnya selama sekitar 30 menit sampai 1 jam. \r\n\r\nKedua, Menjaga Kebersihan Tali Pusar\r\nCara merawat bayi baru lahir juga bisa dimulai dengan menjaga kebersihan tali pusarnya. Menjaga kebersihan tali pusar menurut medis tidak perlu menggunakan jamu-jamuan, sabun pembersih atau menutupnya dengan kain kasa.\r\n\r\nKarena yang paling penting adalah menjaganya tetap kering dan bersih. Dengan cara tidak membiarkan tali pusar Si Kecil terkena basah, air seni ataupun feses.\r\n\r\nJika tali pusar basah, segera mengelapnya dengan waslap yang telah direndam dengan air bersih. Jika terdapat tanda infeksi seperti kemerahan atau bengkak atau berbau busuk dan mengeluarkan nanah, segera konsultasikan dengan dokter ya, bu! \r\n\r\nBeri ASI dengan Benar\r\nTanda-tanda Si Kecil saat lapar adalah menggenggam tangan, mencoba memasukkan tangan ke mulut, atau membuat suara ceria. Saat Ibu melihat tanda-tanda itu baiknya segera susui tanpa menunggu bayi menangis.\r\n\r\nIbu bisa memberikan ASI sesuai kebutuhan dan tidak perlu terpaku mengikuti jadwal. Biasanya, bayi akan menyusu selama 5-30 menit.\r\n\r\nSetelah menyusu, jangan lupa memberikan kenyamanan dengan menggendong bayi dan menepuk-nepuk lembut punggungnya agar Si Kecil bersendawa. \r\n\r\nPantau Perkembangan Berat Si Kecil\r\nBerat bayi yang baru lahir didominasi oleh cairan yang dibawa saat melahirkan dan akan menghilang seiring berjalannya waktu. Maka akan terjadi penurunan berat badan Si Kecil hingga 1/10 di 5 hari pertama. \r\n\r\nIbu nggak perlu panik jika berat Si Kecil tiba-tiba turun, peningkatan akan terjadi kembali di 5 hari selanjutnya. Sebab kenaikan berat badan akan terjadi bagi rata-rata bayi yang baru lahir yaitu sekitar 20-30 gram per hari hingga 1 bulan. Normalnya di 1 bulan pertama, berat Si Kecil sudah mencapai 4 kilo gram. \r\n\r\nPerhatikan Waktu &amp; Tempat Tidur Si Kecil\r\nBu, tahu nggak sih? Dalam sehari, bayi bisa tidur total hingga 20 jam. Waktunya terbagi antara tidur singkat selama 20 menit hingga tidur panjang hingga empat jam.\r\n\r\nUntuk merawat bayi yang baru lahir, penting untuk menjaga suhu kamar agar nyaman, tidak terlalu dingin atau panas, dan pastikan ada cahaya dan ventilasi yang cukup.\r\n\r\nPosisi tidur yang disarankan untuk bayi adalah telentang. Hal ini bertujuan untuk mencegah terjadinya Sindrom Kematian Mendadak (SIDS), Ma.\r\n\r\nPastikan juga bayi tidur di tempat yang datar dan tidak terlalu lembut. Hindari juga penggunaan benda-benda yang bisa menutupi area kepalanya. \r\n\r\nMemandikan Bayi\r\nSebenarnya bayi yang baru lahir tidak perlu langsung dimandikan, karena bayi masih memiliki lapisan lemak pelindung kulit. Nah, setelah 6 jam lebih, bayi baru boleh dilap dengan air hangat menggunakan waslap. \r\n\r\nJika tali pusat sudah terlepas, bayi boleh dimasukkan ke dalam bak mandi berisi air hangat. Namun, Mama perlu berhati-hati jangan sampai kepala bayi terendam dalam air. Gunakan air hangat suam-suam kuku, sabun, dan sampo khusus bayi. \r\n\r\nMemandikan bayi dengan bak mandi bisa dilakukan setelah tali pusar terlepas, tapi tetap berhati-hati ya Bu, pastikan airnya tidak terlalu panas dan memastikan sabun atau shampo khusus bayi. \r\n\r\nKenali Pola Buang Air Si Kecil\r\nBayi yang baru lahir umumnya akan buang air kecil dalam 24 jam pertama dan buang air besar dalam 48 jam pertama kehidupannya. Setelah itu, bayi akan buang air kecil sekitar 5-6 kali dan buang air besar sekitar 3-4 kali setiap harinya.\r\n\r\nUrin yang sehat pada bayi memiliki warna yang jernih dan tidak terlalu pekat. Sementara itu, feses bayi akan mengalami perubahan warna mulai dari hitam pekat pada hari pertama, kemudian menjadi kehijauan, dan akhirnya berubah menjadi kuning pada hari kelima.\r\n\r\nApabila tidak terjadi perubahan warna yang normal, Mama perlu mengevaluasi apakah ASI mencukupi dan berkonsultasi dengan dokter jika diperlukan! \r\n\r\nMengganti Popok\r\nCara merawat bayi baru lahir lainnya adalah memilih popok yang tepat dan membuat Si Kecil nyaman. Salah satunya adalah Baby Happy Body Fit Pants! Dengan fitur-fitur istimewa yang membuatnya menjadi pilihan terbaik.\r\n\r\nBaby Happy Body Fit Pants punya daya serap ekstra 70% yang dijamin membuat Si Kecil bebas dari ruam. Nggak hanya itu inovasi air through technology-nya membuat bagian teratas yang menempel pada kulit bayi terasa lembut dan empuk seperti kapas,  Si Kecil pun nyaman sepanjang hari.\r\n\r\nSelain memilih popok yang tepat, Ibu dan Ayah juga harus memilih menggunakan tisu basah atau bola kapas untuk membersihkan kulitnya dengan lembut. Dan pastikan selalu mencuci tangan dengan benar setelah mengganti popok. \r\n\r\nLengkapi Imunisasi\r\nIni yang terpenting untuk menjaga imunitas Si Kecil! Cek jadwal imunisasi di sini ya Bu! Baiknya, bayi yang baru lahir akan mendapatkan dosis pertama vaksin hepatitis B dalam waktu 24 jam setelah lahir. Kemudian, setelah 1-2 bulan, ia akan mendapatkan vaksin hepatitis B dosis kedua. Jadi jangan lupa catat jadwal imunisasinya ya, Bu, agar Si Kecil terlindungi sepenuhnya!', 'Itu dia beberapa hal penting yang harus Ibu dan Ayah perhatikan dari cara merawat bayi baru lahir. Semoga informasi yang diberikan bisa bikin Baby Happy, Moms Happy! '),
(15, 'Baby Blues', 'Mengatasi Baby Blues: Cara Terbaik untuk Mendukung Ibu Baru', 'Bahana | Radar Jogja', '2024-06-11 03:51:58', '2024-06-11 03:51:58', '1718077918_be5ca7c053b335c49897.png', 'RADAR JOGJA - Pada suatu peristiwa yang baru-baru ini viral, seorang ibu baru diduga mengalami baby blues syndrome hampir saja melakukan tindakan yang mengerikan dengan hampir membuang bayinya di Stasiun Pasar Minggu. Keberuntungan bagi sang ibu, petugas keamanan yang sigap berhasil menggagalkan rencananya, mencegah tragedi yang tidak terbayangkan.\r\n\r\nOleh karena itu, sebagai edukasi mari kita ulas mengenai baby blues syndrome.\r\n\r\nBaby blues adalah pengalaman emosional yang umum dialami oleh banyak ibu baru setelah melahirkan. Meskipun kondisi ini seringkali sementara dan normal, penting bagi keluarga dan teman-teman untuk tahu bagaimana meresponsnya dengan bijak dan mendukung ibu yang mengalaminya.\r\n\r\nApa itu Baby Blues?\r\n\r\nBaby blues adalah gejala emosional yang muncul dalam beberapa hari hingga beberapa minggu setelah melahirkan. Gejalanya bisa berupa perasaan sedih, kecemasan, mudah marah, serta perubahan suasana hati yang cepat. Gejala ini biasanya muncul karena perubahan hormon dan ketidakpastian yang terkait dengan menjadi ibu baru.', 'Cara Tepat Merespons Ibu dengan Gejala Baby Blues:\r\n\r\nPertama, Dengarkan dengan Empati: Yang paling penting adalah mendengarkan dengan penuh perhatian saat ibu berbicara tentang perasaannya. Biarkan dia merasa didengar dan dipahami. \r\nKedua, Tawarkan Dukungan Emosional: Berikan dukungan emosional dengan memberikan ucapan penyemangat dan memahami bahwa gejalanya adalah hal yang normal setelah melahirkan.\r\nKetiga, Ajak Bicara dengan Lembut: Saat berbicara dengan ibu yang mengalami baby blues, pastikan berbicara dengan lembut dan penuh pengertian. Hindari kritik atau penilaian negatif.\r\nKeempat, Bantu dengan Tugas Sehari-hari: Tawarkan bantuan dalam tugas-tugas sehari-hari, seperti mengurus bayi, memasak, atau membersihkan rumah. Ini dapat mengurangi beban ibu yang merasa kewalahan.\r\nKelima, Dorong untuk Merawat Diri Sendiri: Ingatkan ibu untuk merawat dirinya sendiri, termasuk tidur cukup, makan sehat, dan menjaga aktivitas fisik yang memadai.\r\nKeenam, Sarankan untuk Mendapatkan Bantuan Profesional: Jika gejala baby blues berlangsung lebih dari beberapa minggu atau semakin parah, sarankan ibu untuk mencari bantuan profesional dari dokter atau psikolog.\r\nKetujuh, Jangan Jatuhkan Diri Sendiri: Keluarga dan teman-teman juga perlu merawat diri mereka sendiri dan tidak merasa bersalah jika mereka tidak bisa melakukan segalanya.\r\nKedelapan, Jaga Keterhubungan: Pertahankan komunikasi dengan ibu secara teratur dan tunjukkan bahwa Anda ada di sana untuk mendukungnya dalam perjalanan ini.', 'Baby blues adalah kondisi yang umum dan dapat diatasi dengan dukungan yang tepat. Dengan respons yang bijak dan pengertian, kita dapat membantu ibu yang mengalaminya untuk pulih dan menikmati peran barunya sebagai orang tua. (Cici Jusnia)'),
(16, 'Baby Blues', 'Baby Blues: Peran Suami, Keluarga, dan Faktor Penyebabnya', 'Syifa Arrahmah', '2024-06-11 03:57:52', '2024-06-11 04:00:10', '1718078272_0c66b44647972f911ffe.png', 'NU Online Dukungan suami dan keluarga menjadi faktor penting mengatasi sindrom baby blues pada ibu pasca-melahirkan. Hal itu disebutkan oleh Pemerhati Kesehatan Mental, dr Ita Fajrin Tamim, kepada NU Online, Rabu (6/9/2023).  Banyaknya perubahan yang terjadi dalam diri perempuan, mulai dari perubahan fisik hingga psikologis setelah melahirkan menurutnya membuat beberapa ibu baru merasakan stres dan cemas lantaran ketidaksiapannya dalam menjalani peran baru. Istilah ketidaksiapan itu dikenal sebagai sindrom baby blues. Jadi, baby blues itu kondisi mental yang dialami oleh seorang ibu yang baru melahirkan. Biasanya ditandai dengan perasaan sedih yang dominan dan mood yang turun, tutur dr Ita. Kondisi ini, kata dia, menjadikan suami dan keluarga mempunyai peranan yang sangat  penting bagi ibu yang baru melahirkan, baik sebagai pencegahan terjadinya baby blues maupun untuk mengurangi gejala-gejala negatif lainnya. Suami diminta untuk lebih pengertian menghadapi fluktuasi suasana hati istrinya. Kemudian keluarga juga harus bisa mengondisikan rasa simpati dan empati, dengan cara tidak banyak berkomentar dan tidak banyak menyalahkan, tegas dr Ita.  Karena dengan begitu ibu melahirkan akan merasa nyaman dan merasa mendapat dukungan, sambung dia.', 'Faktor penyebab baby blues Pada kesempatan yang sama, Psikiater dari LKNU dr Citra Fitri Agustina juga menerangkan, baby blues adalah depresi ringan yang terjadi pada ibu-ibu dalam masa beberapa jam setelah melahirkan, sampai beberapa hari setelah melahirkan, dan kemudian dia akan hilang dengan sendirinya jika diberikan pelayanan psikologis yang baik. Ia lantas menyebutkan beberapa faktor yang menyebabkan seseorang mengalami baby blues, antara lain :\r\n\r\nPertama, Konflik antara harapan dan kenyataan Hal ini terjadi akibat dari kurangnya komunikasi antara pasangan atau keluarga. Contohnya, ketika memiliki bayi istri berharap suaminya bisa lebih pengertian dan memanjakan, tapi faktanya tidak, sehingga timbullah stres, kata dr Civi, sapaannya.  Kedua, Merasa diremehkan Selanjutnya, ucap dia, alih-alih mendapat dukungan untuk menjadi ibu baru yang baik, tak jarang justru nyinyiran yang didapatkan. Tanpa mau tau alasan dan apa yang dirasakan seorang perempuan yang sudah menjadi ibu, masyarakat langsung mengeluarkan penghakiman. Ini bahaya jelas dia. Ketiga, Merasa gagal Kedua kondisi di atas, menurutnya membuat ibu merasa gagal dan takut dalam menjalani peran baru sebagai ibu. Takut tidak bisa menjadi ibu yang baik untuk anaknya. Takut salah dalam mengasuh anak, dan lainnya, terang dia.', 'Oleh karena itu, tambah dia, diperlukan dukungan penuh dari suami maupun keluarga, saat istri mengalami perubahan suasana hati, stres, cemas, setelah persalinan. Sebab baby blues ini dipicu oleh rasa khawatir atau bingung terkait cara merawat bayi dengan baik.'),
(17, 'Kesehatan Mental', 'Sering Merasa Sedih saat Hamil, Ini Cara Mengatasinya', 'Dr. Gabriella Florencia | Halodoc', '2024-06-11 04:05:28', '2024-06-11 04:05:28', '1718078728_4280727da05893385f00.png', 'Halodoc, Jakarta -  Depresi adalah salah satu hal yang bisa terjadi setelah seorang wanita melahirkan. Di dalam dunia medis, kondisi ini disebut postpartum depression. Namun, tahukah kamu bahwa wanita juga bisa mengalami depresi seperti merasa sedih saat masih hamil? \r\n\r\nMelansir Mayo Clinic, kehamilan bisa menimbulkan dua perasaan, yakni senang dan sedih. Sekitar tujuh persen wanita akan mengalami depresi saat hamil, dan angka ini bisa semakin tinggi jumlahnya pada negara-negara berkembang. Kondisi sedih terus-menerus ini tidak boleh dianggap sepele, karena bisa saja memengaruhi perkembangan janin di dalam kandungan. Misalnya seperti kekurangan gizi akibat ibu tidak mau makan, atau semacamnya.', 'Depresi Saat Hamil\r\nDepresi, gangguan suasana hati yang menyebabkan perasaan sedih dan kehilangan minat yang terus-menerus, adalah gangguan suasana hati yang umum terjadi. Kondisi ini terjadi dua kali lebih sering pada wanita dibandingkan pada pria, dan timbulnya depresi awal memuncak selama tahun-tahun reproduksi wanita.\r\n\r\nSayangnya, depresi selama kehamilan seringkali  tidak dikenali. Beberapa gejala depresi yang perlu kamu waspadai tersebut termasuk perubahan dalam tidur, merasa lemas, nafsu makan dan libido menurun, dan beberapa mirip dengan gejala kehamilan. Akibatnya, seseorang atau dokter bisa saja mengaitkan gejala-gejala ini dengan kehamilan dan bukan akibat depresi. \r\n\r\nWanita juga mungkin enggan untuk berbicara dengan penyedia layanan kesehatan mereka tentang perubahan suasana hati selama kehamilan. Biasanya karena stigma yang terkait dengan depresi, atau fokus pada kesehatan fisik saja ketimbang kesehatan mental. \r\n\r\nAda beberapa faktor risiko depresi selama kehamilan, antara lain: \r\n\r\nKegelisahan,\r\n\r\nStres hidup,\r\n\r\nSejarah depresi,\r\n\r\nDukungan sosial yang buruk,\r\n\r\nKehamilan yang tidak diinginkan,\r\n\r\nKekerasan dalam rumah tangga. \r\n\r\nNah, kamu bisa mengenali depresi selama kehamilan dengan beberapa gejala berikut:\r\n\r\nKecemasan berlebihan tentang bayi,\r\n\r\nHarga diri rendah, seperti perasaan tidak mampu mengurus anak kelak,\r\n\r\nKetidakmampuan untuk mengalami kesenangan dari kegiatan biasanya menyenangkan,\r\n\r\nTidak patuh akan perawatan selama kehamilan,\r\n\r\nMerokok, minum alkohol atau menggunakan obat-obatan terlarang,\r\n\r\nPeningkatan berat badan yang buruk karena diet yang menurun atau tidak memadai,\r\n\r\nPikiran untuk bunuh diri.\r\n\r\nGejala ini kerap terjadi selama trimester pertama dan ketiga. Pastikan kamu selalu menceritakan kondisi yang kamu alami selama kehamilan, baik itu kepada dokter atau psikolog di Halodoc. Kamu hanya perlu menggunakan smartphone kamu untuk berbicara langsung dengan dokter atau psikolog, kapan saja dan di mana saja. ', 'Langkah Mengatasi Kesedihan Selama Hamil\r\nKehamilan membawa perubahan besar dalam hidup, terutama jika ini adalah anak pertama. Beberapa orang merasa lebih mudah untuk mengatasi perubahan ini daripada yang lain sebab setiap orang berbeda. Ada beberapa metode pengobatan yang bisa dilakukan untuk mengatasi depresi saat hamil, caranya yaitu:\r\n\r\nBergabung dengan kelompok pendukung (support group),\r\n\r\nPsikoterapi pribadi,\r\n\r\nPengobatan,\r\n\r\nTerapi ringan.\r\n\r\nAda juga beberapa langkah alami yang bisa dilakukan, seperti:\r\n\r\nOlahraga. Olahraga secara alami meningkatkan kadar serotonin dan menurunkan kadar kortisol sehingga meringankan depresi.\r\n\r\nIstirahat yang Cukup. Kurang tidur memengaruhi kemampuan tubuh dan pikiran untuk mengatasi stres. Pastikan kamu memiliki jadwal tidur yang teratur. \r\n\r\nPerbaiki Pola Makan dan Nutrisi. Banyak makanan telah dikaitkan dengan perubahan suasana hati. Makanan tinggi kafein, gula, karbohidrat olahan, aditif buatan, dan protein rendah adalah makanan penyebab masalah ini. Kamu juga bisa menambahkan asam lemak omega-3 bisa mengurangi gejala depresi pada ibu hamil. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `sumber` varchar(255) NOT NULL,
  `audio_terapis` varchar(255) NOT NULL,
  `id_kategori_audio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `audio`
--

INSERT INTO `audio` (`id`, `judul`, `deskripsi`, `sumber`, `audio_terapis`, `id_kategori_audio`) VALUES
(20, 'Panduan Relaksasi Kehamilan - Hypnobirthing', 'Halo bumil!\r\nIni adalah panduan relaksasi yang bisa Anda lakukan setiap hari, usia kehamilan berapapun.\r\n\r\nBumil tinggal mencari tempat yang aman, tenang, dan nyaman dan cari posisi yang nyaman untuk menjalani relaksasi selama 10 menit.\r\n\r\nLakukan relaksasi setiap hari, sebagai ikhtiar untuk menjalani proses kehamilan dan persalinan yang aman, nyaman, sehat, membahagiakan, dan minim trauma :)', 'Youtube | Baba Bubu Lentera', '1718099752_f2d03fea1c110448c6c4.mp4', 1),
(21, 'firmasi Kehamilan dan Persalinan (Untuk Muslim) - Tanpa Musik', 'Afirmasi Kehamilan dan Persalinan (Untuk Muslim) - Tanpa Musik', 'Youtube | Rika Widjono', '1718099957_639ae52ca743e4e0ea43.mp4', 1),
(22, 'Dengarkan Ini untuk Mengatasi Gangguan Kecemasan Berlebih (Anxiety) | Audio Therapy', 'Rasa cemas memang seringkali datang melanda tiba-tiba, dan pastinya HealthySKWAD harus bisa mengatur napas dengan baik agar peredaran darah kembali normal. Untuk membantu kamu menenagkan diri saat dirasa cemas akan datang, SKWAD Health membuat video di atas khusus untuk membantu kamu mengatur napas dan menenangkan diri, tentunya dengan instruksi yang mudah dipahami dari ahlinya langsung. Breath exercise ini bisa digunakan sebagai ‘obat penenang natural’ untuk sistem saraf. Fungsinya untuk membantu melawan anxiety dan stress dan membantu produksi relaksasi secara maksimal. Gunakan teknik nafas ini di situasi yang membangkitkan emosi intens di diri kamu.\r\nNonton sampai habis dan simpan video ini ke playlist kamu, ya!', 'Youtube | SKWAD Health', '1718100169_8571119e6c7c4c958e96.mp4', 1),
(23, 'RELAKSASI HYPNOBIRTHING KEHAMILAN - MEMINIMALISASI TRAUMA DALAM KEHAMILAN', 'Relaksasi Audio Hypnobirthing ini adalah metode HYPNOSIS yang dilakukan oleh\r\nBidan Tantri Maharani Setyorini.\r\nPRAKTISI HYPNOTHERAPHY BERSERTIFIKASI dan sekaligus telah menjadi MENTOR/GURU\r\nyang mencetak FASILITATOR HYPNOBIRTHING.\r\n\r\nDengarkan AUDIO ini hingga selesai agar seluruh AFIRMASI Hypnosis memasuki alam bawah sadar\r\nSmartMom yang mendengarkan.\r\n\r\nTerapi ini dapat dilakukan berulang-ulang selama masa kehamilan,\r\ndan LAKUKAN DI JAM YANG SAMA SAAT PERTAMA KALI MELAKUKANNYA.\r\n\r\nsemisal Anda dengarkan pukul 21.00, maka lakukan repetisi di jam 21.00 juga.\r\n\r\nSemoga VIDEO ini dapat lebih menyamankan kehamilan SmartMom.', 'Youtube | Bidan Tantri Maharani', '1718101275_98293f4bcbcf33831cf1.mp4', 1),
(24, 'Afirmasi Positif untuk Hamil Sehat bagi Bumil | Relaksasi Kesehatan Ibu Hamil', 'Afirmasi Positif untuk Hamil Sehat bagi Bumil  | Relaksasi Kesehatan Ibu Hamil\r\n\r\nUntukmu yang sedang mengandung buah hati, afirmasi positif ini adalah kekuatan yang kamu cari. Pikiran yang penuh cinta dan hati yang damai sentosa akan mempersiapkanmu menghadapi masa kehamilan.\r\n\r\nDengan afirmasi khusus kami, Anda dapat tetap termotivasi dan terinspirasi selama perjalanan keibuan yang luar biasa ini. Bersiaplah untuk merasa berdaya dan percaya diri dengan afirmasi sederhana namun kuat ini yang akan membantu Anda menciptakan pola pikir yang lebih positif pada masa kehamilan.\r\n\r\nSelamat datang di channel BERHAK BAHAGIA! Mari bersama-sama mengulangi afirmasi positif ini setiap hari untuk menjadi pribadi yang lebih positif dan bahagia.\r\n\r\nDi titik terendah Anda, afirmasi positif akan memberi kekuatan untuk naik ke atas. Di saat-saat menyenangkan, afirmasi positif akan membantu Anda mengelolanya menjadi bahagia yang bertahan lebih lama. Channel ini didedikasikan untuk Anda yang ingin merasakan sendiri kekuatan afirmasi positif untuk membantu Anda mencapai berbagai tujuan dalam hidup Anda.\r\n\r\nTekunlah mendengar dan mengulangi afirmasi positif ini selama 21 hari untuk membentuk kebiasan baru, karena Anda BERHAK BAHAGIA!', 'Youtube | Berhak Bahagia', '1718101536_7e4234f67517e1da5c9d.mp4', 1),
(25, 'MEMBANGUN KELUARGA YANG BAHAGIA ???? CARI TAU RESEPNYA DISINI | Motivasi Merry | Merry Riana', 'Video Motivasi Merry Riana\r\nMotivasi Merry | MEMBANGUN KELUARGA YANG BAHAGIA ????  CARI TAU RESEPNYA DISINI \r\n\r\nBukannya gak mungkin lho untuk kamu bisa membangun keluarga yang bahagia.\r\nKalau mau tau lebih jelasnya, nonton video ini sampai habis ya :)', 'Youtube | Merry Riana', '1718101587_71c5d5edf78450b96992.mp4', 5),
(26, 'Panduan Relaksasi Persalinan - Hypnobirthing Saat Pembukaan Kontraksi Lahiran', 'Kalau mau save file audionya supaya nanti gampang diakses pas persalinan bisa DM yaa ke  \r\n\r\n / intaniaal  \r\n\r\nBismillah.\r\nPanduan Relaksasi Persalinan\r\nbersama @intaniaal\r\n\r\nRelaksasi ini KHUSUS untuk bumil yang dalam proses PERSALINAN, saat sudah ada bukaan, sedang kontraksi, atau proses apapun menuju kelahiran bayi anda.\r\n\r\nJika belum berada di proses persalinan, silahkan nonton panduan relaksasi kehamilan di \r\nhttps://bit.ly/hypnohamil\r\ndan silahkan untuk menandai audio ini dan siap anda putar ketika anda persalinan :)\r\n\r\n*disarankan untuk menggunakan headset \r\n\r\nSemoga lancar lancaar persalinannya!', 'Youtube | Baba Bubu Lentera', '1718101720_7db7f94cab0b4aeb13b0.mp4', 6),
(27, 'Panduan Relaksasi Untuk Ibu (Audio Only) Bersama @intaniaal - Special Mother&#039;s Day - Hari Ibu 22 Des', 'Bismillah. Teruntuk semua Ibu, menjadi Ibu tidaklah mudah. Kapanpun Anda membutuhkan jeda untuk menerima dan memaafkan segala hal dalam proses menjadi Ibu, Anda bisa mendengarkan relaksasi ini.\r\n\r\nTerima kasih sudah menjadi Ibu yang terbaik.\r\nSelamat berproses menjalani peran Ibu.', 'Youtube | Baba Bubu Lentera', '1718102018_9a78c88b66e89f34f372.mp4', 5),
(28, 'Cara Mengatasi Stres pada Ibu Rumah Tangga Ketika Mengasuh Anak', 'Banyaknya pekerjaan di rumah, terkadang membuat ibu rumah tangga merasa stres dan lelah. Berikut tips mengatasinya.', 'Youtube | Klub Wanita', '1718102069_e6ea746839dcb1ed9b36.mp4', 5),
(29, 'Sering Mengalami Stress? Atasi Dengan Mendengarkan Afirmasi Ini! | Meditasi Menenangkan Pikiran', 'FitSKWAD pernah merasa stress karena terlalu banyak pikiran atau hal yang FitSKWAD alami?\r\n\r\nKalau FitSKWAD pernah mengalaminya, saatnya untuk FitSKWAD mengambil waktu sejenak untuk melakukan meditasi ya, agar pikiran lebih merasa tenang. Dengan melakukan meditasi ', 'Youtube | SKWAD Fitness', '1718102361_65c4095d788c7a4add98.mp4', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `balasan_reply`
--

CREATE TABLE `balasan_reply` (
  `id` int(11) NOT NULL,
  `id_reply` int(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar_balasan_reply` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by_ibu` int(50) DEFAULT NULL,
  `create_by_admin` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `balasan_reply`
--

INSERT INTO `balasan_reply` (`id`, `id_reply`, `isi`, `gambar_balasan_reply`, `create_at`, `update_at`, `create_by_ibu`, `create_by_admin`) VALUES
(100, 147, 'ghsvdhvsd', NULL, '2024-06-15 02:17:18', '2024-06-15 02:17:18', 38, NULL),
(101, 147, 'skamksmakmd', NULL, '2024-06-15 02:17:35', '2024-06-15 02:17:35', 39, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_admin`
--

CREATE TABLE `data_admin` (
  `id` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `data_admin`
--

INSERT INTO `data_admin` (`id`, `nama`, `email`, `password`) VALUES
(18, 'Saint Laurent Van Damme', 'saintla@gmail.com', '$2y$10$zlos4fYJjj1KTE.VeGb1MOa7Dkj8ucbMtgul7vBK1/sGwUYHpG5H2'),
(20, 'Michael Sumual', 'michael@gmail.com', '$2y$10$4RjhMTQhDgAklvAtSQX3J.4l9eQQhnBR4jGAA/h6uAh63gGRdaq2W');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ibu`
--

CREATE TABLE `data_ibu` (
  `id` int(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `usia` int(3) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_kategori_video` int(11) DEFAULT NULL,
  `id_kategori_audio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `data_ibu`
--

INSERT INTO `data_ibu` (`id`, `avatar`, `nama`, `no_telp`, `alamat`, `usia`, `email`, `password`, `id_kategori_video`, `id_kategori_audio`) VALUES
(38, '1718175726_0f99eac34a2ec48ab8a7.jpeg', 'Jill Valentine', '00912847959', 'Madiun', 25, 'valentine@gmail.com', '$2y$10$21JDIBiq/OY1tXtojQ440e4epR9RSQGeWaNAe9ewOGYknjQ7Sw4XC', NULL, NULL),
(39, '1718268839_13ba3c635967db27f66f.png', 'Raihan Bashar', '0812736478', 'Madiun', 27, 'raihan@gmail.com', '$2y$10$LBPKUzoppiCeFBjLv8532OIWMkyHAJa84X8hOhE2LMQg9nXavC72a', NULL, NULL),
(40, '1718270455_b51a4b3d7110a80040c6.jpg', 'Anna Williams', '0182736454', 'Magetan', 28, 'anna@gmail.com', '$2y$10$jEp5HG1i7sTyFzhgHz6yMe6y0tQH64wfPzggttWj2u1w79qP0VG/y', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_komunikasi`
--

CREATE TABLE `detail_komunikasi` (
  `id_komunikasi` int(11) NOT NULL,
  `id_ibu` int(11) NOT NULL,
  `id_terapis` int(11) NOT NULL,
  `tgl_kom` date NOT NULL,
  `durasi_kom` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembayaran`
--

CREATE TABLE `detail_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_ibu` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `rekening` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `grafik_mood`
--

CREATE TABLE `grafik_mood` (
  `id_grafik` int(11) NOT NULL,
  `id_ibu` int(11) NOT NULL,
  `id_emosi` int(11) NOT NULL,
  `tgl_grafik` date NOT NULL,
  `jumlah_positif` int(11) DEFAULT 0,
  `jumlah_negatif` int(11) DEFAULT 0,
  `jumlah_netral` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_antepartum`
--

CREATE TABLE `hasil_antepartum` (
  `id` int(5) NOT NULL,
  `hasil_kesimpulan` text NOT NULL,
  `total_skor_internal` int(11) NOT NULL,
  `total_skor_eksternal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_antepartum`
--

INSERT INTO `hasil_antepartum` (`id`, `hasil_kesimpulan`, `total_skor_internal`, `total_skor_eksternal`) VALUES
(3, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar', 57, 18),
(4, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 40, 71),
(5, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 30, 51),
(6, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar', 25, 32),
(7, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar', 27, 29),
(8, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 40, 76),
(9, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 40, 71),
(10, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 23, 69),
(11, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 26, 38),
(12, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 24, 56),
(13, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 23, 64),
(14, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 34, 48),
(15, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar', 24, 20),
(16, 'Hore Selamat! Ibu telah melewati tes tanpa menunjukkan tanda-tanda Resiko Terkena Sindorm Baby Blues. Ini adalah pencapaian yang baik sekali, tetap jaga kesehatan tubuh dan pikiran ibu, okayy!!, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar', 8, 21),
(17, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 39, 60),
(18, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.', 36, 74),
(19, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda \"Resiko Terkena Sindrom Baby Blues\". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar', 24, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kuis`
--

CREATE TABLE `hasil_kuis` (
  `id` int(5) UNSIGNED NOT NULL,
  `total_skor` int(11) NOT NULL,
  `hasil_kesimpulan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `hasil_kuis`
--

INSERT INTO `hasil_kuis` (`id`, `total_skor`, `hasil_kesimpulan`) VALUES
(287, 3, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(288, 24, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(289, 20, 'Berdasarkan tes, kemungkinan bunda mengalami baby blues. \r\n    Kondisi baby blues saat ini \r\n    bisa menyebabkan kesulitan untuk \r\n    beraktifitas sehari-hari.'),
(290, 22, 'Berdasarkan tes, kemungkinan bunda mengalami baby blues. \r\n    Kondisi baby blues saat ini \r\n    bisa menyebabkan kesulitan untuk \r\n    beraktifitas sehari-hari.'),
(291, 23, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(293, 16, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(295, 11, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(296, 24, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(297, 22, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(298, 17, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(299, 21, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(300, 22, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(301, 27, 'Berdasarkan tes, kemungkinan bunda mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(302, 24, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(303, 30, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(304, 30, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(305, 25, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(306, 22, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(307, 26, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(308, 18, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(309, 7, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(310, 6, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(311, 3, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(312, 24, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(313, 14, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan.'),
(314, 11, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(315, 11, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(316, 10, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(317, 6, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression atau Depresi Pasca Melahirkan. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(318, 6, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression atau Depresi Pasca Melahirkan. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(319, 24, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression atau Depresi Pasca Melahirkan. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video dan audio untuk ibu\r\n    agar ibu bisa lebih tenang silahkan ditonton atau didengarkan, jika hal itu tidak membantu, ibu bisa segera menghubungi Psikolog yang kita rekomendasikan dibawah'),
(320, 3, 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression atau Depresi Pasca Melahirkan. \r\n    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.'),
(321, 30, 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression atau Depresi Pasca Melahirkan. \r\n    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video, audio dan artikel untuk ibu\r\n    agar ibu bisa lebih tenang silahkan dilihat atau didengarkan. jika hal itu tidak membantu, ibu bisa segera menghubungi Psikolog yang kita rekomendasikan dibawah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kuis_2`
--

CREATE TABLE `hasil_kuis_2` (
  `id` int(5) NOT NULL,
  `total_skor_internal` int(11) NOT NULL,
  `total_skor_eksternal` int(11) NOT NULL,
  `hasil_kesimpulan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_kuis_2`
--

INSERT INTO `hasil_kuis_2` (`id`, `total_skor_internal`, `total_skor_eksternal`, `hasil_kesimpulan`) VALUES
(164, 90, 33, 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala Postpartum Blues/Baby Blues. Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini,\r\n    jadi jangan ragu untuk mencari bantuan yang diperlukan.'),
(165, 77, 25, 'Berdasarkan Hasil Tes, ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala \"Terkena Sindrom Baby Blues\". Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini,\r\n    jadi jangan ragu untuk mencari bantuan yang diperlukan.'),
(166, 35, 8, 'Hore Selamat! Ibu telah melewati tes tanpa menunjukkan tanda-tanda Terkena Sindrom Baby Blues. Ini adalah pencapaian yang baik sekali tetap jaga kesehatan tubuh dan pikiran, Okayy!!, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar'),
(167, 30, 8, 'Hore Selamat! Ibu telah melewati tes tanpa menunjukkan tanda-tanda Terkena Sindrom Baby Blues. Ini adalah pencapaian yang baik sekali tetap jaga kesehatan tubuh dan pikiran, Okayy!!, dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar'),
(168, 112, 38, 'Berdasarkan Hasil Tes, ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala \"Terkena Sindrom Baby Blues\". Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini,\r\n    jadi jangan ragu untuk mencari bantuan yang diperlukan.'),
(169, 108, 38, 'Berdasarkan Hasil Tes, ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala \"Terkena Sindrom Baby Blues\". Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini, Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini,\r\n    jadi jangan ragu untuk mencari bantuan yang diperlukan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kuis_lama`
--

CREATE TABLE `hasil_kuis_lama` (
  `id` int(11) NOT NULL,
  `kuisioner_id` int(11) DEFAULT NULL,
  `total_skor` int(11) DEFAULT NULL,
  `hasil_kesimpulan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_kuis_lama`
--

INSERT INTO `hasil_kuis_lama` (`id`, `kuisioner_id`, `total_skor`, `hasil_kesimpulan`) VALUES
(4, NULL, 24, 'Postpartum Blues'),
(5, NULL, 50, 'Tidak Postpartum Blues'),
(6, NULL, 10, 'Hasil tidak valid'),
(7, NULL, 13, 'Hasil tidak valid'),
(8, NULL, 15, 'Postpartum Blues'),
(9, NULL, 0, 'Hasil tidak valid'),
(10, NULL, 15, 'Postpartum Blues'),
(11, NULL, 40, 'Tidak Postpartum Blues'),
(12, NULL, 10, 'Hasil tidak valid'),
(13, NULL, 23, 'Postpartum Blues'),
(14, NULL, 0, 'Tidak mengalami baby blues'),
(15, NULL, 9, 'Tidak mengalami baby blues'),
(16, NULL, 11, 'Tidak mengalami baby blues'),
(17, NULL, 7, 'Tidak mengalami baby blues'),
(18, NULL, 5, 'Tidak mengalami baby blues'),
(19, NULL, 3, 'Tidak mengalami baby blues'),
(20, NULL, 9, 'Tidak mengalami baby blues'),
(21, NULL, 30, 'Mungkin mengalami baby blues'),
(22, NULL, 20, 'Mungkin mengalami baby blues'),
(23, NULL, 20, 'Mungkin mengalami baby blues');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_mood`
--

CREATE TABLE `hasil_mood` (
  `id` int(11) NOT NULL,
  `id_mood_tracker` varchar(10) DEFAULT NULL,
  `hasil` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_mood`
--

INSERT INTO `hasil_mood` (`id`, `id_mood_tracker`, `hasil`) VALUES
(1, 'A002', 'Netral'),
(2, 'N002', 'Buruk'),
(3, 'P007,P008,', 'Sangat Baik'),
(4, 'N002,A003', 'Buruk'),
(5, 'P007,A002', 'Baik'),
(6, 'P007,N002,', 'Baik'),
(7, 'P007,N002', 'Baik'),
(8, 'P007,P008,', 'Baik'),
(9, 'P012,N002,', 'Baik'),
(10, 'N002,N003,', 'Sangat Buruk'),
(11, 'P007,N002', 'Netral'),
(12, 'P007,P008,', 'Sangat Baik'),
(13, 'A002', 'Netral'),
(14, 'P007,A002', 'Netral'),
(15, 'P007,P008,', 'Sangat Baik'),
(16, 'N002,N003,', 'Buruk'),
(17, 'P007', 'Netral'),
(18, 'P006', 'Netral'),
(19, 'P006', 'Netral');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ibu`
--

CREATE TABLE `ibu` (
  `id_ibu` int(11) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `alamat_ibu` varchar(255) NOT NULL,
  `usia_ibu` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_audio`
--

CREATE TABLE `kategori_audio` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_audio`
--

INSERT INTO `kategori_audio` (`id`, `kategori`) VALUES
(1, 'Kesehatan Pikiran'),
(2, 'Olahraga'),
(3, 'Baby Blues'),
(4, 'Merawat Bayi'),
(5, 'Keluarga'),
(6, 'Kehamilan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_thread`
--

CREATE TABLE `kategori_thread` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_thread`
--

INSERT INTO `kategori_thread` (`id`, `kategori`) VALUES
(1, 'Kesehatan'),
(2, 'Makanan Sehat'),
(3, 'Keluarga'),
(4, 'Gaya Hidup Sehat'),
(5, 'Baby Blues'),
(6, 'Dukungan Sosial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_video`
--

CREATE TABLE `kategori_video` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_video`
--

INSERT INTO `kategori_video` (`id`, `kategori`) VALUES
(1, 'Kesehatan Pikiran'),
(2, 'Olahraga'),
(3, 'Baby Blues'),
(4, 'Merawat Bayi'),
(5, 'Keluarga'),
(6, 'Kehamilan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuis`
--

CREATE TABLE `kuis` (
  `id` int(11) NOT NULL,
  `pernyataan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kuis`
--

INSERT INTO `kuis` (`id`, `pernyataan`) VALUES
(1, 'I have been able to laugh and see the funny side of things'),
(2, 'I have looked forward with enjoyment to things'),
(3, 'I have blamed myself unnecessarily when things went wrong'),
(4, 'I have been anxious or worried for no good reason'),
(5, 'I have felt scared or panicky for no good reason'),
(6, 'Things have been getting to me'),
(7, 'I have been so unhappy that I have had difficulty sleeping'),
(8, 'I have felt sad or miserable'),
(9, 'I have been so unhappy that I have been crying'),
(10, 'The thought of harming myself has occurred to me');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuis2`
--

CREATE TABLE `kuis2` (
  `id` int(11) NOT NULL,
  `pernyataan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kuis2`
--

INSERT INTO `kuis2` (`id`, `pernyataan`) VALUES
(1, '1. Bahagia saat bersentuhan dengan kulit bayi'),
(2, '2. Senang melihat bayi nyaman saat dipeluk'),
(3, '3. Bahagia bayi dapat ditenangkan dengan mendengar suara saya'),
(4, '4. Senang disaat bayi berada dalam pelukan saya'),
(5, '5. Menanjatkan doa untuk kesehatan bayi'),
(6, '6. Bahagia bayi bersama saya sepanjang hari'),
(7, '7. Lelah melahirkan hilang disaat memeluk bayi'),
(8, '8. Keluarga memberi kepercayaan untuk merawat bayi'),
(9, '9. Kapan saja memberikan ASI saya lakukan dengan senang'),
(10, '10. Berbicara dengan bayi saya rasa menyenangkan'),
(11, '11. Saya merasakan merawat bayi seharian adalah beban'),
(12, '12. Lelah memberikan ASI'),
(13, '13. Kesal waktu tersita untuk menyusui'),
(14, '14. Kesal bayi tidak mau berhenti menyusu'),
(15, '15. Lelah merawat bayi sepanjang hari'),
(16, '16. Menyusui bayi dalam waktu lama menyenangkan'),
(17, '17. Kehadiran bayi membuat khawatir terhadap kebutuhan keluarga'),
(18, '18. Berharap bayi tidak mengganggu disaat istirahat'),
(19, '19. Khawatir suami tidak menerima perubahan tubuh saya'),
(20, '20. Kesal tidak punya waktu untuk mengurus diri'),
(21, '21. Stres menjalankan saran keluarga dalam merawat bayi'),
(22, '22. Khawatir tidak dapat merawat bayi'),
(23, '23. Saya menangis setiap kali bayi menangis'),
(24, '24. Cemas menghadapi tugas seorang ibu'),
(25, '25. Khawatir perawatan bayi, yang saya lakukan tidak sesuai harapan keluarga'),
(26, '26. Sedih keluarga meragukan kemampuan saya merawat bayi'),
(27, '27. Cemas, bayi tidak sesuai dengan harapan keluarga'),
(28, '28. Merasakan beban berat melaksanakan anjuran orangtua dalam merawat bayi'),
(29, '29. Stres saat orangtua menasehati dalam merawat bayi'),
(30, '30. Merasa stres dengan kondisi ekonomi saat ini'),
(31, '31. Kekurangan saya dalam merawat bayi disampaikan mertua ke orang lain'),
(32, '32. Percaya diri merawat bayi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuisioner`
--

CREATE TABLE `kuisioner` (
  `id` int(11) NOT NULL,
  `question_1` varchar(255) NOT NULL,
  `question_2` varchar(255) NOT NULL,
  `question_3` varchar(255) NOT NULL,
  `question_4` varchar(255) NOT NULL,
  `question_5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kuisioner`
--

INSERT INTO `kuisioner` (`id`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`) VALUES
(1, 'I have been able to laugh and see the funny side of things:', 'I have looked forward with enjoyment to things:', 'I have blamed myself unnecessarily when things went wrong:', 'I have been anxious or worried for no good reason:', 'I have felt scared or panicky for no good reason:');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2024-03-25-182753', 'App\\Database\\Migrations\\HasilKuis', 'default', 'App', 1711392267, 2),
(4, '2024-03-24-164558', 'App\\Database\\Migrations\\Admin', 'default', 'App', 1714748335, 3),
(7, '2024-05-03-144528', 'App\\Database\\Migrations\\Ibu', 'default', 'App', 1714813196, 4),
(8, '2024-03-27-102228', 'App\\Database\\Migrations\\Artikel', 'default', 'App', 1715013559, 5),
(11, '2024-05-10-142907', 'App\\Database\\Migrations\\Psikolog', 'default', 'App', 1715351379, 6),
(13, '2024-05-16-035716', 'App\\Database\\Migrations\\Video', 'default', 'App', 1715832381, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mood_tracker`
--

CREATE TABLE `mood_tracker` (
  `id_emosi` varchar(11) NOT NULL,
  `nama_emosi` varchar(255) NOT NULL,
  `jenis_emosi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mood_tracker`
--

INSERT INTO `mood_tracker` (`id_emosi`, `nama_emosi`, `jenis_emosi`) VALUES
('A001', 'Anak', 'alasan'),
('A002', 'Suami', 'alasan'),
('A003', 'Orangtua', 'alasan'),
('A004', 'Tetangga', 'alasan'),
('A005', 'Teman', 'alasan'),
('A006', 'Saudara', 'alasan'),
('A007', 'Orang Asing', 'alasan'),
('N001', 'Kesal', 'negatif'),
('N002', 'Frustasi', 'negatif'),
('N003', 'Khawatir', 'negatif'),
('N004', 'Putus Asa', 'negatif'),
('N005', 'Gelisah', 'negatif'),
('N006', 'Malu', 'negatif'),
('N007', 'Bingung', 'negatif'),
('N008', 'Gundah', 'negatif'),
('P006', 'Tenang', 'positif'),
('P007', 'Optimis', 'positif'),
('P008', 'Senang', 'positif'),
('P009', 'Bersemangat', 'positif'),
('P010', 'Syukur', 'positif'),
('P011', 'Antusias', 'positif'),
('P012', 'Optimis', 'positif'),
('P013', 'Bangga', 'positif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `musik`
--

CREATE TABLE `musik` (
  `id_musik` int(11) NOT NULL,
  `nama_musik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `rekening` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psikolog`
--

CREATE TABLE `psikolog` (
  `id` int(20) UNSIGNED NOT NULL,
  `photo_profile` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telepon` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelamin` varchar(255) NOT NULL,
  `pengalaman` text NOT NULL,
  `sertifikat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `psikolog`
--

INSERT INTO `psikolog` (`id`, `photo_profile`, `nama`, `email`, `password`, `no_telepon`, `alamat`, `kelamin`, `pengalaman`, `sertifikat`) VALUES
(2, '1715352678_c7f1c7b2c8f6d53e396f.jpg', 'Edward M.Psi., Psikolog', 'kimkim@gmail.com', 'ajnsjanjsn', '081233546789', 'Madiun', 'Perempuan', 'Saya memiliki keahlian dalam terapi kognitif-perilaku, terapi keluarga, dan terapi pasangan.', '1718111232_eaadc5af4d0fd2f39989.png'),
(3, '1715414954_285e85e5c89dd1c2525e.jpg', 'Toni Smitch M.Psi., Psikolog', 'tonitonij@gmail.com', 'opsoaksn', '081726354323', 'Madiun', 'laki laki', 'Dengan lebih dari sepuluh tahun praktik klinis, saya spesialis dalam terapi kognitif-perilaku dan terapi keluarga.', '1718111241_9f2d838b23600dd674e4.png'),
(4, '1715415023_7570d18062d494e49a56.jpg', 'Yves Saint Laurent M.Psi., Psikolog', 'YSV@gmail.com', 'qwqwqwqw', '081726354323', 'Magetan', 'Laki Laki', 'Pakar dalam terapi kognitif-perilaku dan terapi keluarga dengan pengalaman praktik klinis selama lebih dari sepuluh tahun.', '1718111250_fd7b05139461f4dc2c27.png'),
(5, '1715415086_bfcd4d58b039e043fbc4.jpg', 'Alex Morgan M.Psi., Psikolog', 'alexm1123@gmail.com', 'kdoakodaodm', '081726354370', 'Magetan', 'Perempuan', 'Saya seorang psikolog dengan lebih dari sepuluh tahun pengalaman dalam praktik klinis, mengkhususkan diri dalam terapi kognitif-perilaku dan terapi keluarga. ', '1718111260_c4dfa61105f9341628d4.png'),
(7, '1715430806_e68c075f55f0519997d0.jpg', 'Alexa, S.Psi, Psikolog', 'alexa22@gmail.com', 'momomom', '081726354399', 'Madiun', 'Perempuan', 'Saya seorang psikolog dengan spesialisasi dalam terapi keluarga dan hubungan pasangan, dengan lebih dari sepuluh tahun pengalaman klinis.', '1718111267_324b3164e6e46c0a7775.png'),
(8, '1715430789_99d28165460641e8b2f3.jpg', 'Sri Rejeki M.Psi., Psikolog', 'sriiiiii@gmail.com', '12312345', '081233546744', 'Kota Madiun', 'Perempuan', 'Saya membantu memperkuat ikatan emosional, memecahkan konflik, dan membangun fondasi yang kokoh untuk hubungan yang bahagia dan harmonis.', '1718111279_2a599e880bf90632ffd2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `id_thread` int(50) NOT NULL,
  `gambar_reply` varchar(255) DEFAULT NULL,
  `isi` text NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by_ibu` int(50) DEFAULT NULL,
  `create_by_admin` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reply`
--

INSERT INTO `reply` (`id`, `id_thread`, `gambar_reply`, `isi`, `create_at`, `update_at`, `create_by_ibu`, `create_by_admin`) VALUES
(147, 156, '1718271341_63abd6533e84be0bc9b2.jpeg', 'kalo aku sih sering nya salad ya bun', '2024-06-13 09:35:41', '2024-06-13 09:35:41', 38, NULL),
(151, 156, NULL, 'kalo aku sih kadang makan buah buahan\r\n', '2024-06-15 02:19:05', '2024-06-15 02:19:05', 39, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `id_thread` int(50) DEFAULT NULL,
  `id_reply` int(50) DEFAULT NULL,
  `id_balasan_reply` int(50) DEFAULT NULL,
  `isi` text NOT NULL,
  `alasan` text NOT NULL,
  `create_by_ibu` int(50) NOT NULL,
  `reported_ibu` int(50) DEFAULT NULL,
  `reported_admin` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `id_thread`, `id_reply`, `id_balasan_reply`, `isi`, `alasan`, `create_by_ibu`, `reported_ibu`, `reported_admin`) VALUES
(49, 154, NULL, NULL, 'Selama hamil, ibu mungkin cemas dan khawatir akan banyak hal. Namun, kondisi ini bisa diatasi dengan afirmasi positif, yakni pernyataan yang digunakan untuk menanamkan rasa positif terutama terkait kehamilan. Dengan mengulangnya setiap hari, maka manfaatnya akan bisa dirasakan.', 'sasad', 39, 40, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar_thread` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `id_kategori_thread` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by_ibu` int(50) DEFAULT NULL,
  `create_by_admin` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `thread`
--

INSERT INTO `thread` (`id`, `judul`, `gambar_thread`, `isi`, `id_kategori_thread`, `create_at`, `update_at`, `create_by_ibu`, `create_by_admin`) VALUES
(154, 'Afirmasi positif yang penting untuk ibu hamil', '1718270581_6d52a55fc9f2e0b2922c.jpg', 'Selama hamil, ibu mungkin cemas dan khawatir akan banyak hal. Namun, kondisi ini bisa diatasi dengan afirmasi positif, yakni pernyataan yang digunakan untuk menanamkan rasa positif terutama terkait kehamilan. Dengan mengulangnya setiap hari, maka manfaatnya akan bisa dirasakan.', 6, '2024-06-13 09:23:01', '2024-06-13 09:23:01', 40, NULL),
(155, 'Olahraga yang Baik untuk Ibu Hamil', '1718270703_fdac4989433dca944209.jpg', 'Trimester pertama kehamilan bisa menjadi momen yang melelahkan untuk ibu hamil, salah satunya karena morning sickness. Namun, bukan berarti ibu tidak bisa melakukan apa pun.  Untuk mengurangi rasa tidak nyaman, ibu bisa melakukan olahraga ringan atau latihan fisik.\r\n\r\nayo para bunda bagi atau share olahraga apanih yang sering bunda lakukan', 4, '2024-06-13 09:25:03', '2024-06-13 09:25:03', 40, NULL),
(156, 'Makanan yang sehat bagi ibu hamil itu apa aja ?', '1718270967_c19ef51b5e9086498bde.jpg', 'Pemilihan asupan makanan untuk ibu hamil tidak bisa sembarangan, sehingga harus memastikan benar-benar makanan sehat yang dikonsumsi. Misalnya daging tanpa lemak, sayur, buah, hingga kacang-kacangan.\r\nselain itu apaaja nih bun makanan yang biasanya dimasak, yuk bagi bagi resepnya yuhuuu', 2, '2024-06-13 09:29:27', '2024-06-13 09:29:27', 38, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id` int(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `sumber` varchar(255) NOT NULL,
  `id_kategori_video` int(11) NOT NULL,
  `video_terapis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id`, `judul`, `deskripsi`, `sumber`, `id_kategori_video`, `video_terapis`) VALUES
(33, 'Hilangkan Stress dengan Gerakan Yoga | Kata Dokter', 'Bila mengalami situasi yang membuat diri stres, biasanya kita tidak bisa mengontrol emosi pada diri kita sehingga akan berimbas kepada pekerjaan kita. Lalu apa yang kita butuhkan untuk menghilangkan stres? ya gerakan yoga bisa menjasi satu alternatof yang pas untuk mengendalikan stres dan membuat perasaan menjadi lebih rileks dan tenang. Seperti apa gerakan yoga untuk menghilangkan stres?', 'Youtube | Kata Dokter', 2, '1718084189_905b0c7c9379d463c001.mp4'),
(34, 'Tips Ampuh Atasi Stress Saat Hamil, Bunda Wajib Coba', 'Video Kali Ini Mengenai Tips Ampuh Atasi Stress Saat Hamil, Bunda Wajib Coba.\r\nBerbagai perubahan yang terjadi selama masa kehamilan sering kali menimbulkan stres saat hamil. Meski kondisi ini umumnya normal terjadi, tetapi ibu hamil tetap perlu mengelola stres dengan baik agar tidak menyebabkan gangguan kesehatan pada dirinya dan janin. ', 'Youtube | Seputar Bunda TV', 1, '1718084578_4079474a8b64ed09ff39.mp4'),
(35, 'Cemas Berlebihan Dalam Kehamilan', 'Kadang kala saat hamil kita merasa cermas berlebihan, ternyata cemas tersebut dapat berpengaruh pada janin. Lantas bagaimana mengatasinya? Selamat menonton, silahkan subscribe jika kamu ingin tahu lebih banyak seputar kesehatan ibu dan anak, tinggalkan komentar jika ada pertanyaan atau materi yang ingin di bahas dan share video sebanyak-banyaknya karena siapa tahu di luar sana ada orang yang membutuhkan video ini. Semoga sehat selalu ya!!', 'Youtube | Kriwilife', 1, '1718084846_6f2facb1dc97affab532.mp4'),
(36, '7 Tips Agar Kehamilanmu Tetap Sehat', 'Bumil harus menjaga kesehatan agar terhindar dari bahaya dan komplikasi selama kehamilan berlangsung. Yuk, ikuti 7 tips dari dokter Alodokter untuk tetap sehat saat hamil. Simak di video ini!', 'Youtube | Alodokter', 6, '1718085085_e6c2e3ad365c83e33ce1.mp4'),
(37, 'TIPS MENJAGA KANDUNGAN KUAT DAN SEHAT - TANYAKAN DOKTER', 'berikut tips nya supaya kandungan Anda tetap kuat dan sehat', 'Youtube | Tanyakan Dokter', 6, '1718085242_08c737641864938d649f.mp4'),
(40, 'Stres saat Hamil? Coba Lakukan Cara Ini!', 'Jangan lupa share, like, comment dan pencet belnya untuk informasi kesehatan menarik lainnya! Kamu juga bisa selalu update tentang informasi kesehatan, percintaan, bahkan fakta menarik lainnya dengan ', 'Youtube | Gue Sehat', 1, '1718085640_867ff1ffa1f6d656eb6e.mp4'),
(41, 'Tips 9 Cara Menghilangkan Stres Saat Hamil', 'Hai bunda. Di Vidio kali ini membahas tentang kesehatan kandungan. yaitu Tips 9 Cara Menghilangkan Stres Saat Hamil. Semoga Vidio ini Bermanfaat dan membantu bunda yang selama ini mengalami Stres saat hamil. Tetep tonton terus ia, Tips dan Cara Seputar kesehatan di Vidio berikutnya.!!', 'Youtube | Tips Bidan Umi', 1, '1718086534_b64dcff84b5a7c742cc3.mp4'),
(42, 'Cara Jitu Mengatasi Baby Blues Syndrome I Menurut Moms', 'Hi Moms, Baby Blues Syndrome tentu sudah tak asing lagi di telinga kita. Namun apakah benar baby blues syndrome itu wajar bagi Moms yang setelah melahirkan ? Bagaimanakah ciri-ciri Moms yang mengalami Baby Blues Syndrome? Serta bagaimana cara mengatasinya? Berikut penjelasan tentang baby blues syndrome dari Psikolog ternama Indonesia Ibu Vera Itabiliana Hadiwidjoyo', 'Youtube | Orami Entertainment', 3, '1718086962_be142d739b76c1e28473.mp4'),
(43, 'Inilah 5 Cara Atasi Baby Blues saat Menyusui', 'Baby Blues sering dialami oleh ibu menyusui. Tidak terkecuali, setiap ibu menyusui berpotensi untuk merasakan Baby Blues. Simak cara mengatasi Baby Blues saat menyusui bersama Rena Masri pada video berikut, ya!', 'Youtube | Halodoc', 3, '1718087078_90393eb356a0d255abba.mp4'),
(44, 'Gelisah Berlebihan Setelah Melahirkan ? Begini Ternyata Cara Mengatasi Baby Blues', 'Hai Parents ! Beberapa ibu yang baru melahirkan tidak jarang loh mengalami gelisah , khawatir , cemas yang berlebihan atau biasa di sebut baby blues. Nah tenang aja parents! Kamu gak usah khawatir karena kali ini kita akan bahas apa itu baby blues dan bagaimana cara mengatasinya !', 'Youtube | SKWAD Parents', 3, '1718087255_dcd24cba5e95581385f4.mp4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `antepartum`
--
ALTER TABLE `antepartum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori_audio` (`id_kategori_audio`);

--
-- Indeks untuk tabel `balasan_reply`
--
ALTER TABLE `balasan_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reply` (`id_reply`),
  ADD KEY `create_by_ibu` (`create_by_ibu`),
  ADD KEY `create_by_admin` (`create_by_admin`);

--
-- Indeks untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_ibu`
--
ALTER TABLE `data_ibu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_video` (`id_kategori_video`),
  ADD KEY `kategori_audio` (`id_kategori_audio`);

--
-- Indeks untuk tabel `detail_komunikasi`
--
ALTER TABLE `detail_komunikasi`
  ADD PRIMARY KEY (`id_komunikasi`);

--
-- Indeks untuk tabel `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `grafik_mood`
--
ALTER TABLE `grafik_mood`
  ADD PRIMARY KEY (`id_grafik`);

--
-- Indeks untuk tabel `hasil_antepartum`
--
ALTER TABLE `hasil_antepartum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_kuis_2`
--
ALTER TABLE `hasil_kuis_2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_kuis_lama`
--
ALTER TABLE `hasil_kuis_lama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kuisioner_id` (`kuisioner_id`);

--
-- Indeks untuk tabel `hasil_mood`
--
ALTER TABLE `hasil_mood`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ibu`
--
ALTER TABLE `ibu`
  ADD PRIMARY KEY (`id_ibu`);

--
-- Indeks untuk tabel `kategori_audio`
--
ALTER TABLE `kategori_audio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_thread`
--
ALTER TABLE `kategori_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_video`
--
ALTER TABLE `kategori_video`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuis2`
--
ALTER TABLE `kuis2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mood_tracker`
--
ALTER TABLE `mood_tracker`
  ADD PRIMARY KEY (`id_emosi`);

--
-- Indeks untuk tabel `musik`
--
ALTER TABLE `musik`
  ADD PRIMARY KEY (`id_musik`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `psikolog`
--
ALTER TABLE `psikolog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_thread` (`id_thread`),
  ADD KEY `reply_ibfk_4` (`create_by_ibu`),
  ADD KEY `reply_ibfk_5` (`create_by_admin`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_thread` (`id_thread`),
  ADD KEY `id_reply` (`id_reply`),
  ADD KEY `id_balasan_reply` (`id_balasan_reply`),
  ADD KEY `create_by_ibu` (`create_by_ibu`),
  ADD KEY `reported_ibu` (`reported_ibu`),
  ADD KEY `reported_admin` (`reported_admin`);

--
-- Indeks untuk tabel `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori_thread` (`id_kategori_thread`),
  ADD KEY `thread_ibfk_2` (`create_by_ibu`),
  ADD KEY `thread_ibfk_4` (`create_by_admin`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori_video` (`id_kategori_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `antepartum`
--
ALTER TABLE `antepartum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `balasan_reply`
--
ALTER TABLE `balasan_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `data_ibu`
--
ALTER TABLE `data_ibu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `detail_komunikasi`
--
ALTER TABLE `detail_komunikasi`
  MODIFY `id_komunikasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasil_antepartum`
--
ALTER TABLE `hasil_antepartum`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT untuk tabel `hasil_kuis_2`
--
ALTER TABLE `hasil_kuis_2`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT untuk tabel `hasil_kuis_lama`
--
ALTER TABLE `hasil_kuis_lama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `hasil_mood`
--
ALTER TABLE `hasil_mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `ibu`
--
ALTER TABLE `ibu`
  MODIFY `id_ibu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_audio`
--
ALTER TABLE `kategori_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_thread`
--
ALTER TABLE `kategori_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_video`
--
ALTER TABLE `kategori_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kuis2`
--
ALTER TABLE `kuis2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `musik`
--
ALTER TABLE `musik`
  MODIFY `id_musik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psikolog`
--
ALTER TABLE `psikolog`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `audio`
--
ALTER TABLE `audio`
  ADD CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`id_kategori_audio`) REFERENCES `kategori_audio` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `balasan_reply`
--
ALTER TABLE `balasan_reply`
  ADD CONSTRAINT `balasan_reply_ibfk_1` FOREIGN KEY (`id_reply`) REFERENCES `reply` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `balasan_reply_ibfk_3` FOREIGN KEY (`create_by_admin`) REFERENCES `data_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `balasan_reply_ibfk_4` FOREIGN KEY (`create_by_ibu`) REFERENCES `data_ibu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_ibu`
--
ALTER TABLE `data_ibu`
  ADD CONSTRAINT `data_ibu_ibfk_1` FOREIGN KEY (`id_kategori_audio`) REFERENCES `kategori_audio` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `data_ibu_ibfk_2` FOREIGN KEY (`id_kategori_video`) REFERENCES `kategori_video` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil_kuis_lama`
--
ALTER TABLE `hasil_kuis_lama`
  ADD CONSTRAINT `hasil_kuis_lama_ibfk_1` FOREIGN KEY (`kuisioner_id`) REFERENCES `kuisioner` (`id`);

--
-- Ketidakleluasaan untuk tabel `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reply_ibfk_4` FOREIGN KEY (`create_by_ibu`) REFERENCES `data_ibu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reply_ibfk_5` FOREIGN KEY (`create_by_admin`) REFERENCES `data_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`id_reply`) REFERENCES `reply` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_3` FOREIGN KEY (`id_balasan_reply`) REFERENCES `balasan_reply` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_4` FOREIGN KEY (`create_by_ibu`) REFERENCES `data_ibu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_5` FOREIGN KEY (`reported_ibu`) REFERENCES `data_ibu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_6` FOREIGN KEY (`reported_admin`) REFERENCES `data_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `thread_ibfk_2` FOREIGN KEY (`create_by_ibu`) REFERENCES `data_ibu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thread_ibfk_4` FOREIGN KEY (`create_by_admin`) REFERENCES `data_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thread_ibfk_5` FOREIGN KEY (`id_kategori_thread`) REFERENCES `kategori_thread` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`id_kategori_video`) REFERENCES `kategori_video` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
