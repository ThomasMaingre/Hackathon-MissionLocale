-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 23 juin 2023 à 14:28
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hackaton`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `page_accueil`
--

CREATE TABLE `page_accueil` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `image` text NOT NULL,
  `updated_at` date NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `page_accueil`
--

INSERT INTO `page_accueil` (`id`, `html`, `image`, `updated_at`, `position`, `created_at`) VALUES
(4, '<div class=\"container mt-5\">\r\n<div class=\"card\">\r\n<div class=\"card-body\">\r\n<h2>Bienvenue &agrave; la Mission Locale du Pays d&#39;Aix !</h2>\r\n\r\n<h5>Votre passerelle vers l&#39;emploi et l&#39;autonomie</h5>\r\n\r\n<p>Vous &ecirc;tes un jeune r&eacute;sidant dans le Pays d&#39;Aix &agrave; la recherche de votre voie professionnelle ? La Mission Locale est l&agrave; pour vous accompagner dans votre parcours vers l&#39;emploi et l&#39;autonomie. Nous sommes une organisation d&eacute;di&eacute;e &agrave; la r&eacute;ussite des jeunes en les soutenant dans leur transition vers la vie active.</p>\r\n</div>\r\n</div>\r\n</div>', 'null', '2023-05-23', 1, '2023-05-23'),
(8, '<div class=\"container mt-5\">\r\n<div class=\"card\">\r\n<div class=\"card-body\">\r\n<h2>Qui sommes-nous ?</h2>\r\n\r\n<p>La Mission Locale du Pays d&#39;Aix est une structure sp&eacute;cialis&eacute;e dans l&#39;insertion professionnelle des jeunes &acirc;g&eacute;s de 16 &agrave; 25 ans. Notre &eacute;quipe d&#39;experts qualifi&eacute;s est l&agrave; pour vous &eacute;couter, vous conseiller et vous guider tout au long de votre parcours. Que vous soyez en qu&ecirc;te d&#39;un premier emploi, d&#39;une formation, d&#39;un apprentissage ou simplement en besoin d&#39;informations sur votre recherche d&rsquo;autonomie, nous sommes l&agrave; pour vous aider.</p>\r\n</div>\r\n</div>\r\n</div>', 'null', '2023-05-23', 2, '2023-05-23'),
(9, '<div class=\"container mt-5\">\r\n<div class=\"card\">\r\n<div class=\"card-body\">\r\n<h2>Nos services</h2>\r\n\r\n<ol>\r\n	<li><strong>Orientation professionnelle personnalis&eacute;e :</strong> Notre &eacute;quipe de conseillers professionnels vous accompagnera dans l&#39;exploration des m&eacute;tiers, la d&eacute;couverte de vos aptitudes et la d&eacute;finition de vos objectifs professionnels. Nous vous aiderons &agrave; trouver la voie qui correspond le mieux &agrave; vos int&eacute;r&ecirc;ts et comp&eacute;tences.</li>\r\n	<li><strong>Acc&egrave;s aux formations :</strong> Nous vous donnerons acc&egrave;s &agrave; une liste compl&egrave;te de formations professionnelles adapt&eacute;es &agrave; vos besoins et &agrave; vos ambitions. Nous vous aiderons &eacute;galement &agrave; pr&eacute;parer votre candidature et &agrave; trouver les financements n&eacute;cessaires pour vous former.</li>\r\n	<li><strong>Mise en relation avec les employeurs :</strong> Nous avons &eacute;tabli un r&eacute;seau solide de partenaires professionnels locaux. Nous faciliterons votre mise en relation avec les entreprises qui recrutent et nous vous soutiendrons tout au long du processus de recherche d&#39;emploi.</li>\r\n	<li><strong>Soutien social et administratif :</strong> Nous comprenons que les difficult&eacute;s personnelles peuvent parfois entraver votre progression. C&#39;est pourquoi nous vous offrons un soutien social et administratif pour r&eacute;soudre les probl&egrave;mes li&eacute;s au logement, &agrave; la sant&eacute;, &agrave; la mobilit&eacute;, aux prestations sociales, etc.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 'null', '2023-05-23', 9999, '2023-05-23'),
(10, '<div class=\"container mt-5\">\r\n<div class=\"card\">\r\n<div class=\"card-body\">\r\n<h2>Contactez-nous d&egrave;s aujourd&#39;hui !</h2>\r\n\r\n<p>Si vous &ecirc;tes pr&ecirc;t &agrave; d&eacute;marrer votre parcours vers l&#39;emploi et l&#39;autonomie, n&#39;attendez plus ! Contactez-nous d&egrave;s maintenant pour prendre rendez-vous avec l&#39;un de nos conseillers. Ensemble, nous &eacute;laborerons un plan d&#39;action personnalis&eacute; pour vous aider &agrave; atteindre vos objectifs professionnels. Rejoignez la Mission Locale du Pays d&#39;Aix et ouvrez-vous de nouvelles opportunit&eacute;s pour un avenir radieux.</p>\r\n\r\n<p>Num&eacute;ro : <strong><a href=\"tel:+33442330916\">04 42 33 09 16</a></strong></p>\r\n</div>\r\n</div>\r\n</div>', 'null', '2023-05-23', 9999, '2023-05-23'),
(11, '<p>mon text</p>', 'null', '2023-05-23', 2, '2023-05-23'),
(12, '<p>coucou</p>', 'gh1.jpg', '2023-06-23', 9999, '2023-06-23');

-- --------------------------------------------------------

--
-- Structure de la table `page_contact`
--

CREATE TABLE `page_contact` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `image` text NOT NULL,
  `updated_at` date NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `page_contact`
--

INSERT INTO `page_contact` (`id`, `html`, `image`, `updated_at`, `position`, `created_at`) VALUES
(15, '<div class=\"container mt-5\">\r\n  <h2>Contactez-nous</h2>\r\n  <form>\r\n    <div class=\"mb-3\">\r\n      <label for=\"name\" class=\"form-label\">Nom</label>\r\n      <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Votre nom\">\r\n    </div>\r\n    <div class=\"mb-3\">\r\n      <label for=\"email\" class=\"form-label\">Email</label>\r\n      <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"exemple@example.com\">\r\n    </div>\r\n    <div class=\"mb-3\">\r\n      <label for=\"message\" class=\"form-label\">Message</label>\r\n      <textarea class=\"form-control\" id=\"message\" rows=\"5\" placeholder=\"Votre message\"></textarea>\r\n    </div>\r\n    <button type=\"submit\" class=\"btn btn-primary\">Envoyer</button>\r\n  </form>\r\n</div>', 'null', '2023-05-23', 1, '2023-05-23'),
(17, '<div class=\"container footer_container\">\r\n  <div class=\"row\">\r\n    <div class=\"col-md-4 contact_social\">\r\n      <img alt=\"Logo\" src=\"assets/images/MLPA/logo_blanc.png\" style=\"max-height:100px\" />\r\n      <div class=\"contact_social_media\">&nbsp;</div>\r\n    </div>\r\n\r\n    <div class=\"col-md-3 contact_tel\">\r\n      <p>&nbsp;</p>\r\n      <p>Numéro Unique<br />\r\n      04 42 33 09 16</p>\r\n    </div>\r\n\r\n    <div class=\"col-md-5 contact-antennes\">\r\n      Mission Locale Pays d\'Aix\r\n      <iframe sandbox=\"\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2892.744585734485!2d5.411711576093199!3d43.52851866048608!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12c9ed3bb12bae85%3A0x22220247b3c9979d!2sLocal%20mission%20Pays%20d\'Aix!5e0!3m2!1sen!2sfr!4v1684837047082!5m2!1sen!2sfr\" style=\"border:0;\"></iframe>\r\n      <a href=\"/contact\">Autres antennes</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"row\">\r\n    <div class=\"col-md-12 newsletter\">\r\n      <div class=\"container\">\r\n        <h3>Newsletter</h3>\r\n        <p>S\'inscrire à notre newsletter.</p>\r\n        <form>\r\n          <div class=\"input-group mb-3\">\r\n            <input type=\"email\" class=\"form-control\" placeholder=\"Votre adresse e-mail\" aria-label=\"Votre adresse e-mail\" aria-describedby=\"button-addon2\">\r\n            <button class=\"btn btn-primary\" type=\"button\" id=\"button-addon2\">S\'inscrire</button>\r\n          </div>\r\n        </form>\r\n      </div>\r\n      <div class=\"col-md-1\">&nbsp;</div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"twitch-banner-toggle\">\r\n    <div class=\"twitch-icon\">&nbsp;</div>\r\n  </div>\r\n</div>\r\n</div>', 'null', '2023-05-23', 2, '2023-05-23');

-- --------------------------------------------------------

--
-- Structure de la table `page_ghins`
--

CREATE TABLE `page_ghins` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `image` text NOT NULL,
  `updated_at` date NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `page_ghins`
--

INSERT INTO `page_ghins` (`id`, `html`, `image`, `updated_at`, `position`, `created_at`) VALUES
(5, '<p style=\"text-align:center\"><span style=\"color:#f1c40f\"><span style=\"font-size:36px\"><strong>La G<u>H</u>INS C&#39;EST QUOI?</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ffffff\"><span style=\"font-size:24px\">La GAMING HOUSE DE L&rsquo;INSERTION (= la GHINS) c&rsquo;est un tiers-lieu de 100m2 au sein du quartier prioritaire d&rsquo;Encagnane de la ville d&rsquo;Aix-en-Provence, dont l&rsquo;objectif est d&rsquo;allier un accompagnement d&rsquo;insertion professionnel pour les jeunes de 16 &agrave; 25 ans, dans un parcours innovant autour du Sport et de l&rsquo;E-Sport.</span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<p><img src=\"/assets/images/logo1.png\" style=\"max-height:450px\" /></p>\r\n</div>', 'gh1.jpg', '2023-05-23', 5, '2023-05-23'),
(6, '<p style=\"text-align:center\"><strong><span style=\"color:#3498db\"><span style=\"font-size:36px\">POUR QUI?</span></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:24px\">Ouvert pour les jeunes qui ne sont ni en Emploi, ni en formation et/ou scolaris&eacute; de 16 &agrave; 25 ans ayant pour objectif de s&rsquo;inscrire dans une dynamique active d&rsquo;insertion professionnelle</span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<p><img src=\"/assets/images/illu.png\" style=\"max-height:450px\" /></p>\r\n</div>', 'null', '2023-05-23', 2, '2023-05-23'),
(7, '<p style=\"text-align:center\"><strong><span style=\"color:#e74c3c\"><span style=\"font-size:36px\">UN PARCOURS?</span></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ffffff\"><span style=\"font-size:24px\">2 semaines de parcours avec des ateliers quotidiens pour identifier et valoriser ses comp&eacute;tences avec les outils num&eacute;riques, le jeux vid&eacute;o et le sport. Rencontrer des professionnels issu de l&rsquo;E-sport comme des joueurs&middot;euses professionnel, des coachs, des managers, des cr&eacute;ateurs de contenus, etc &hellip; D&rsquo;optimiser ses outils de recherches d&rsquo;emploi et de candidatures via les nouvelles technologie de communications</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ffffff\"><span style=\"font-size:24px\">En + des ateliers, des entretiens avec un&middot;e conseiller&middot;&egrave;re de la Mission Locale du Pays d&rsquo;Aix afin de travailler sur votre projet professionnel, sur les d&eacute;marches administrative et vous aider par rapport aux difficult&eacute;s &agrave; l&rsquo;atteinte de vos objectifs.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ffffff\"><span style=\"font-size:24px\">Ce parcours s&rsquo;inscrit dans le Contrat d&rsquo;Engagement Jeune, une fois les 2 semaines intensives, vous serez accompagn&eacute; pour une dur&eacute;e minimal de 6 mois pour s&eacute;curiser votre r&eacute;ussite de projet professionnel.</span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<p><img src=\"/assets/images/MaillotGHINS.png\" style=\"max-height:300px\" /></p>\r\n</div>', 'null', '2023-05-23', 3, '2023-05-23'),
(8, '<p style=\"text-align:center\"><span style=\"color:#2ecc71\"><span style=\"font-size:36px\"><strong>S&#39;INSCRIRE</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:24px\">Contacte notre &eacute;quipe au <a href=\"https://www.google.com/search?q=mission+locale+aix&amp;client=firefox-b-d&amp;ei=nEFqZL-iLJqtkdUP6by-yAY&amp;gs_ssp=eJzj4tZP1zcsSbM0SE42NGC0UjWoMDRKtkxNMU5KMjRKSky1MLUyqDACAgMjE_Mk42RLS3PLFC-h3Mzi4sz8PIWc_OTEnFSFxMwKANgeFTo&amp;oq=missio&amp;gs_lcp=Cgxnd3Mtd2l6LXNlcnAQARgAMgsILhCvARDHARCABDIICAAQgAQQsQMyCwguEIAEEMcBEK8BMgsILhCABBDHARCvATIFCAAQgAQyBQgAEIAEMhAILhCKBRCxAxCDARDUAhBDMhAILhCDARDUAhCxAxCKBRBDMgsILhCABBDHARCvATILCC4QgAQQxwEQrwEyGQguEK8BEMcBEIAEEJcFENwEEN4EEOAEGAE6CggAEEcQ1gQQsAM6CggAEIoFELADEEM6CwgAEIoFELEDEIMBOgsIABCABBCxAxCDAToHCAAQigUQQzoHCC4QigUQQzoLCC4QigUQsQMQgwE6DQguEIoFEMcBENEDEEM6DgguEIAEELEDEMcBENEDOgsILhCABBCxAxCDAToUCC4QgAQQsQMQgwEQxwEQ0QMQ1AI6FQguEIoFEEMQlwUQ3AQQ3gQQ4AQYAToRCC4QgAQQsQMQgwEQxwEQ0QM6DgguEIAEELEDEIMBENQCOhkILhCABBDHARCvARCXBRDcBBDeBBDgBBgBSgQIQRgAUIYFWJsLYIUhaAFwAXgAgAGnAYgB9AWSAQMyLjSYAQCgAQHIAQrAAQHaAQYIARABGBQ&amp;sclient=gws-wiz-serp#\" rel=\"noopener noreferrer\" tabindex=\"0\">04 42 33 09 16</a> afin de rencontrer un conseiller de la Mission Locale afin de v&eacute;rifier ton &eacute;ligibilit&eacute; &agrave; ce parcours</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<p><img src=\"/assets/images/bblogo.png\" style=\"max-height:500px\" /></p>\r\n</div>', 'null', '2023-05-23', 4, '2023-05-23'),
(15, '<div class=\"text-center\">\r\n  <p class=\"fw-bold fs-2\" style=\"color: #f39c12;\">NOS PARTENAIRES:</p>\r\n</div>\r\n\r\n<div class=\"d-flex justify-content-center pb-5\">\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/ville-aix.png\" style=\"max-height: 100px;\">\r\n  </div>\r\n\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/missionlocal.jpg\" style=\"max-height: 100px;\">\r\n  </div>\r\n\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/famille.jpg\" style=\"max-height: 100px;\">\r\n  </div>\r\n</div>\r\n\r\n<div class=\"d-flex justify-content-center pb-5\">\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/club.png\" style=\"max-height: 100px;\">\r\n  </div>\r\n\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/izidream.png\" style=\"max-height: 100px;\">\r\n  </div>\r\n\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/mastercv.jpg\" style=\"max-height: 100px;\">\r\n  </div>\r\n</div>\r\n\r\n<div class=\"d-flex justify-content-center\">\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/skilleo.png\" style=\"max-height: 100px;\">\r\n  </div>\r\n\r\n  <div class=\"text-center\">\r\n    <img src=\"/assets/images/iconik.png\" style=\"max-height: 100px;\">\r\n  </div>\r\n</div>', 'null', '2023-05-23', 5, '2023-05-23');

-- --------------------------------------------------------

--
-- Structure de la table `page_gouvernance`
--

CREATE TABLE `page_gouvernance` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `image` text NOT NULL,
  `updated_at` date NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `page_gouvernance`
--

INSERT INTO `page_gouvernance` (`id`, `html`, `image`, `updated_at`, `position`, `created_at`) VALUES
(4, '<h1 style=\"text-align:center\">L&#39;Activit&eacute; de la Mission Locale</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&#39;association Mission Locale du Pays d&#39;Aix a pour objet de favoriser l&#39;insertion sociale et professionnelle des jeunes de 16 &agrave; 25 ans r&eacute;volus des communes du territoire de Pays d&#39;Aix-en-Provence, dans le cadre d&#39;une mission de service public de proximit&eacute; et des textes l&eacute;gaux et r&eacute;glementaires en vigueur (articles L5314-1 et suivants du Code du Travail et leurs d&eacute;crets d&#39;application).</p>\r\n\r\n<p>L&#39;activit&eacute; de la Mission Locale d&#39;Aix-en-Provence se d&eacute;finit par les financeurs &agrave; travers la transmission d&#39;&eacute;l&eacute;ments probants et factuels retra&ccedil;ant l&#39;accomplissement d&#39;indicateurs, d&#39;objectifs et d&#39;obligations :</p>\r\n\r\n<ul>\r\n	<li>la Convention Pluriannuelle d&#39;Objectifs (CPO) pour l&#39;&Eacute;tat</li>\r\n	<li>le Plan Annuel d&#39;Objectifs (PAO) pour la r&eacute;gion</li>\r\n	<li>le Plan d&#39;Action Ville (PAV) pour la Ville</li>\r\n	<li>Autres interm&eacute;diaires selon le type de projet en cours : Fonds Social Europ&eacute;en - Fonds de solidarit&eacute;s - M&eacute;c&eacute;nats - etc</li>\r\n</ul>', 'rfvd', '2023-05-23', 0, '2023-05-23'),
(30, '<h2 style=\"text-align:center\">Les Ressources de l&#39;association comprennent :</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>les subventions accord&eacute;es par l&#39;&Eacute;tat, les Collectivit&eacute;s Territoriales, le Conseil des territoires du Pays d&#39;Aix (Ville d&#39;Aix-en-Provence), la m&eacute;tropole Aix-Marseille, l&#39;Union Europ&eacute;ene, le Conseil R&eacute;gional, le Conseil d&eacute;partementale ou tout autre organisme, personnes morales de droit priv&eacute; ou public,</p>\r\n	</li>\r\n	<li>la participation des communes adh&eacute;rentes,</li>\r\n	<li>les int&eacute;r&ecirc;ts et revenue des biens et valeurs appartenant &agrave; l&#39;association,</li>\r\n	<li>les contributions diverses qu&#39;elle pourrait obtenir,</li>\r\n	<li>les dons et legs qui lui seraient faits,</li>\r\n	<li>les produits autoris&eacute;s de l&#39;activit&eacute; de l&#39;association,</li>\r\n	<li>toutes ressources autoris&eacute;es par la loi.</li>\r\n</ul>', 'ggg', '2023-05-23', 1, '2023-05-23'),
(31, '<h2 style=\"text-align:center\">La Gouvernance</h2>\r\n\r\n<p>L&#39;association se compose de :</p>\r\n\r\n<ul>\r\n	<li>Toute les communes du Pays d&#39;Aix adh&eacute;rentes et des membres des quatre coll&egrave;ges du Conseil d&#39;administration\r\n	<ul>\r\n		<li>Le coll&egrave;ge des Collectivit&eacute;s Territoriales, groupement de Collectivit&eacute;s Territoriales &hellip;;</li>\r\n		<li>Le coll&egrave;ge des Services de l&#39;&Eacute;tat et des Organismes Publics;</li>\r\n		<li>Le coll&egrave;ge des Partenaires &Eacute;conomiques et Sociaux;</li>\r\n		<li>Le coll&egrave;ge des Associations.</li>\r\n	</ul>\r\n	</li>\r\n</ul>', 'ggg', '2023-05-23', 3, '2023-05-23'),
(32, '<h2 style=\"text-align:center\">Pr&eacute;sidence</h2>\r\n\r\n<p>Madame JOISSAINS-MASINI Sophie : Maire d&#39;Aix-en-Provence Est pr&eacute;sident de droit de la Mission Locale du Pays d&#39;Aix, il peut d&eacute;l&eacute;guer cette pr&eacute;sidence &agrave; une personnalit&eacute; de son choix, qu&#39;il aura d&eacute;sign&eacute;e parmi les membres du Conseil d&#39;Administration. La d&eacute;l&eacute;gation en cours nomme Monsieur CHEVALIER &Eacute;ric - Pr&eacute;sident d&eacute;l&eacute;gu&eacute; de la Mission Locale du Pays d&#39;Aix.</p>\r\n\r\n<p>Monsieur CHEVALIER &Eacute;ric : 13e adjoint au Maire et &agrave; la Ville d&#39;Aix-en-Provence Occupe les fonctions d&#39;&Eacute;lu en tant que 13&egrave;me adjoint au Maire et la ville d&#39;Aix-en-Provence : d&eacute;l&eacute;gu&eacute; aux quartiers du Pont de l&#39;Arc et du Val Saint-Andr&eacute;- Arc- La Torse</p>', 'ggg', '2023-05-23', 5, '2023-05-23'),
(34, '<h2 style=\"text-align:center\">Le Bureau</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>constitu&eacute; de personne qualifi&eacute;es : (Bureau en cours d&#39;&eacute;lection)</p>\r\n\r\n<ul>\r\n	<li>Le Pr&eacute;sident d&eacute;l&eacute;gu&eacute;</li>\r\n	<li>Le Vice Pr&eacute;sident, fonction occup&eacute; actuellement par Madame MELKONIAN Ang&egrave;le</li>\r\n	<li>Le Secr&eacute;taire, fonction occup&eacute; actuellement par Madame VINCENTI Monique</li>\r\n	<li>Le Secr&eacute;taire Adjoint, fonction occup&eacute; actuellement par Monsieur MAZEL Philippe</li>\r\n	<li>Le Tr&eacute;sorier, fonction occup&eacute; actuellement par Monsieur PANSARD Patrick</li>\r\n	<li>Le Tr&eacute;sorier Adjoint, fonction occup&eacute; actuellement par Monsieur De Saintdo Philippe</li>\r\n	<li>Les quatre coll&egrave;ges du Conseil d&#39;administration</li>\r\n</ul>', 'ggg', '2023-05-23', 6, '2023-05-23'),
(35, '<ul>\r\n	<li>Le coll&egrave;ge des Collectivit&eacute;s Territoriales, groupement de Collectivit&eacute;s Territoriales :\r\n	<ul>\r\n		<li>Six repr&eacute;sentants&middot;es de la Ville d&#39;Aix-en-Provence;</li>\r\n		<li>Six repr&eacute;sentants&middot;es des Communes Adh&eacute;rentes;</li>\r\n		<li>Deux repr&eacute;sentants&middot;es de la M&eacute;tropole Aix-Marseille</li>\r\n		<li>Un&middot;e repr&eacute;sentant&middot;e du Conseil D&eacute;partemental</li>\r\n		<li>Un&middot;e repr&eacute;sentant&middot;e de la R&eacute;gion Sud</li>\r\n	</ul>\r\n	</li>\r\n	<li>Le coll&egrave;ge des Services de l&#39;&Eacute;tat et des Organismes Publics :\r\n	<ul>\r\n		<li>Monsieur le Sous-Pr&eacute;fet ou son&middot;sa repr&eacute;sentant&middot;e;</li>\r\n		<li>un&middot;e repr&eacute;sentant&middot;e de la d&eacute;l&eacute;gation d&eacute;partementale de P&ocirc;le Emploi;</li>\r\n		<li>un&middot;e repr&eacute;sentant&middot;e de la DPJJ- Direction de la Protection Judiciaire de la Jeunesse;</li>\r\n		<li>Deux repr&eacute;sentants&middot;es de la DREETS- Direction R&eacute;gionale de l&#39;Emploi, de l&#39;&Eacute;conomie du Travail et des Solidarit&eacute;s;</li>\r\n		<li>un&middot;e repr&eacute;sentant&middot;e de l&#39;inspection Acad&eacute;mique - &Eacute;ducation Nationale</li>\r\n	</ul>\r\n	</li>\r\n	<li>Le coll&egrave;ge des Partenaires &Eacute;conomiques et Sociaux :\r\n	<ul>\r\n		<li>&Eacute;cole ESG Aix-en-Provence;</li>\r\n		<li>Vice Pr&eacute;sidence CCIFA;</li>\r\n		<li>Soci&eacute;t&eacute; MGB;</li>\r\n		<li>Proxidom Services</li>\r\n	</ul>\r\n	</li>\r\n	<li>Le coll&egrave;ge des Associations :\r\n	<ul>\r\n		<li>DUNES Association de Pr&eacute;vention et de m&eacute;diation;</li>\r\n		<li>ACCES Multimedia;</li>\r\n		<li>AMS Environnement</li>\r\n	</ul>\r\n	</li>\r\n</ul>', 'ggg', '2023-05-23', 7, '2023-05-23');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `html_accueil` text DEFAULT NULL,
  `html_ghins` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `seo`
--

INSERT INTO `seo` (`id`, `html_accueil`, `html_ghins`, `created_at`, `updated_at`) VALUES
(1, '<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Mission Locale du Pays d\'Aix</title>\r\n<meta name=\"description\" content=\"Page d’accueil de la Mission Locale du Pays d\'Aix, votre passerelle vers l\'emploi et l\'autonomie. Nous vous accompagnons dans votre parcours professionnel et mettons à votre disposition des services d\'orientation, de formation et de mise en relation avec les employeurs.\">\r\n<meta name=\"keywords\" content=\"Mission Locale, Pays d\'Aix, emploi, autonomie, orientation professionnelle, formation, insertion professionnelle\">\r\n<meta name=\"author\" content=\"MLPA Mission Locale Pays Aix\">\r\n<meta name=\"robots\" content=\"index, follow\">\r\n<!-- site adapté aux mobiles -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<meta name=\"language\" content=\"fr\">\r\n<!-- textes pour partages du site -->\r\n<meta name=\"og:title\" content=\"Mission Locale Pays d\'Aix\">\r\n<meta name=\"og:description\" content=\"Votre passerelle vers l\'emploi et l\'autonomie. La Mission Locale du Pays d\'Aix vous accompagne dans votre insertion professionnelle et vous propose des services d\'orientation, de formation et de mise en relation avec les employeurs\">\r\n<meta name=\"og:image\" content=\"/assets/images/MLPA/logo.png\">\r\n    ', '<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Gaming House de l\'Insertion</title>\r\n<meta name=\"description\" content=\"La GHINS - La Gaming House de l\'Insertion, un tiers-lieu innovant au cœur d\'Encagnane, Aix-en-Provence. Accompagnement d\'insertion professionnelle pour les jeunes de 16 à 25 ans à travers le sport et l\'e-sport.\">\r\n<meta name=\"keywords\" content=\"GHINS, Gaming House, insertion professionnelle, jeunes, 16-25 ans, sport, e-sport, Encagnane, Aix-en-Provence\">\r\n<meta name=\"author\" content=\"MLPA Mission Locale Pays Aix\">\r\n<meta name=\"robots\" content=\"index, follow\">\r\n<!-- site adapté aux mobiles -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<meta name=\"language\" content=\"fr\">\r\n<!-- textes pour partages du site -->\r\n<meta name=\"og:title\" content=\"Mission Locale Pays d\'Aix\">\r\n<meta name=\"og:description\" content=\"Votre passerelle vers l\'emploi et l\'autonomie. La Mission Locale du Pays d\'Aix vous accompagne dans votre insertion professionnelle et vous propose des services d\'orientation, de formation et de mise en relation avec les employeurs\">\r\n<meta name=\"og:image\" content=\"/assets/images/GHINS/logo.png\">\r\n    ', '2023-05-23 13:05:58', '2023-05-23 13:05:58'),
(2, NULL, '<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Gaming House de l\'Insertion</title>\r\n<meta name=\"description\" content=\"La GHINS - La Gaming House de l\'Insertion, un tiers-lieu innovant au cœur d\'Encagnane, Aix-en-Provence. Accompagnement d\'insertion professionnelle pour les jeunes de 16 à 25 ans à travers le sport et l\'e-sport.\">\r\n<meta name=\"keywords\" content=\"GHINS, Gaming House, insertion professionnelle, jeunes, 16-25 ans, sport, e-sport, Encagnane, Aix-en-Provence\">\r\n<meta name=\"author\" content=\"MLPA Mission Locale Pays Aix\">\r\n<meta name=\"robots\" content=\"index, follow\">\r\n<!-- site adapté aux mobiles -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<meta name=\"language\" content=\"fr\">\r\n<!-- textes pour partages du site -->\r\n<meta name=\"og:title\" content=\"Mission Locale Pays d\'Aix\">\r\n<meta name=\"og:description\" content=\"Votre passerelle vers l\'emploi et l\'autonomie. La Mission Locale du Pays d\'Aix vous accompagne dans votre insertion professionnelle et vous propose des services d\'orientation, de formation et de mise en relation avec les employeurs\">\r\n<meta name=\"og:image\" content=\"/assets/images/GHINS/logo.png\">', '2023-05-23 11:19:06', '2023-05-23 11:19:06'),
(3, NULL, '<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Gaming House de l\'Insertion</title>\r\n<meta name=\"description\" content=\"La GHINS - La Gaming House de l\'Insertion, un tiers-lieu innovant au cœur d\'Encagnane, Aix-en-Provence. Accompagnement d\'insertion professionnelle pour les jeunes de 16 à 25 ans à travers le sport et l\'e-sport.\">\r\n<meta name=\"keywords\" content=\"GHINS, Gaming House, insertion professionnelle, jeunes, 16-25 ans, sport, e-sport, Encagnane, Aix-en-Provence\">\r\n<meta name=\"author\" content=\"MLPA Mission Locale Pays Aix\">\r\n<meta name=\"robots\" content=\"index, follow\">\r\n<!-- site adapté aux mobiles -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<meta name=\"language\" content=\"fr\">\r\n<!-- textes pour partages du site -->\r\n<meta name=\"og:title\" content=\"Mission Locale Pays d\'Aix\">\r\n<meta name=\"og:description\" content=\"Votre passerelle vers l\'emploi et l\'autonomie. La Mission Locale du Pays d\'Aix vous accompagne dans votre insertion professionnelle et vous propose des services d\'orientation, de formation et de mise en relation avec les employeurs\">\r\n<meta name=\"og:image\" content=\"/assets/images/GHINS/logo.png\">', '2023-05-23 11:19:15', '2023-05-23 11:19:15'),
(4, NULL, '<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Gaming House de l\'Insertion</title>\r\n<meta name=\"description\" content=\"La GHINS - La Gaming House de l\'Insertion, un tiers-lieu innovant au cœur d\'Encagnane, Aix-en-Provence. Accompagnement d\'insertion professionnelle pour les jeunes de 16 à 25 ans à travers le sport et l\'e-sport.\">\r\n<meta name=\"keywords\" content=\"GHINS, Gaming House, insertion professionnelle, jeunes, 16-25 ans, sport, e-sport, Encagnane, Aix-en-Provence\">\r\n<meta name=\"author\" content=\"MLPA Mission Locale Pays Aix\">\r\n<meta name=\"robots\" content=\"index, follow\">\r\n<!-- site adapté aux mobiles -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<meta name=\"language\" content=\"fr\">\r\n<!-- textes pour partages du site -->\r\n<meta name=\"og:title\" content=\"Mission Locale Pays d\'Aix\">\r\n<meta name=\"og:description\" content=\"Votre passerelle vers l\'emploi et l\'autonomie. La Mission Locale du Pays d\'Aix vous accompagne dans votre insertion professionnelle et vous propose des services d\'orientation, de formation et de mise en relation avec les employeurs\">\r\n<meta name=\"og:image\" content=\"/assets/images/GHINS/logo.png\">', '2023-05-23 11:19:22', '2023-05-23 11:19:22'),
(5, NULL, '<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Gaming House de l\'Insertion</title>\r\n<meta name=\"description\" content=\"La GHINS - La Gaming House de l\'Insertion, un tiers-lieu innovant au cœur d\'Encagnane, Aix-en-Provence. Accompagnement d\'insertion professionnelle pour les jeunes de 16 à 25 ans à travers le sport et l\'e-sport.\">\r\n<meta name=\"keywords\" content=\"GHINS, Gaming House, insertion professionnelle, jeunes, 16-25 ans, sport, e-sport, Encagnane, Aix-en-Provence\">\r\n<meta name=\"author\" content=\"MLPA Mission Locale Pays Aix\">\r\n<meta name=\"robots\" content=\"index, follow\">\r\n<!-- site adapté aux mobiles -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<meta name=\"language\" content=\"fr\">\r\n<!-- textes pour partages du site -->\r\n<meta name=\"og:title\" content=\"Mission Locale Pays d\'Aix\">\r\n<meta name=\"og:description\" content=\"Votre passerelle vers l\'emploi et l\'autonomie. La Mission Locale du Pays d\'Aix vous accompagne dans votre insertion professionnelle et vous propose des services d\'orientation, de formation et de mise en relation avec les employeurs\">\r\n<meta name=\"og:image\" content=\"/assets/images/GHINS/logo.png\">', '2023-05-23 11:20:22', '2023-05-23 11:20:22');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$RGEILIwipk2Tn2iRKo6Mn.Dvos3XUTEGlnwXYOppMAi5m.3JJiAZe', 1, NULL, '2023-05-22 09:22:05', '2023-05-22 09:22:05');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_accueil`
--
ALTER TABLE `page_accueil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_contact`
--
ALTER TABLE `page_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_ghins`
--
ALTER TABLE `page_ghins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_gouvernance`
--
ALTER TABLE `page_gouvernance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `page_accueil`
--
ALTER TABLE `page_accueil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `page_contact`
--
ALTER TABLE `page_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `page_ghins`
--
ALTER TABLE `page_ghins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `page_gouvernance`
--
ALTER TABLE `page_gouvernance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
