<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['posts'] = 'posts/index';
$route['subjects/syllabus'] = 'subjects/syllabus';
$route['subjects/notes'] = 'subjects/notes';
$route['notices'] = 'notices';
$route['users/register'] = 'users/register';
$route['pages/(:any)'] = 'pages/view/$1';
$route['posts/update'] = 'posts/update';
$route['posts/create'] = 'posts/create';
$route['posts/(:any)'] = 'posts/view/$1';
$route['users/login'] = 'users/login';
$route['default_controller'] = 'posts';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
