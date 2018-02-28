<!-- The logical if tag to switch on an expression and/or current environment.
    -- test:   does the book instance have an 'author' property?
-->
<g:if test="${book?.author}">
    <li class="fieldcontain">
        <span id="author-label" class="property-label">
            <!-- Resolves a message from the given code or error.
                -- code:    Output a message for a specific known code
                -- default: The default message to output if the error or code cannot be found in messages.properties
            -->
            <g:message code="book.author.label" default="Author" />
        </span>
        <span class="property-value">
            %{--Links to author/show page--}%
            <g:link controller="author" action="show" id="${book?.author?.id}">
                ${book?.author?.encodeAsHTML()}
            </g:link>
        </span>
    </li>
</g:if>