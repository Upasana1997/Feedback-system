/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 function showTeacherPassword()
{
    var x = document.getElementById("teacherpassword");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function showStudentPassword()
{
    var x = document.getElementById("studentpassword");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function check()
{
    window.alert('hi shivam');
}