<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient-feedback.aspx.cs" Inherits="Hospital_Management_System_1.patient_feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <title>Product feedback survey example, jQuery Survey Library Example</title>

        <meta name="viewport" content="width=device-width"/>
        <script src="https://unpkg.com/jquery"></script>
        <script src="https://surveyjs.azureedge.net/1.5.18/survey.jquery.js"></script>
        <link href="https://surveyjs.azureedge.net/1.5.18/survey.css" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" href="./index.css">

    </head>
   <body style="background: url(https://image.freepik.com/free-photo/blurred-interior-hospital-clinical-with-people-abstract-medical-background_1484-1882.jpg);
         background-size: 100% 140%;">

        <div id="surveyElement" style="display:inline-block;width:100%;"></div>
        <div id="surveyResult"></div>

        <script type="text/javascript" src="./index.js"></script>

    </body>
</html>

<script>
Survey
    .StylesManager
    .applyTheme("default");

var json = {
    pages: [
        {
            questions: [
                {
                    type: "matrix",
                    name: "Quality",
                    title: "Please indicate if you agree or disagree with the following statements",
                    columns: [
                        {
                            value: 1,
                            text: "Best"
                        }, {
                            value: 2,
                            text: "Good"
                        }, {
                            value: 3,
                            text: "Average"
                        }, {
                            value: 4,
                            text: "Bad"
                        }, {
                            value: 5,
                            text: "Very Bad"
                        }
                    ],
                    rows: [
                        {
                            value: "affordable",
                            text: "Service of the hospital"
                        }
                    ]
                }, {
                    type: "rating",
                    name: "satisfaction",
                    title: "Was doctor available as per the appointment?",
                    isRequired: true,
                    mininumRateDescription: "Not Satisfied",
                    maximumRateDescription: "Completely satisfied"
                }, {
                    type: "rating",
                    name: "recommend friends",
                    visibleIf: "{satisfaction} > 3",
                    title: "How likely are you to recommend to a friend's or family?",
                    mininumRateDescription: "Will not recommend",
                    maximumRateDescription: "I will recommend"
                }, {
                    type: "comment",
                    name: "suggestions",
                    title: "Review for the doctor"
                }
            ]
        },  {
            questions: [
                {
                    type: "text",
                    name: "email",
                    title: "Thank you for taking our survey. Your survey is almost complete, please enter your email address in the box below if you wish to participate in our drawing, then press the 'Submit' button."
                }
            ]
        }
    ]
};

window.survey = new Survey.Model(json);

survey
    .onComplete
    .add(function (result) {
        document
            .querySelector('#surveyResult')
         
    });
$("#surveyElement").Survey({model: survey});
</script>
</html>