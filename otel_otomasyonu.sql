-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 01 Haz 2016, 14:05:51
-- Sunucu sürümü: 5.6.12-log
-- PHP Sürümü: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `otel_otomasyonu`
--
CREATE DATABASE IF NOT EXISTS `otel_otomasyonu` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `otel_otomasyonu`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteriler`
--

CREATE TABLE IF NOT EXISTS `musteriler` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `adi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyadi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cep` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri_listesi`
--

CREATE TABLE IF NOT EXISTS `musteri_listesi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tc` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyadi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cep_telefonu` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres_bilgileri` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `giris_tarihi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cikis_tarihi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `konaklama_suresi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `oda_numarasi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `musteri_listesi`
--

INSERT INTO `musteri_listesi` (`id`, `tc`, `adi`, `soyadi`, `cep_telefonu`, `adres_bilgileri`, `giris_tarihi`, `cikis_tarihi`, `konaklama_suresi`, `oda_numarasi`) VALUES
(1, '123', 'Muhittin', 'ÖZYILMAZ', '0535 555 55 55', 'Kırıkkale Üniversitesi', '31.05.2016', '01.06.2016', '5 Gün', 'Oda 1'),
(2, '1020', 'ahmet', 'CAN', '0532', 'E?itim Fakültesi', 'asd', 'asd', '4', 'Oda 5'),
(3, '122', 'Bu?ra', 'ERSOY', '0532 555 55 55', 'Mühendislik Fakültesi', 'asd', 'dsa', '8', 'Oda 7');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel_listesi`
--

CREATE TABLE IF NOT EXISTS `personel_listesi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tc` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyad` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `dogum_tarihi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cocuk_sayisi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `maas` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesai_saati` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesai_ucreti` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ise_giris_tarihi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `personel_listesi`
--

INSERT INTO `personel_listesi` (`id`, `tc`, `ad`, `soyad`, `dogum_tarihi`, `telefon`, `adres`, `cocuk_sayisi`, `maas`, `mesai_saati`, `mesai_ucreti`, `ise_giris_tarihi`) VALUES
(1, '11', 'Selma', 'Hünel', '01.06.2016', '0535 555 55 55', 'K?r?kkale Üniversitesi', '0', '5000', '5', '1000', 'Kendisi Kurudu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE IF NOT EXISTS `uyeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kadi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `kadi`, `sifre`, `email`) VALUES
(1, 'ali', '1', 'ali@gmail.com'),
(2, 'mehmet', '1', 'mehmet@hotmail.com'),
(5, 'nagihan', '1', 'nagihan@gmail.com'),
(6, 'asd', 'asd', 'asd'),
(7, 'nagihan', '1', 'nagihan@hotmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
