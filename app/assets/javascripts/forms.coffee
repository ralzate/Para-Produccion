$(document).on "ajax:beforeSend", "#contacts-form", ()->
	$("#contacto-info").html "Se esta procesando tu petición"
$(document).on "ajax:success", "#contacts-form", (e,data,estado,xhr)->
	$(this).slideUp()
	$("#contacto-info").addClass("big")
	$("#contacto-info").addClass("kostic")
	$("#contacto-info").addClass("green")
	$("#contacto-info").removeClass("red")
	$("#contacto-info").html "¡Excelente!. Ya estas en la fila de las invitaciones beta."
$(document).on "ajax:error", "#contacts-form", (e,data,estado,xhr)->
	$("#contacto-info").html data.responseJSON.email[0]
