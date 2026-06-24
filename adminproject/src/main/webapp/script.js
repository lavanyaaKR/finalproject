const signupButton = document.getElementById("signup");
const signinButton =  document.getElementById("signin");
const container = document.getElementById("container");
signupButton.addEventListener("click",()=> {
    container.classList.add("active");
});
signinButton.addEventListener("click",()=>{
    container.classList.remove("active");
});
const params = new URLSearchParams(window.location.search);
if (params.get("error") === "notfound") {
    alert("Account doesn't exist. Please sign up.");
    document.getElementById("container").classList.add("right-panel-active");
}
const loginBtn = document.getElementById("loginBtn");
loginBtn.addEventListener("click",()=>{
    const email = document.getElementById("email").value;
    const password = document.getElementById("signinPassword").value;
    if(email !== "" && password !== ""){
        window.location.href = "dash.html";
    } else {
        alert("please eneter Email and Password");
    }
});
function togglePassword(id, icon){

    const input = document.getElementById(id);
    const eye = icon.querySelector("i");

    if(input.type === "password"){
        input.type = "text";
        eye.classList.remove("fa-eye");
        eye.classList.add("fa-eye-slash");
    }else{
        input.type = "password";
        eye.classList.remove("fa-eye-slash");
        eye.classList.add("fa-eye");
    }
}

