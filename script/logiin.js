(function(){
  var firebaseConfig = {
    apiKey: "AIzaSyAJW5nMjODrRD6oy6fDO_NpIVhvmC-UM3Q",
    authDomain: "gamification-4e9bb.firebaseapp.com",
    databaseURL: "https://gamification-4e9bb-default-rtdb.firebaseio.com",
    projectId: "gamification-4e9bb",
    storageBucket: "gamification-4e9bb.appspot.com",
    messagingSenderId: "609488306758",
    appId: "1:609488306758:web:87ecba916a040c81cbc047",
    measurementId: "G-CW05WDXGZT"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
  //get element
      const email=document.getElementById("email");
      const psw=document.getElementById("psw");
      const btnLogin=document.getElementById('btnLogin');
   //login
      btnLogin.addEventListener('click',e=>{     

        alert("ggg");
      const userEmail =email.value;
      const userPass=psw.value;
      const auth=firebase.auth();
      const promise=auth.signInWithEmailAndPassword(userEmail,userPass);
      
      promise.catch(e=>console.log(e.message));
      //location.replace("incription.html")
      
  
      })
  
   
  
   firebase.auth().onAuthStateChanged(firebaseUser=>{
        if(firebaseUser){
          console.log('logged ');
       
           
            //btnLogout.style.display = "default";
           // btnSignUp.style.display = "none";
          //  btnLogin.style.display="none";
            //location.replace("page2.html")
  
       }else{
         console.log('not logged in');
          //  btnSignUp.style.display = "default";
         //   btnLogin.style.display="default";
           // btnLogout.style.display = "none";
       }
    })
            }());