
const search = document.getElementById("searchinput");
search.addEventListener("keyup",()=>{
    const filter = search.value.toLowerCase();
    const rows = document.querySelectorAll("tbody tr");
    rows.forEach(row=>{
        const text = row.textContent.toLowerCase();
        row.style.display = text.includes(filter)?"":"none";
    });
});

const modal = document.getElementById("studentmodal");
const addBtn = document.getElementById("addStudentBtn");
const closeBtn = document.getElementById("closeModal");
addBtn.addEventListener("click",()=>{
    modal.style.display = "flex";
});
closeBtn.addEventListener("click",()=>{
    modal.style.display = "none";
});
window.addEventListener("click",(e)=>{
    if(e.target === modal){
        modal.style.display = "none";
    }
});
document
.querySelector(".register-btn")
.addEventListener("click",()=>{
    alert("🎉 Student Registered Successfully!");
    modal.style.display = "none";
});
