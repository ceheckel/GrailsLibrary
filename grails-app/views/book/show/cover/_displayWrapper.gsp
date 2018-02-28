<!-- The logical if tag to switch on an expression and/or current environment.
    -- test:   does the book instance have a 'cover' property?
-->
<g:if test="${book?.cover}">
    <li class="fieldcontain">
        <span id="cover-label" class="property-label">
            <!-- Resolves a message from the given code or error.
                -- code:    Output a message for a specific known code
                -- default: The default message to output if the error or code cannot be found in messages.properties
            -->
            <g:message code="book.cover.label" default="Cover: " />
        </span>
        <img class="property-value" alt="Missing Cover" src="${createLink(controller:'book', action:'showCover', id:"${book.id}")}">
    </li>
</g:if>