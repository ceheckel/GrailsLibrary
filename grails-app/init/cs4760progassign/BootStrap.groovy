package cs4760progassign

class BootStrap {

    /* initialize entries to the server on startup */
    def init = { servletContext ->
        // Initial entries for Authors and Books
        new Author(name:"Stephen King")
                .addToBooks(new Book(title:"The Stand", publishYear:1978))
                .addToBooks(new Book(title:"The Shining", publishYear:1977))
                .save()

        new Author(name:"Mark Twain")
                .addToBooks(new Book(title:"Tom Sawyer", publishYear:1876))
                .addToBooks(new Book(title:"Huckleberry Finn", publishYear:1884))
                .save()

        // Initial entries for Users and Roles
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testAdmin = new User(username: 'admin', password: 'password')
        testAdmin.save(flush: true)
        def testUser = new User(username: 'user', password: 'password')
        testUser.save(flush: true)

        // Assign Roles to Users
        UserRole.create testAdmin, adminRole, true
        UserRole.create testUser, userRole, true

        UserRole.withSession {
            it.flush()
            it.clear()
        }
    }

    def destroy = {
    }
}