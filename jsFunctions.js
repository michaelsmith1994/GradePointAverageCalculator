var fieldCounter = 0; // Declare fieldCounter globally
//update the individual counters for use in buisiness logic
var quizFieldCounter = quizTextBoxIDs.length;
var assFieldCounter = assTextBoxIDs.length;
var cdTestFieldCounter = cdTestTextBoxIDs.length;
var midTestFieldCounter = midTestTextBoxIDs.length;
var finalTestFieldCounter = finalTestTextBoxIDs.length;

//For page loads when pressing the back button, it can be annoying to delete all your previous entries
function clearTextBoxes() {
    var textBoxes = document.querySelectorAll("input[type='text']");

    textBoxes.forEach(function (textBox) {
        textBox.value = ""; // Clear the value of each text input
    });
}

// Function to calculate the sum of grades for a given category
function calculateSum(prefix) {
    var container, sum = 0;

    // Get the container based on the category
    switch (prefix) {
        case 'quiz':
            container = document.getElementById("quizFieldsContainer");
            break;
        case 'assignment':
            container = document.getElementById("assignmentFieldsContainer");
            break;
        case 'codeTest':
            container = document.getElementById("codeTestFieldsContainer");
            break;
        case 'midtermTest':
            container = document.getElementById("midtermTestFieldsContainer");
            break;
        case 'finalTest':
            container = document.getElementById("finalTestFieldsContainer");
            break;
        default:
            return sum; // Return 0 if category is invalid
    }

    // Iterate over input fields and calculate sum
    var inputs = container.querySelectorAll("input[type='text']");
    inputs.forEach(function (input) {
        var grade = parseFloat(input.value); // Parse grade as float
        if (!isNaN(grade)) { // Check if grade is a valid number
            sum += grade; // Add grade to the sum
        }
    });
    console.log("sum (after call): " + sum);
    return sum;
}

//This function is for the remove last grade buttons for scores.aspx
function removeLastField(prefix) {
    var container;
    var counterlabel;

    switch (prefix) {
        case 'txtboxQuiz':
            container = document.getElementById("quizFieldsContainer");
            counterlabel = "hiddenquizcounter";
            break;
        case 'txtboxAss':
            container = document.getElementById("assignmentFieldsContainer");
            counterlabel = "hiddenassigncounter";
            break;
        case 'txtboxCdTest':
            container = document.getElementById("codeTestFieldsContainer");
            counterlabel = "hiddentestcounter";
            break;
        case 'txtboxMidTest':
            container = document.getElementById("midtermTestFieldsContainer");
            counterlabel = "hiddenmidtestcounter";
            break;
        case 'txtboxFinalTest':
            container = document.getElementById("finalTestFieldsContainer");
            counterlabel = "hiddenfinaltestcounter";
            break;
        default:
            break;
    }

    // Check if the container exists and has child elements
    if (container && container.lastElementChild) {
        var lastField = container.lastElementChild;
        if (lastField.tagName === "INPUT" && lastField.type === "text") {
            // Decrement the counter
            fieldCounter--;

            var fieldCounterLabel = document.getElementById(counterlabel);
            fieldCounterLabel.innerText = fieldCounter; 


            // Print the fieldCounter variable to the console for debugging
            console.log("fieldCounter (after removal):", fieldCounter);

            // Remove the last added field
            container.removeChild(lastField.previousSibling); // Remove label
            container.removeChild(lastField); // Remove textbox
            container.removeChild(lastField.nextSibling); // Remove br
        }
    }
}
//We cant dynamically support the asp.net validators so here is the JS function to validate that grades outside the range are not entered. 
function validateDynamicFields() {
    var isValid = true;
    var totalQuizSum = calculateSum("quiz");
    var totalAssignmentSum = calculateSum("assignment");
    var totalCodeTestSum = calculateSum("codeTest");
    var totalMidtermTestSum = calculateSum("midtermTest");
    var totalFinalTestSum = calculateSum("finalTest");

    console.log("Total Quiz Sum:", totalQuizSum);
    console.log("Total Assignment Sum:", totalAssignmentSum);
    console.log("Total Code Test Sum:", totalCodeTestSum);
    console.log("Total Midterm Test Sum:", totalMidtermTestSum);
    console.log("Total Final Test Sum:", totalFinalTestSum);
    // Update the values of the hidden fields
    document.getElementById("totalQuizSumHidden").value = totalQuizSum;
    document.getElementById("totalAssignmentSumHidden").value = totalAssignmentSum;
    document.getElementById("totalTestSumHidden").value = totalCodeTestSum;
    document.getElementById("totalMidTestSumHidden").value = totalMidtermTestSum;
    document.getElementById("totalFinalTestSumHidden").value = totalFinalTestSum;
    // Validata NaN or < 0 for the percentages
    quizPerc = document.getElementById("txtboxQuizPercent").value;
    assPerc = document.getElementById("txtboxAssPercent").value;
    testPerc = document.getElementById("txtboxCdTestPercent").value;
    midPerc = document.getElementById("txtboxMidTestPercent").value;
    finalPerc = document.getElementById("txtboxFinalTestPercent").value;
    quizPercField = document.getElementById("txtboxQuizPercent");
    assPercField = document.getElementById("txtboxAssPercent");
    testPercField = document.getElementById("txtboxCdTestPercent");
    midPercField = document.getElementById("txtboxMidTestPercent");
    finalPercField = document.getElementById("txtboxFinalTestPercent");

    var quizInputs = document.querySelectorAll("#quizFieldsContainer input[type='text']");
    var assInputs = document.querySelectorAll("#assignmentFieldsContainer input[type='text']");
    var testInputs = document.querySelectorAll("#codeTestFieldsContainer input[type='text']");
    var midtermInputs = document.querySelectorAll("#midtermTestFieldsContainer input[type='text']");
    var finalInputs = document.querySelectorAll("#finalTestFieldsContainer input[type='text']");
    var button = document.getElementById("Button1");

    if (isNaN(quizPerc) || quizPerc < 0) {
        alert("Invalid quiz percentage value. Please enter a number greater than or equal to 0.");
        isValid = false;
    }

    if (isNaN(assPerc) || assPerc < 0) {
        alert("Invalid assignment percentage value. Please enter a number greater than or equal to 0.");
        isValid = false;
    }

    if (isNaN(testPerc) || testPerc < 0) {
        alert("Invalid test percentage value. Please enter a number greater than or equal to 0.");
        isValid = false;
    }

    if (isNaN(midPerc) || midPerc < 0) {
        alert("Invalid midterm percentage value. Please enter a number greater than or equal to 0.");
        isValid = false;
    }

    if (isNaN(finalPerc) || finalPerc < 0) {
        alert("Invalid final percentage value. Please enter a number greater than or equal to 0.");
        isValid = false;
    }

    // Loop through each dynamically added quiz percent input field
    quizInputs.forEach(function (input) {
        var value = parseInt(input.value);
        if (isNaN(value) || value < 0 || value > 100) {
            // Display error message or perform validation logic
            alert("Invalid quiz percent value in field, either delete or place a value between 0-100.");
            isValid = false; // Prevent form submission
        }
    });
    assInputs.forEach(function (input) {
        var value = parseInt(input.value);
        if (isNaN(value) || value < 0 || value > 100) {
            // Display error message or perform validation logic
            alert("Invalid assignment percent value in field, either delete or place a value between 0-100.");
            isValid = false; // Prevent form submission
        }
    });
    testInputs.forEach(function (input) {
        var value = parseInt(input.value);
        if (isNaN(value) || value < 0 || value > 100) {
            // Display error message or perform validation logic
            alert("Invalid test percent value in field, either delete or place a value between 0-100.");
            isValid = false; // Prevent form submission
        }
    });
    midtermInputs.forEach(function (input) {
        var value = parseInt(input.value);
        if (isNaN(value) || value < 0 || value > 100) {
            // Display error message or perform validation logic
            alert("Invalid midterm percent value in field, either delete or place a value between 0-100.");
            isValid = false; // Prevent form submission
        }
    });
    finalInputs.forEach(function (input) {
        var value = parseInt(input.value);
        if (isNaN(value) || value < 0 || value > 100) {
            // Display error message or perform validation logic
            alert("Invalid final percent value in field, either delete or place a value between 0-100.");
            isValid = false; // Prevent form submission
        }
    })
    //kills button1click redirect if any validations return false.
    if (!isValid) {
        button.disabled = true;
    }

    return isValid; // All inputs are valid
}

function highlightField(field) {
    // Apply the red border
    field.style.border = "2px solid red";

    // Remove the red border after 3 seconds
    setTimeout(function () {
        field.style.border = ""; // Restore the default border
    }, 3000); // 3 seconds
}

//This function is for the add new grade buttons for scores.aspx
function addAdditionalField(prefix) {
    var container;
    var newTextBox = document.createElement("input");
    var newLabel = document.createElement("label");

    switch (prefix) {
        case 'txtboxQuiz':
            container = document.getElementById("quizFieldsContainer");
            counterlabel = "hiddenquizcounter";
            break;
        case 'txtboxAss':
            container = document.getElementById("assignmentFieldsContainer");
            counterlabel = "hiddenassigncounter";
            break;
        case 'txtboxCdTest':
            container = document.getElementById("codeTestFieldsContainer");
            counterlabel = "hiddentestcounter";
            break;
        case 'txtboxMidTest':
            container = document.getElementById("midtermTestFieldsContainer");
            counterlabel = "hiddenmidtestcounter";
            break;
        case 'txtboxFinalTest':
            container = document.getElementById("finalTestFieldsContainer");
            counterlabel = "hiddenfinaltestcounter";
            break;
        default:
            break;
    }

    // Count the number of existing textboxes in the container
    var existingTextboxes = container.querySelectorAll("input[type='text']").length;

    // Increment the counter
    fieldCounter = existingTextboxes + 1;
    document.getElementById(counterlabel).value = fieldCounter;


    // Set attributes for the new text input, then assign a unique ID. 
    newTextBox.type = "text";
    newTextBox.className = "centerTxtBox";
    newTextBox.id = prefix + fieldCounter;

    // Set attributes for the new label
    newLabel.setAttribute("for", prefix + fieldCounter);
    newLabel.textContent = fieldCounter;

    // Append the label and text input to the container div followed by a br line.
    container.appendChild(newLabel);
    container.appendChild(newTextBox);
}
