/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function show()
{
    console.log("Show function");
    var form=document.getElementById("category");
    var form1=document.getElementById("hostel_form");
    var form2=document.getElementById("transportation_form");
    var form3=document.getElementById("others_form");
    var form4=document.getElementById("infrastructure_form");
    
    if(form.style.display==="block")
    {
        form.style.display="none";
        form1.style.display="none";
        form2.style.display="none";
        form3.style.display="none";
        form4.style.display="none";
    }
    else 
    {
        form.style.display="block";

    }   
}
function show_hostel()
{
    var form1=document.getElementById("hostel_form");
    var form2=document.getElementById("transportation_form");
    var form3=document.getElementById("infrastructure_form");
    var form4=document.getElementById("others_form");
    if(form1.style.display==="block")
        form.style.display="none";
    else
    {
        form1.style.display="block";
        form2.style.display="none";
        form3.style.display="none";
        form4.style.display="none";

    }    

}
function show_transportation()
{
    var form1=document.getElementById("hostel_form");
    var form2=document.getElementById("transportation_form");
    var form3=document.getElementById("infrastructure_form");
    var form4=document.getElementById("others_form");
    if(form2.style.display==="block")
        form2.style.display="none";
    else    
    {
        form1.style.display="none";
        form2.style.display="block";
        form3.style.display="none";
        form4.style.display="none";
    }
}
function show_infrastructure()
{
    var form1=document.getElementById("hostel_form");
    var form2=document.getElementById("transportation_form");
    var form3=document.getElementById("infrastructure_form");
    var form4=document.getElementById("others_form");
    if(form3.style.display==="block")
        form3.style.display="none";
    else    
    form1.style.display="none";
    form2.style.display="none";
    form3.style.display="block";
    form4.style.display="none";
}
function show_others()
{
    var form1=document.getElementById("hostel_form");
    var form2=document.getElementById("transportation_form");
    var form3=document.getElementById("infrastructure_form");
    var form4=document.getElementById("others_form");
    if(form4.style.display==="block")
        form4.style.display="none";
    else    
    {
        form1.style.display="none";
        form2.style.display="none";
        form3.style.display="none";
        form4.style.display="block";
    }
}

function hide()
{
     var form=document.getElementById("sugg_form");
    form.style.display="none";
    var form1=document.getElementById("issuestatus");
    form1.style.display="none";
     var form2=document.getElementById("suggstatus");
    form2.style.display="none";
}

function show_addsugg()
{
    var ele=document.getElementById("suggestion");
    ele.style.display="block";
    var form=document.getElementById("sugg_form");
    form.style.display="block";
}

function check_issuestatus()
{
    var form=document.getElementById("issuestatus");
    form.style.display="block";
}

function check_suggstatus()
{
    var form=document.getElementById("suggstatus");
    form.style.display="block";
}