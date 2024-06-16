<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
// $routes->get('/mood-tracker', 'MoodTrackerControl::index');
// $routes->post('/simpan-hasil-mood', 'MoodTrackerControl::simpanHasilMood');
// $routes->get('/grafik-mood', 'GrafikControl::index');
// $routes->get('/login', 'DataIbuControl::login');
// $routes->post('/login', 'DataIbuControl::login');
// $routes->get('/signup', 'DataIbuControl::signup');
// $routes->post('/signup', 'DataIbuControl::signup');
// $routes->get('/dashboard', 'DataIbuControl::dashboard');
// $routes->get('/logout', 'DataIbuControl::logout');
// $routes->get('/edit', 'DataIbuControl::edit');
// $routes->post('/update', 'DataIbuControl::update');

$routes->get('data-admin', 'DataAdminControl::index', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'data-admin', 'DataAdminControl::create', ['filter' => 'cors']);
$routes->match(['put', 'options'], 'update/data-admin/(:segment)', 'DataAdminControl::update/$1');
$routes->match(['delete', 'options'], 'delete/data-admin/(:segment)', 'DataAdminControl::delete/$1');

$routes->get('data-ibu', 'DataIbuControl::index', ['filter' => 'cors']);

$routes->match(['post', 'options'], 'data-ibu', 'DataIbuControl::create', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'update/data-ibu/(:segment)', 'DataIbuControl::update/$1');
$routes->match(['delete', 'options'], 'delete/data-ibu/(:segment)', 'DataIbuControl::delete/$1');
$routes->get('data-ibu/(:segment)', 'Ibu::show/$1');

$routes->get('data-psikolog', 'DataPsikologControl::index', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'data-psikolog', 'DataPsikologControl::create', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'update/data-psikolog/(:segment)', 'DataPsikologControl::update/$1');
$routes->match(['put', 'options'], 'data-psikolog/(:segment)', 'DataPsikologControl::update/$1');
$routes->match(['delete', 'options'], 'delete/data-psikolog/(:segment)', 'DataPsikologControl::delete/$1');

$routes->get('artikel', 'ArtikelControl::index', ['filter' => 'cors']);
$routes->get('artikel/(:segment)', 'ArtikelControl::show/$1', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'artikel', 'ArtikelControl::create', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'update/artikel/(:segment)', 'ArtikelControl::update/$1');
$routes->match(['put', 'options'], 'artikel/(:segment)', 'ArtikelControl::update/$1');
$routes->match(['delete', 'options'], 'delete/artikel/(:segment)', 'ArtikelControl::delete/$1');

$routes->group("api", ['filter' => 'cors'], function ($routes) {
$routes->get("data_admin", "Admin::index", ['filter' => 'authFilter']);
$routes->post("registeradmin", "RegisterAdmin::index");
$routes->post("loginadmin", "LoginAdmin::index");
});

$routes->group("api", ['filter' => 'cors'], function ($routes) {
$routes->get("data_ibu", "Ibu::index", ['filter' => 'authFilter']);
$routes->post("register", "RegisterIbu::index");
$routes->post("login", "LoginIbu::index");
});

// QUIZ EPDS
$routes->get('/', 'Home::index');
$routes->match(['get', 'options'], '/kuisioner', 'KuisionerControl::index');
$routes->match(['post', 'options'], '/simpanHasil', 'KuisionerControl::simpanHasil');
$routes->get('simpanHasil', 'KuisionerControl::read');
$routes->get('semuaHasilKuisioner', 'KuisionerControl::readAll');
$routes->match(['delete', 'options'], 'delete/kuisioner/(:segment)', 'KuisionerControl::delete/$1');

// QUIZ MODEL SURYANI
$routes->get('getQuestions', 'KuisionerControl_2::index');
$routes->match(['post', 'options'],'simpanHasil_2', 'KuisionerControl_2::simpanHasil_2');
$routes->get('simpanHasil_2', 'KuisionerControl_2::read');
$routes->get('semuaHasilKuisioner_2', 'KuisionerControl_2::readAll');
$routes->match(['delete', 'options'], 'delete/simpanHasil_2/(:segment)', 'KuisionerControl_2::delete/$1');

$routes->match(['get', 'options'], '/', 'Home::index');
$routes->match(['get', 'options'], 'audio', 'AudioControl::index');
$routes->match(['post', 'options'], 'audio', 'AudioControl::create');
$routes->match(['post', 'options'], 'audio/ubah/(:num)', 'AudioControl::update/$1');
$routes->match(['delete', 'options'], 'audio/(:num)', 'AudioControl::delete/$1');

$routes->match(['get', 'options'], '/', 'Home::index');
$routes->match(['get', 'options'], 'video', 'VideoControl::index');
$routes->match(['get', 'options'], 'video/getNotRandom', 'VideoControl::getNotRandom');
$routes->match(['get', 'options'], 'video/(:num)', 'VideoControl::show/$1');
$routes->match(['post', 'options'], 'video', 'VideoControl::create');
$routes->match(['post', 'options'], 'video/ubah/(:num)', 'VideoControl::update/$1');
$routes->match(['delete', 'options'], 'video/(:num)', 'VideoControl::delete/$1');

// QUIZ ANTEPARTUM
$routes->get('getQuestionss', 'AntepartumControl::index');
$routes->match(['post', 'options'], 'simpanHasilAntepartum', 'AntepartumControl::simpanHasilAntepartum');
$routes->get('simpanHasilAntepartum', 'AntepartumControl::read');
$routes->get('semuaHasilAntepartum', 'AntepartumControl::readAll');
$routes->match(['delete', 'options'], 'delete/simpanHasilAntepartum/(:segment)', 'AntepartumControl::delete/$1');

$routes->match(['get', 'options'], 'kategori-video', 'KategoriVideoControl::index');

$routes->match(['get', 'options'], 'kategori-audio', 'KategoriAudioControl::index');


//Thread
$routes->match(['get', 'options'], 'kategori-thread', 'KategoriThreadControl::index');

$routes->match(['get', 'options'], '/', 'Home::index');
$routes->match(['get', 'options'], 'thread', 'ThreadControl::index');
$routes->get('thread/(:num)', 'ThreadControl::getThreadById/$1');
$routes->match(['get', 'options'], 'thread/(:num)', 'ThreadControl::show/$1');
$routes->match(['post', 'options'], 'thread', 'ThreadControl::create');
$routes->match(['post', 'options'], 'thread/ubah/(:num)', 'ThreadControl::update/$1');
$routes->match(['delete', 'options'], 'thread/(:num)', 'ThreadControl::delete/$1');

//Reply
$routes->match(['get', 'options'], '/', 'Home::index');
$routes->get('reply/(:segment)', 'ReplyControl::show/$1');
$routes->get('reply/thread/(:num)', 'ReplyControl::getRepliesByThread/$1');
$routes->match(['get', 'options'], 'reply', 'ReplyControl::index');
$routes->match(['get', 'options'], 'reply/(:num)', 'ReplyControl::show/$1');
$routes->match(['post', 'options'], 'reply', 'ReplyControl::create');
$routes->match(['post', 'options'], 'reply/ubah/(:num)', 'ReplyControl::update/$1');
$routes->match(['delete', 'options'], 'reply/(:num)', 'ReplyControl::delete/$1');

//Reply Replies
$routes->match(['get', 'options'], '/', 'Home::index');
$routes->match(['get', 'options'], 'replies', 'BalasanReplyControl::index');
$routes->get('replies/reply/(:num)', 'BalasanReplyControl::getRepliesByReply/$1');
$routes->match(['post', 'options'], 'replies', 'BalasanReplyControl::create');
$routes->match(['delete', 'options'], 'replies/(:num)', 'BalasanReplyControl::delete/$1');
$routes->get('balasan_reply/(:num)', 'BalasanReplyControl::getBalasanReplyById/$1');

//Report
$routes->match(['post', 'options'],'report/create', 'ReportControl::createReport');
$routes->get('report', 'ReportControl::getReport');
$routes->match(['delete', 'options'],'report/delete/(:num)', 'ReportControl::deleteReport/$1');
