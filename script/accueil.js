$(document).ready(function () {
    function remplir(data) {
        
       
         
        for(var i=0;i<=11;i++) {
        var contenu = $('#img'+i); 
        var t = $('#t'+(i+1)); 
       // t.css("background-color", "yellow");  
        var p = $('#p'+(i+1)); 
        var r = $('#r'+(i+1));        
        contenu.html('<img src="admin\\public\\storage\\'+ data[i].image+'" alt="Photo">');
        t.html(data[i+1].Titre);
        
        p.html(data[1+i].points); 
         
        r.html(data[1+i].reduction+" %"); 
        }

    }
    $.ajax({
        url: 'controller/gestionPlat.php',
        data: {op: ''},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
            
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
    
})