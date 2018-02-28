<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
    <title>Book Store Authors</title>
</head>

<body>
<h1> AUTHORS </h1>
<h1></h1>
<ul>
    <g:each in="${authList}">
        <li> ${it.name} <br/></li>
            <g:each in="${it.title}">
                <li> &emsp;&emsp;${it} </li>
            </g:each>
    </g:each>
</ul>
</body>
</html>