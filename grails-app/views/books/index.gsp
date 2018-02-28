<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
    <title>Book Store Books</title>

    <style>
        .book {
            display: list-item;
            max-height: 100px;
        }
        p {
            position: relative;
            float: left;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

        }
        .cover {
            vertical-align: middle;
            max-height: 100px;
            max-width: 60px;
        }
    </style>
</head>

<body>
<h1> BOOKS </h1>
<ul>
    <table>
        <g:each in="${bkList}">
            <tr>
                <td><img class="cover" src="../book/showCover/${it.id}" class="img-thumbnail" alt="${it.title} Cover"></td>
                <td>${it.title}</td>
                <td> by </td>
                <td>${it.author}</td>
                <td><img class="cover" src="../book/showCover/${it.id}" class="img-thumbnail" alt="${it.title} Cover"></td>
            </tr>
        </g:each>
    </table>
</ul>
</body>
</html>