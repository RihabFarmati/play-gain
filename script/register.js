$(document).ready(function () {
    //get element
    const nom = $("#nom");
    const prenom = $("#prenom");
    const email = $("#email");
    const psw = $("#psw");
    const cpsw = $("#cpsw");
    var nais = $("#nais");
    var btnSignUp = $('#btnSignUp');
    var sexe = $("input[name='sexe']:checked");
    $('#btnSignUp').click(function () {
       
      if(nom!="" && prenom!="" && email!="" && psw!="" && cpsw!="" && sexe!="" && nais!="",sexe!=""){
        var nom = $("#nom");
        var prenom = $("#prenom");
        var email = $("#email");
        var psw = $("#psw");
        var cpsw = $("#cpsw");
        var sexe = $("input[name='sexe']:checked");
        //var sexe = $("#sexe");
        var nais = $("#nais");
        if(psw.val()===cpsw.val()){
        $.ajax({
          url: 'controller/user.php',
          data: { op: 'add', nom: nom.val(), prenom: prenom.val(), email: email.val(), psw: psw.val(),nais:nais.val(),sexe:sexe.val()},
          type: 'POST',
          success: function (data) {
            Swal.fire('Enjoy', 'Bien Inscrier', 'succes');
          },
          error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
          }
        });}
        else{ Swal.fire('Oops...', 'Probléme on confirmation Du mot de passe', 'error');
    }
    }else{ Swal.fire('Oops...', 'Remplir', 'error');}
      
    });
  });