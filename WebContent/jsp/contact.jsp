<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../header.html" %>

	<form action="../contact/contactin" method = "post">
	
	<input type="text" name="name" required>氏名<br>
	<input type="text" name="company">会社<br>
	<input type="text" name="mail" required>メールアドレス<br>
	<p><textarea name="inquiry" cols = "30" rows = "5"required></textarea>お問い合わせ内容</p>
	
	
	<input type="checkbox" name="newsLetter" value="総合案内を受け取る">総合案内
	<input type="checkbox" name="newsLetter" value="セミナー案内を受け取る">セミナー案内
	<input type="checkbox" name="newsLetter" value="求人採用情報を受け取る">求人採用情報<br>
	
	<p>資料請求を希望する
	<input type="radio" name="documentRequest" value="yes">Yes
	<input type="radio" name="documentRequest" value="no">No
	</p><br>
	
	<input type="submit" value="確定">
	
	
	</form>

<%@include file="../footer.html" %>