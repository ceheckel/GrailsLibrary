<!-- f:field tags from create.gsp will look to this file for style and other aspects -->

<!-- div class is used for expressing errors for validation -->
<div class="fieldcontain ${hasErrors(bean: book, field: 'cover', 'error')} ">
    <!--
        -- label tag for the “Cover” text in the input and an input tag
        -- The label tag uses grails messaging technique.
        -- It will look into the grails-app/i18n files for text of the file
    -->
    <label for="cover">
        <g:message code="book.cover.label" default="Cover" />
    </label>
    <input style="display:inline" type="file" name="cover" id="cover" accept="image/*" capture />
    <!--
        -- style:   forces the file upload box and button to appear in line with the label.
        -- type:    Specifies the type <input> element to display
        -- name:    Specifies the name of an <input> element
        -- id:      Specifies the identifier of the element
        -- accept:  This will filter the file picker to show only image files.
        -- capture: This enables media capture devices. For image capture this is the camera.
                    The user can choose between uploading a file or making a photo with the camera.
    -->
</div>