<!DOCTYPE html>
<nav class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container-fluid">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <!-- This makes the button for collapsed navbar -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/${grails.util.Metadata.current.getApplicationName()}">
                <div class="navbar-brand title-name">Book Store</div>
            </a>

            <!-- Login / Logout buttons -->
            <sec:ifLoggedIn><li><a href="#"><sec:username/></a></li></sec:ifLoggedIn>
            <li>
                <sec:ifLoggedIn><g:link controller="Logout">log out</g:link></sec:ifLoggedIn>
                <sec:ifNotLoggedIn><g:link controller="login" action="auth">Login</g:link></sec:ifNotLoggedIn>
            </li>

        </div><!-- /.navbar-header -->

    <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><g:link controller="Books">Books</g:link></li>
                <li><g:link controller="Authors">Authors</g:link></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>