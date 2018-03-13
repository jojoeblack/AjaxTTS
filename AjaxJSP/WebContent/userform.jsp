<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Demo Ajax</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link href="css/site.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script type="text/javascript">
$(document).ready(function(){
	$('#btnHello').click(function(){
		var fullname = $('#fullname').val();
		$.ajax({
			type:'POST',
			data:{fullname:fullname},
		
			url:'AjaxController',
			success: function(result){
				$('#result1').html(result)
			}
		})
	})
})
</script>


</head>
<body>
<form method="post" name="order" id="order">
				<fieldset>
					<legend>�|�����</legend>	                   
					<div>
						<label for="name" class="label">�m�W</label>
						<input name="name" type="text" id="fullname" size="36">
					</div>
					<div>
						<label for="address" class="label">��}</label>
						<input name="address" type="text" id="address" size="36">
					</div>
					<div>
						<label for="city" class="label">����</label>
						<input name="city" type="text" id="city" size="36">
					</div>
					<div>
						<label for="state" class="label">��/�m/��</label>
						<input name="state" type="text" id="state" size="36">
					</div>
					<div>
						<label for="zip" class="label">�l���ϸ�</label>
						<input name="zip" type="text" id="zip" size="36">
					</div>

				</fieldset>
					<div class="w3-container">
					<input  class="w3-button w3-black"  type="button" value="�e�X���" id="btnHello" >
					</div>
				<span id="result1"></span>
	</form>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"> </script>
<script>
	$(function(){}); 
	 $('#btnHello').on('click',function(e){
		e.preventDefault();
		if (($('#fullname').val()) == "") {
			var u1 = new SpeechSynthesisUtterance("�z�n,�m�W��줣�i�H�ťճ�");
	        u1.lang = 'cmn-Hant-TW';
	        u1.pitch = 1;
	        u1.rate = 0.5;
	        
	        u1.voiceURI = 'native';
	        u1.volume = 1;
	        speechSynthesis.speak(u1);

			}
			
	 else{
		var u1 = new SpeechSynthesisUtterance($('#fullname').val()+",�z�n,�w��z���[�J,�ڬOkitty.�Цh�h����");
        u1.lang = 'cmn-Hant-TW';
        u1.pitch = 1;
        u1.rate = 0.5;  
        u1.voiceURI = 'native';
        u1.volume = 1;
        speechSynthesis.speak(u1);
        if ((!$('#state').val()) == "") {
			var u2 = new SpeechSynthesisUtterance($('#state').val()+"�O�Ӧn�a��,�ڤ]�Q�h��");
	        u2.lang = 'cmn-Hant-TW';
	        u2.pitch = 1;
	        u2.rate = 1;
	        
	        u2.voiceURI = 'native';
	        u2.volume = 1;
	        speechSynthesis.speak(u2);
			}
	 }
	
});


</script>
</body>
</html>