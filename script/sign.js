$(document).ready(function () {
    //get element
    const nom = $("#nom");
    const prenom = $("#prenom");
    const email = $("#email");
    const psw = $("#psw");
    const cpsw = $("#cpsw");
    const btnSignUp = $('#btnSignUp');
    $('#btnSignUp').click(function () {
      if (nom.val() != "" && prenom.val() != "" && email.val() != "" && psw.val() != "" && cpsw.val() != "") {
        var nom = $("#nom");
        var prenom = $("#prenom");
        var email = $("#email");
        var psw = $("#psw");
        var cpsw = $("#cpsw");
  
  
        $.ajax({
          url: 'controller/user.php',
          data: { op: 'add', nom: nom.val(), prenom: prenom.val(), email: email.val(), psw: psw.val() },
          type: 'POST',
          success: function (data) {
            Swal.fire('Oops...', 'Veee', 'error');
          },
          error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
          }
        });
      } else {
        alert("Merci de remplir tous les champs");
      }
    });
  });