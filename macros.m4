divert(-1)

define(`_startpage',`dnl
<html>
<head>
<title>$1</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>')

define(`_endpage',`dnl
</body>
</html>')

define(`_itemize',`dnl
<ul>
_listitems($@)
</ul>')

define(`_enumerate',`dnl
<ol>
_listitems($@)
</ol>')

define(`_listitems',`dnl
ifelse($#, 0, `',	
$#, 1, `<li>$1</li>',
`<li>$1</li>
_listitems(shift($@))')')

define(`_title',`dnl
<h1>$1</h1>')

define(`_section',`dnl
<h2>$1</h2>')

define(`_subsection',`dnl
<h3>$1</h3>')

define(`_par',`dnl
<p>$1</p>')

define(`_timestamp', `dnl
Last update: esyscmd(`date')')

define(`_article', `dnl
"$1"<br>
$2, <i>$3</i> <b>$4</b>, $5 ($6).')

define(`_activity', `dnl
$1 - $2<br>
$3')

define(`_link', `dnl
<a href=$2>$1</a>')

define(`_navbar', `dnl
<ul class="nav">
_listitems(dnl
_link(`Home', `"index.html"'),
_link(`Vitae', `"vitae.html"'),
_link(`Resources', `"resources.html"'))
</ul>')

define(`LQ', `dnl
changequote([,])`dnl'
changequote`'')

define(`RQ', `dnl
changequote([,])dnl`
'changequote`'')

divert(0)
