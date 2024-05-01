document.getElementById("numberSubmit").addEventListener("click", function () {
    let numberEntered = document.getElementById("numberValue").value;
    var numberDetails = {
        number: numberEntered
    }

    fetch("addnumber", {
        headers:{
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(numberDetails)
    })
        .then(response => response.text()) // Convert response to text
        .then(data => {
            // Log the response to the console
            console.log(data);
            alert(data);

            if (data === "even") {
                var evenTable = document.getElementById("evenTable");
                evenTable.innerHTML += "<tr><td>" + numberDetails.number + "</td></tr>";
            } else if (data === "odd") {
                var oddTable = document.getElementById("oddTable");
                oddTable.innerHTML += "<tr><td>" + numberDetails.number + "</td></tr>";
            }


        })
        .catch(error => {
            console.error('Error:', error);
        })
})