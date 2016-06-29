<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=10" />
    <title>My Sweet Love . Wedding Card</title>
    <link rel="stylesheet" href="post/css/editor.css" type="text/css" charset="utf-8"/>
</head>
<body>
<div class="body">
    <form name="tx_editor_form" id="tx_editor_form" action="${initParam.root }post.do" method="post"
          accept-charset="utf-8">
          
        <input type="hidden" name="command" value="modifyQnA">
		<input type="hidden" name="postNo" value="${pvo.postNo }">
        <textarea name="content" id="content" style="width: 100%; height: 490px;"></textarea>
    </form>
</div>
<div>
    <button onclick="saveContent()">수정</button>
</div>
<script src="post/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>
<script src="post/js/editor_creator.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var config = {
        initializedId: "",
        wrapper: "tx_trex_container",
        form: 'tx_editor_form',
        txIconPath: "post/img/icon/editor/",
        txDecoPath: "post/img/deco/contents/",
        events: {
            preventUnload: false
        },
        sidebar: {
            attachbox: {
                show: true
            }
        }
    };

    EditorCreator.convert(document.getElementById("content"), 'post/postUpdateForm.jsp', function () {
        EditorJSLoader.ready(function (Editor) {
            new Editor(config);
            Editor.modify({
                content: "${pvo.content}"
            });
            
            document.tx_editor_form.title.value = "${pvo.title}";
            
        });
    });

</script>

<script type="text/javascript">
    function saveContent() {
        Editor.save();
    }

    function validForm(editor) {
        var validator = new Trex.Validator();
        var content = editor.getContent();

        if(document.tx_editor_form.title.value == "") {
        	alert("제목을 입력하세요");
			return false;
        }
        
        if (!validator.exists(content)) {
            alert('내용을 입력하세요');
            return false;
        }

        return true;
    }

    function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        var field = document.getElementById("content");
        field.value = content;

        var images = editor.getAttachments('image');
        for (i = 0; i < images.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_image';
            input.value = images[i].data.imageurl;
            form.createField(input);
        }

        var files = editor.getAttachments('file');
        for (i = 0; i < files.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_file';
            input.value = files[i].data.attachurl;
            form.createField(input);
        }
        return true;
    }
</script>