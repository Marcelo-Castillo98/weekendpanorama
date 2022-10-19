-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2022 a las 23:39:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdweekendpanorama`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id` int(11) NOT NULL,
  `place_name` varchar(40) NOT NULL,
  `ubication` varchar(500) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `price` bigint(20) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id`, `place_name`, `ubication`, `description`, `price`, `img`) VALUES
(1, 'Monumento Natural Cerro Ñielol', 'https://www.google.com/maps/place/Monumento+Natural+Cerro+%C3%91ielol/@-38.7257331,-72.5883828,16.14z/data=!4m5!3m4!1s0x0:0x2db4220f8d86396f!8m2!3d-38.7241878!4d-72.5884261?hl=es-ES', 'La unidad destaca por la protección de las especies de fauna como la chilla, aguilucho de cola rojiza, culebra cola corta y sapito cuatro ojos. En lo que a flora se refiere, están las especies arbóreas huillipatagua, lleuque y peumo', 1500, 'https://temucocity.net/wp-content/uploads/2020/08/cerro-%C3%B1ielol-temuco.jpg'),
(2, 'Parque Municipal Germán Becker', 'https://www.google.com/maps/place/Estadio+Bicentenario+Germ%C3%A1n+Becker/@-38.7428497,-72.6214477,17z/data=!3m1!4b1!4m5!3m4!1s0x9614d4068be98443:0x32ca5e2e89313fa!8m2!3d-38.7428497!4d-72.619259?hl=es-ES', 'En pleno centro de la ciudad se encuentra el parque Germán Becker, a un costado del estadio del mismo nombre.\r\n\r\nCanchas de básquetbol, de tenis, un minigolf, piscina olímpica e incluso una pista para patinaje artístico son algunas de las instalaciones que tiene el Parque Estadio Germán Becker, el mayor espacio deportivo al aire libre de Temuco, un mezcla de naturaleza, deporte y diversión.', 0, 'https://media-cdn.tripadvisor.com/media/photo-s/08/07/ae/5d/estadio-german-becker.jpg'),
(3, 'Teatro Municipal de Temuco Camilo Salvo', 'https://www.google.com/maps/place/Teatro+Municipal+de+Temuco/@-38.7404937,-72.6251802,17z/data=!3m1!4b1!4m5!3m4!1s0x9614d405fe235e09:0xb24c4b58372e063d!8m2!3d-38.7405221!4d-72.6228795?hl=es-ES', 'Gracias a la íntima vinculación del Teatro y su público, en poco más de una década de historia este centro cultural ha puesto en escena más de 400 espectáculos, que con gran calidad artística han acogido al ballet clásico y folclórico, danza contemporánea, música docta y popular, teatro, ópera y zarzuela.', 3200, 'https://www.temucoontour.com/wp-content/uploads/2019/08/BOLETERIA-1024x575.jpg'),
(4, 'Casino Dreams Araucania', 'https://www.google.cl/maps/place/Hotel+Casino+Dreams+Araucan%C3%ADa/@-38.7328568,-72.6177692,17z/data=!3m1!4b1!4m5!3m4!1s0x9614d54a7377a82b:0x6c07022376a2b5f8!8m2!3d-38.732861!4d-72.6155805', 'Ofrece a sus visitantes una mezcla perfecta entre elegancia y descanso. El paisaje que rodea a Dreams Temuco es un escenario que vuelve ideal a este casino, el que cuenta con lujosas instalaciones tanto en su hotel, sus servicios de comidas e incluso en sus salas de juegos. Además,  Dreams Temuco destaca por su buena atención y sus constantes actividades que buscan brindar un agradable rato a quienes visitan este lugar.', 4100, 'https://cbb.cl/wp-content/uploads/2019/03/4-4-800x647-700x566.jpg'),
(5, 'Museo Nacional Ferrioviario Pablo Neruda', 'https://www.google.com/maps/place/Museo+Nacional+Ferroviario+Pablo+Neruda/@-38.726112,-72.5711523,15z/data=!4m2!3m1!1s0x0:0xc935fa1893785cc6?sa=X&ved=2ahUKEwjMl7WKx-r6AhWKJrkGHfDjAuAQ_BJ6BAg3EAU', 'El Museo Ferroviario se ha impuesto la tarea de dar vida a los coches y locomotoras bajo la premisa de los “Trenes en Movimiento”, iniciativa que busca recuperar el romanticismo de los viajes a vapor, con la puesta en marcha del Tren Turístico de La Araucanía.', 1000, 'https://th.bing.com/th/id/R.4b8ac8c3531dde9c1daff218cf457fad?rik=m7vIuzG14uwzqw&pid=ImgRaw&r=0'),
(6, 'Vuelo Araucanía', 'https://www.google.cl/maps/place/Araucan%C3%ADa/@-38.6020191,-73.2942499,8z/data=!3m1!4b1!4m5!3m4!1s0x9614b2c8d0e8c75d:0x31dd188520a10606!8m2!3d-38.948921!4d-72.331113', 'Dedicados al 100% Parapente en la Araucanía, realizando vuelos de parapente biplaza principalmente en Temuco y Puerto Saavedra. Nuestra pasión por el vuelo nos ha llevado a tomarnos esta actividad con seriedad y seguridad para brindar a nuestros pasajeros el mejor servicio y disfrutar junto a ellos cada segundo de esta maravillosa experiencia!', 80000, 'http://vueloaraucania.cl/wp-content/uploads/2018/10/cerro-bicicletas.jpg'),
(7, 'Equspatagonia', 'https://www.google.cl/maps/place/Equspatagonia/@-38.8244266,-72.4586012,11.25z/data=!4m5!3m4!1s0x9614d341ff4e7b61:0x82a3d14a0e466a3a!8m2!3d-38.8356875!4d-72.4428125', 'Ya no tienes que salir de Temuco para pasear a caballo. Excelente forma de liberar estrés y conectarse con la naturaleza.Realizamos recorridos por el campo en sector Huichahue, Km 18, Granja Llamas del Sur. La duración es de 1 hora. Pueden cabalgar niños desde 8 años, contamos con caballos herrados y mansos.', 15000, 'http://www.equspatagonia.cl/images/temuco03.jpg'),
(8, 'Paintball Canopy Temuco ', 'https://www.google.com/maps/dir/-39.8019409,-73.2411503/canopy+lautaro+temuco/@-39.1660063,-73.401666,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x966b312309136a85:0xe084699966b3338c!2m2!1d-72.445671!2d-38.527621', 'El recinto cuenta con un canopy doble de 340 mts de largo y 22 de altura máxima. Ademas de un gran quincho con capacidad para 120 personas y una piscina. también incluye zona de camping.', 20000, 'https://static.wixstatic.com/media/a97202_822d3d600161468f98a5fcb69734771a~mv2.jpeg/v1/fill/w_560,h_368,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/a97202_822d3d600161468f98a5fcb69734771a~mv2.jpeg'),
(9, 'Parque Urbano Isla Cautin ', 'https://www.bing.com/search?q=Parque+Urbano+Isla+Cautin&cvid=5b8c5ff78a2c4540aa7af8e94e417cd6&aqs=edge..69i57.652j0j1&FORM=ANNTA1&PC=W069', 'El nuevo recinto concentra distintas áreas enfocadas a la recreación y actividad física, como zonas de picnic, cancha de bochas, juegos infantiles, una plaza de deportes urbanos y también, un Memorial de los DDHH cerca del río Cautín, el cual está pensado para recordar a las víctimas de la dictadura.', 0, 'https://www.tiempo21.cl/wp-content/uploads/isla2-655x360.jpg'),
(10, 'Plaza Anibal Pinto', 'https://www.google.com/maps/place/Plaza+De+Armas+Anibal+Pinto/@-38.7400001,-72.5901037,15z/data=!4m13!1m6!3m5!1s0x9614d3dddd54bfff:0x312df75fd19f02ce!2sPlaza+De+Armas+Anibal+Pinto!8m2!3d-38.7400001!4d-72.5901037!3m5!1s0x9614d3dddd54bfff:0x312df75fd19f02ce!8m2!3d-38.7400001!4d-72.5901037!15sChlwbGF6YSBhbmliYWwgcGludG8gdGVtdWNvkgEFcGxhemHgAQA', 'La Plaza Aníbal Pinto (también llamada Plaza de Armas Aníbal Pinto o Plaza de Armas de Temuco) es un área verde de Temuco, Chile, localizada en el corazón de Temuco. Posee añosos árboles y cuidados jardines, donde destaca la gran escultura llamada «Monumento a la Araucanía», obra realizada por artistas de la ciudad.', 0, 'https://www.temucoontour.com/wp-content/uploads/2019/07/20150820-_MG_2594-3.jpg'),
(11, 'Spa Agua de Rosas', 'https://www.google.com/maps/place/Tinajas+temperadas+-+Masajes+y+Spa+en+Temuco+-+Spa+r%C3%BAstico+-+Agua+de+Rosas+-+Labranza+%2B56975117811/@-38.7613233,-72.7536588,14.5z/data=!4m5!3m4!1s0x0:0xc14a093e1c04ba55!8m2!3d-38.7606942!4d-72.7465643?hl=es-419', 'Empresa dedicada entregar relajación y vitalidad a nuestros clientes a través de Tinajas temperadas y terapias de spa, estética y belleza con una Atención Personalizada en cada box de tinaja.', 30000, 'https://spaaguaderosas.cl/wp-content/uploads/2021/12/velada_585.png'),
(12, 'Turismo Trufulco', 'https://www.google.com/maps/place/Turismo+TrufulCo/@-35.4432106,-106.2422428,4z/data=!3m1!4b1!4m5!3m4!1s0x9614d5e49d1e898b:0x914eac8ed54473c7!8m2!3d-36.8219195!4d-88.1804', 'Turismo Trufulco es una empresa regional registrada, certificada, con calidad turística, guías certificados expertos en primeros auxilios y en la zona, todo para que su experiencia sea la mejor.', 25000, 'https://www.turismotrufulco.cl/gallery_gen/028a59a90297c7d9f6889a598ed6c40b.jpg'),
(13, 'Savitar Yoga Temuco', 'https://www.google.cl/maps/place/Lago+Calafqu%C3%A9n+1260,+Temuco,+Araucan%C3%ADa/@-38.7393591,-72.6297099,17z/data=!3m1!4b1!4m5!3m4!1s0x9614d41025ab4927:0x19440c5cba775c4e!8m2!3d-38.7393633!4d-72.6275212', 'Practicar Yoga te traerá múltiples beneficios. Atrévete y comienza este hermoso camino.Balance cuerpo y mente', 4000, 'https://savittartemuco.cl/wp-content/uploads/2022/09/banner-DETOX-1536x800.jpg'),
(14, 'Piscina Oasis Temuco', 'https://www.google.com/maps/place/Piscina+Oasis+Temuco/data=!3m1!4b1!4m2!3m1!1s0x96152b3fa4f4f075:0x59b2885e51f21852', 'Excelente lugar para disfrutar en familia, piscinas muy bien mantenidas y limpias, bellas y amplias áreas verdes, disponibilidad de mesas, parrillas y baños.', 5000, 'https://lh3.googleusercontent.com/p/AF1QipNwO7BgfwR1EDHo3sm8SLLjv_nc0GSaFKV5AU10=w1080-h608-p-no-v0'),
(15, 'Granja Llamas del Sur', 'https://www.google.com/maps/place/GRANJA+LLAMAS+DEL+SUR/@-38.8356475,-72.4449829,17z/data=!3m1!4b1!4m5!3m4!1s0x9614c5c5e690e587:0x293501a3b30f522a!8m2!3d-38.8356475!4d-72.4427942', 'La entrada incluye estadía durante todo el horario de apertura, recorrido guiado por los animales de la granja de 1 hr.', 6000, 'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/129681386.jpg?k=e0b61b995399d14c007f5d2d7b7282cdfa1ac7d888b9f627d6c1d61e1d4793a7&o='),
(16, 'Centro de masajes y terapias Antu Milla', 'https://www.bing.com/search?q=masajes+temuco&qs=n&form=QBRE&sp=-1&pq=masajes+temuco&sc=0-14&sk=&cvid=1FA3639843DA4C6A82B48B400EB30128&ghsh=0&ghacc=0&ghpl=', 'Realizamos masajes con piedras calientes, descontracturantes, drenaje linfático, relajación y tratamientos: reductivos, reafirmantes y anticeluliticos.', 15000, 'https://th.bing.com/th?id=AD4xt6L+MeDJwxQ480x360&rs=1&pid=ImgDet'),
(17, 'Centro Recreacional Osos de Berlin ', 'https://www.google.com/maps/place/Centro+Recreacional+Osos+de+Berlin/@-38.7748832,-72.7673788,17z/data=!3m1!4b1!4m5!3m4!1s0x9615297c5286eddf:0xca5aa8509fc05da7!8m2!3d-38.7748441!4d-72.7651817', 'Sorpréndanse con la magia de un escenario natural maravilloso y celebren su matrimonio en Osos de Berlín. Este centro de eventos ideal para celebraciones de estilo rústico, cuenta con árboles centenarios y preciosos jardines para que puedan disfrutar de su gran día en un entorno único en el que la naturaleza será su mejor aliada.', 6000, 'https://cdn0.matrimonios.cl/vendor/5819/original/960/jpg/fvnb8744_8_155819-157286962377033.webp'),
(18, 'Museo Regional de La Araucanía', 'https://www.google.com/maps/dir/-37.0057056,-73.1467615/Museo+Regional+de+La+Araucan%C3%ADa/@-37.7921572,-73.8300017,8z/data=!4m9!4m8!1m1!4e1!1m5!1m1!1s0x9614d3effdd5ec85:0x46e1f0c3750f0eb6!2m2!1d-72.6028858!2d-38.7372745', 'El museo custodia cerca de 3.000 objetos patrimoniales de la Araucanía. Entre ellos destacan las colecciones cerámicas de los grupos Pitrén (600-1450 d.C.), primer pueblo agro-alfarero de la región; las urnas funerarias de El Vergel (1.100 -1550 d.C.) y diversos objetos etnográficos mapuche: ornamentos de platería, textiles y objetos domésticos.​', 5000, 'https://th.bing.com/th/id/OIP.SuGamKC5cS_f-_goBbYwjQHaE8?pid=ImgDet&rs=1'),
(19, 'Parque Zoologico Niri-Vilcun', 'https://www.google.com/maps/place/Sofo/@-38.6917045,-72.5405936,17z/data=!3m1!4b1!4m5!3m4!1s0x9614d28c01a70797:0xe4f14c1024666d05!8m2!3d-38.6917045!4d-72.5384049', 'El Parque Zoológico cuenta con una extensión de 5 hás. aproximadamente. Allí se congregan diferentes especies de animales traídos de diversas partes de América, presentándose como el primer Zoológico de Temuco y el más moderno de Chile.', 6000, 'https://4.bp.blogspot.com/-KhDfS157e94/ThlB5y_i_wI/AAAAAAAAAtA/fcyXdb0HcWc/s1600/Ayr+3.JPG'),
(20, 'Water Slide Park', 'https://www.google.com/maps?ll=-38.691013,-72.3951&z=15&t=m&hl=es-419&gl=CL&mapclient=embed&cid=15096689406473294121', 'Water Slide Park cuenta con 6 hectáreas de flora nativa sobre las cuales se extienden infinitas posibilidades de recreación para grandes y pequeños. Enormes toboganes acuáticos y piscinas de distintas profundidades se extienden entre la naturaleza, contando con la seguridad y la protección necesarias para relajarse y pasarlo bien en familia.', 7000, 'https://www.waterslidepark.cl/wp-content/uploads/2020/12/water10.jpg'),
(21, 'Piscina Quimey Hueney', 'https://www.google.com/maps/place/Quimey+Hueney/@-38.7673549,-72.7391253,17z/data=!3m1!4b1!4m5!3m4!1s0x96152a20f0627e4b:0x5dd6cdbdb41b99ae!8m2!3d-38.7673549!4d-72.7369366', 'El recorrido comienza por un puente de gran altura, que permite observar ciervos de corta edad y admirar el paisaje y el entorno. Luego se pueden observar diferentes especies de Pumas chilenos, Alpacas, LLamas y Pudúes. También se puede admirar aves chilenas y especies tropicales.', 5000, 'https://fastly.4sqi.net/img/general/600x600/27986324_F3mPb6gNRUtgkbOfpAJp1LuevPLDAywpvjc-5EXeu0I.jpg'),
(22, 'Zoológico de Ti-koyam', 'https://www.google.com/maps/search/Calle+Ruta,+5+-+Sur,km.+653,pillanlelbun,+4780000,+Temuco/@-38.8069606,-72.6619894,13z/data=!3m1!4b1', 'Un paseo con aves y animales a la vista, grandes espacios para picnic, canchas de fútbol y una espectacular piscina, es lo que ofrece el Parque Zoológico Ty Koyam', 7000, 'https://araucanianoticias.cl/wp-content/uploads/2011/03/MG_2846.jpg'),
(23, 'Granja Educativa El Dorado', 'https://www.bing.com/maps?&ty=18&q=Granja%20Educativa%20de%20Villarrica%20El%20Dorado&ss=ypid.YN8039x7339354911927299094&ppois=-39.37929153442383_-72.23799896240234_Granja%20Educativa%20de%20Villarrica%20El%20Dorado_YN8039x7339354911927299094~&cp=-39.379292~-72.237999&v=2&sV=1', 'Granja educativa el dorado es un centro pedagogico que incluye variedad de aves y animales domestico al servicio de la comunidad', 3000, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d5/7a/8b/photo0jpg.jpg?w=1200&h=-1&s=1'),
(24, 'Patagonia Photography', 'https://www.google.com/maps/place/Temuco,+Araucan%C3%ADa/@-38.7290895,-72.6027211,13z/data=!3m1!4b1!4m5!3m4!1s0x9614d3cec21a2223:0xc2fa8887ff008408!8m2!3d-38.7383905!4d-72.5904598', 'Ven a conocer desde el aire el majestuoso volcán Villarrica. Tours aéreos desde Temuco a todo el sur de Chile.', 35000, 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Volc%C3%A1n_Villarrica_Chile.jpg'),
(25, 'SurXtremo', 'https://www.bing.com/search?q=SurXtremo+temuco&cvid=29b4f0d6ed2849239c161e818fe21b31&aqs=edge..69i57.2762j0j1&FORM=ANNTA1&PC=W069', 'Viajes Turismo Sur Extremo es una agencia de viajes y tour operador que ofrece entretenidas y enriquecedoras experiencias en este hermoso lugar de la región de la Araucanía.', 50000, 'https://www.surxtremo.cl/wp-content/uploads/2018/07/15069010_10154728642701639_8202958544686129449_o.jpg'),
(26, 'Centro de Esquí Las Araucarias', 'https://www.bing.com/maps?q=centro+de+ski+las+araucarias&FORM=HDRSC4', 'Complejo turístico inserto en un hermoso lugar rodeado de milenarias Araucarias, cuenta con completas instalaciones para asegurar su entretención, como canchas de esquí, andariveles, departamentos, hostería, cafetería-restaurante, todo diseñado para que usted y su familia disfruten de unas inolvidables vacaciones. ', 37000, 'https://th.bing.com/th/id/OIP.bKj4dftOkAXHFpAulHRacQHaEK?pid=ImgDet&rs=1'),
(27, 'Kutralco Expediciones', 'https://www.bing.com/maps?&ty=18&q=Kutralco%20Turismo&ss=ypid.YN8039x8769279475492069013&ppois=-38.74163818359375_-72.59101867675781_Kutralco%20Turismo_YN8039x8769279475492069013~&cp=-38.741638~-72.591019&v=2&sV=1', 'Tour Operador de experiencias exclusivas basadas en la naturaleza. Ofrece diversos servicios de tours guiados, kayak y relajación', 50000, 'https://sp3business.com/web/image/12202-f41160fd/2.jpg'),
(28, 'Refugio Tinquilco', 'https://www.google.com/maps/search/refugio+tinquilco/@-39.0838825,-72.8439298,8.25z', 'Es un refugio de montaña, con restaurante, sauna, playa, biblioteca, discos, casetes y cds de música. También tiene un arboretum y terrace con jardín. Es un lugar perfecto para aquellos que disfrutan de las caminatas, y desean descansar en medio de la naturaleza.', 35000, 'https://media-cdn.tripadvisor.com/media/photo-s/09/5e/33/44/refugio-tinquilco.jpg'),
(29, 'Deportivo Frontera Country Clubtemuco', 'https://www.bing.com/maps?&ty=18&q=Deportivo%20Frontera%20Country%20Clubtemuco&ss=ypid.YN8039x7809052266763706265&ppois=-38.69707107543945_-72.54212951660156_Deportivo%20Frontera%20Country%20Clubtemuco_YN8039x7809052266763706265~&cp=-38.697071~-72.54213&v=2&sV=1', 'Esta cancha está siempre disponible para todo golfista que viaja al sur y desea practicar su deporte favorito. Aquí podrán comprobar el rasgo más característico del temuquense, su hospitalidad, sin duda ya conocida, entregándoles además un hermoso panorama para el gusto más exigente.', 40000, 'https://th.bing.com/th/id/OIP.rlpe3g59lEpn5CSlk3NBhQHaE8?pid=ImgDet&rs=1'),
(30, 'Trampoline Park Temuco', 'https://www.bing.com/maps?osid=34ed74e5-39ca-4bb9-84a8-b001fa70c502&cp=-38.752704~-72.610386&lvl=16&imgid=942311f2-0842-48e2-93fa-a83d7a21b473&v=2&sV=2&form=S00027}', 'Desde los más pequeños hasta los más grandes que aman la adrenalina podrán divertirse en Trampoline Park, un espacio para ir a pasar un momento diferente con la familia y los amigos.', 4500, 'https://th.bing.com/th?id=AOV6vt+NAGceJuA480x360&rs=1&pid=ImgDet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user_name`, `password`, `name`, `last_name`) VALUES
(1, 'usuario1_1', '12345', 'Juan', 'Perez'),
(2, 'username2', '54321', 'Ana', 'Lopez'),
(3, 'user3', '123456', 'Pedro', 'Mora'),
(4, 'usuarionuevo33', '12345', 'marcelo', 'san');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
