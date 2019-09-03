<script src="{{asset('ckeditor/ckeditor.js')}}"></script>
<script src="{{asset('ckfinder/ckfinder.js')}}"></script>

<textarea name="content" id="editor"></textarea>

<script>
    CKEDITOR.replace('editor', {
    filebrowserBrowseUrl: "{{asset('/ckfinder/ckfinder.html')}}",
    filebrowserUploadUrl: "{{asset('/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files')}}"});
</script>

{{-- @component('layout.components.title') index page @endcomponent --}}