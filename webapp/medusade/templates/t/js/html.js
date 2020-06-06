/*
**********************************************************************
** Copyright (c) 1988-2019 $organization$     
**
** This software is provided by the author and contributors ``as is'' 
** and any express or implied warranties, including, but not limited to, 
** the implied warranties of merchantability and fitness for a particular 
** purpose are disclaimed. In no event shall the author or contributors 
** be liable for any direct, indirect, incidental, special, exemplary, 
** or consequential damages (including, but not limited to, procurement 
** of substitute goods or services; loss of use, data, or profits; or 
** business interruption) however caused and on any theory of liability, 
** whether in contract, strict liability, or tort (including negligence 
** or otherwise) arising in any way out of the use of this software, 
** even if advised of the possibility of such damage.
**
**   File: html.js
**
** Author: $author$           
**   Date: 11/27/2019
**********************************************************************
*/

/*
**
** function includeHTML
** 
*/
function includeHTML(elementId, fileAttribute, notFound, requestFailed) {

    if (!elementId) { elementId = 'include'; }
    if (!fileAttribute) { fileAttribute = 'include'; }
    if (!notFound) { notFound = ''; }
    if (!requestFailed) { notFound = ''; }

    if (elementId) {
        var element = document.getElementById(elementId);

        if (element) {
            var file = element.getAttribute(fileAttribute);

            if (file) {
                var xhttp = new XMLHttpRequest();

                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4) {
                        if (this.status == 200) { element.innerHTML = this.responseText; }
                        else {
                            if (this.status == 404) { element.innerHTML = notFound; }
                            else {
                                element.innerHTML = requestFailed;
                            }
                        }
                    }
                }
                xhttp.open('GET', file, true);
                xhttp.send();
            }
        }
    }
}

/*
**
** function getFormFieldValue
**
*/
function getFormFieldValue(name, form) {
   if (!form) { form = 'form'; }
   if (name) {
       if ((field = document[form][name])) {
           if ((value = field.value)) {
               return value;
           } else {
               len = field.length;
               if (0 < len) {
                   for (i = 0; i < len; i++) {
                       if (field[i].checked) {
                           if ((value = field[i].value)) {
                               return value;
                           }
                       }
                   }
               }
           }
       }
   } else {
       alert("failed on getFormFieldValue(0, '" + form + "')");
   }
   return '';
}

/*
**
** function getFormValue
**
*/
function getFormValue(name, form) {
   if (!form) { form = 'form'; }
   if (name) {
       if ((value = getFormFieldValue(name, form))) {
           return value;
       }
       alert("failed on getFormValue('" + name + "', '" + form + "')");
   } else {
       alert("failed on getFormValue(0, '" + form + "')");
   }
   return '';
}

/*
**
** function getFormValue2
**
*/
function getFormValue2(name1, name2, form) {
   if ((value = getFormFieldValue(name1, form))) {
       return value;
   }
   if ((value = getFormValue(name2, form))) {
       return value;
   }
   return '';
}

/*
**
** function setFormSubmit
**
*/
function setFormSubmit(action, method, form) {
   if (!form) { orm = 'form'; }
   if ((field = document[form])) {
       if (action) {
           if ('' != action) {
               field.action = action;
           }
       }
       if (method) {
           if ('' != method) {
               field.method = method;
           }
       }
   }
   return true;
}

/*
**
** function setFormSubmit2
**
*/
function setFormSubmit2(action1, action2, method, form) {
   if (!form) { form = 'form'; }
   if ((field = document[form])) {
       if (action1) {
           if ('' != action1) {
               field.action = action1;
           } else {
               if (action2) {
                   if ('' != action2) {
                       field.action = action2;
                   }
               }
           }
       } else {
           if (action2) {
               if ('' != action2) {
                   field.action = action2;
               }
           }
       }
       if (method) {
           if ('' != method) {
               field.method = method;
           }
       }
   }
   return true;
}

/*
**
** function onClickLocation
** 
*/
function onClickLocation(event, location) { 
    if (event.stopPropagation) {
        event.stopPropagation();
    } else {
        if (window.event) {
            window.event.cancelBubble = true;
        }
    }
    if (location) {
        window.location = location;
    }
}
var thisParentLocation = false, thisSelfLocation = false;
function onLocationInit(parentLocation, selfLocation) {
    thisParentLocation = parentLocation;
    thisSelfLocation = selfLocation;
}
function onClickParentLocation(event, location) {
    if (thisParentLocation) { location = thisParentLocation; }
    onClickLocation(event, location);
}
function onClickSelfLocation(event, location) {
    if (thisSelfLocation) { location = thisSelfLocation; }
    onClickLocation(event, location);
}

/*
**
** function onDropdownClick
** 
*/
var thisDropdown = false, initDropdown = false;
function onDropdownInit(dropdown) {
    thisDropdown = dropdown;
    initDropdown = true;
}
function onDropdownClick(dropdown) {
    if (!dropdown) { dropdown = "myDropdown"; }
    if (dropdown) {
        var x = document.getElementById(dropdown);
        if (x) {
            thisDropdown = dropdown;
            if (x.style.display !== "block") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    }
}

/*
**
** function onItemClick
** 
*/
function onItemClick(event, dropdown) {
    if (!dropdown) { dropdown = "myDropdown"; }
    if (dropdown) {
        var x = document.getElementById(dropdown);
        if (x) {
            if (x.style.display === "block") {
                x.style.display = "none";
            }
        }
    }
    if (event) {
        var element = event.target;
        if (element) {
            var location = element.getAttribute('location');
            if (location) {
                onClickLocation(event, location);
            }
        }
    }
}

/*
**
** window.onclick = function
** 
*/
window.onclick = function(event) {
    if ((!event.target.matches('.dropdown')) 
        && (!event.target.matches('.dropdown-button')) 
        && (!event.target.matches('.dropdown-bars')) 
        && (!event.target.matches('.dropdown-bar'))
        && (thisDropdown)) {
        var x = document.getElementById(thisDropdown);
        if (x.style.display === "block") {
            x.style.display = "none";
        } else {
            if (initDropdown) { 
                x.style.display = "block"; 
            }
        }
    }
}
