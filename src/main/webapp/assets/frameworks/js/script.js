// Front End
function drop() {
    var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
    var dropdownList = dropdownElementList.map(function(dropdownToggleEl) {
        return new bootstrap.Dropdown(dropdownToggleEl)
    })
}

function toggleView() {
    document.getElementById("signUpSection").classList.toggle("d-none");
    document.getElementById("loginSection").classList.toggle("d-none");
}

// Admin panel
window.addEventListener('resize', function() {
    // console.log(this.window.innerWidth);
    if (this.window.innerWidth <= 993) {
        ocState = 0;
        toggleNav();
    } else if (this.window.innerWidth > 993) {
        ocState = 1;
        toggleNav();
    }
})
var ocState = 0;

function toggleNav() {
    if (ocState == 0) {
        ocState = 1;
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
    } else {
        ocState = 0;
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
    }
}
// sidebar tabs
function content(evt, content) {

    var i, tabcontent, tablinks;

    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(content).style.display = "block";
    evt.currentTarget.className += "active";
    if (content == "dashboard") {
        chartData();
    }
}

function defaultOpen() {
    document.getElementById("defaultOpen").click();
}

// Admin Chart Configs
// function chartData() {
//
//     new Chartist.Line('#chart1', {
//         labels: ['Monday', 'Tuesday', 'Wednessday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
//         series: [
//             [0, 9, 3, 8, 7, 8, 5]
//         ]
//     }, {
//         low: 0,
//         showArea: true
//     });
// }
// scrollTopBtn
// window.onscroll = function() {scrollBtnView() };

// function scrollBtnView() {
//     if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
//         document.getElementById("scrollTopBtn").style.display = "block";
//     } else {
//         document.getElementById("scrollTopBtn").style.display = "none";
//     }
// }

function toTop() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
// Allow cookies toast toggle
function closeToast() {
    document.getElementById("toast").classList.toggle("show");
    document.getElementById("toast").classList.toggle("hide");
}


//Back End

