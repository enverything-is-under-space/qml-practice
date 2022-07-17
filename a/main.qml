import QtQuick 2.15
import QtQuick.Window 2.15
import "updateTimer.js" as UT
Window
{
    id:mainWindow
    width: 500;
    height: 80;
    visible: true;
    title: qsTr("Time to Infinity");
    property int theHour: 23;
    property int theMinute: 59;
    property int theSecond: 58;
    color: "#00000000";
    flags: Qt.FramelessWindowHint | Qt.WA_TranslucentBackground;
    x:0;
    y:0;

    Timer
    {
        interval: 1000; running: true; repeat: true
        onTriggered:
        {
            //way 1
            //myTimerText.text = UT.updateTimer(theHour,theMinute);

            //way 2
//            theHour = UT.updateHour(theHour);
//            theMinute = UT.updateMinute(theMinute);
//            myTimerText.text = theHour + ":" + theMinute;


            //way 3
//            var x = UT.updateTimerWay3(theHour,theMinute);
//            theHour = x.h;
//            theMinute = x.m;
//            myTimerText.text = x;


            //way 4
            var allObject = JSON.parse(UT.updateTimerWay3(theHour,theMinute,theSecond));
            theHour = allObject.h;
            theMinute = allObject.m;
            theSecond = allObject.s;

            if(theMinute<10 || theHour<10 || theSecond<10)
            {
                if(theHour<10)
                    myTimerText.text = "0"+theHour;
                else
                    myTimerText.text = theHour;


                if(theMinute<10)
                    myTimerText.text += ":0" + theMinute;
                else
                    myTimerText.text += ":"+theMinute;


                if(theSecond<10)
                    myTimerText.text += ":0" + theSecond;
                else
                    myTimerText.text += ":" + theSecond;
            }
            else
                myTimerText.text = theHour + ":" + theMinute + ":" +theSecond;

        }

    }

    Rectangle
    {
        id:myTimerBackground;
        anchors.fill: parent;
//        color:"gray";
        Rectangle
        {
            id:myTimerBase;
            width:myTimerBackground.width/2;
            height:myTimerBackground.width/2;
            anchors.centerIn: myTimerBackground;
//            color:"white";
            radius:50;
            Text
            {
                id:myTimerText;
                anchors.centerIn: myTimerBase;
                color:"black";
                text:"" + theHour + ":" + theMinute+ ":"+  theSecond;
                font.pointSize: mainWindow.width/15;
            }
        }

//        Rectangle
//        {
//            id:buttonUpdateTimerBase;
//            width: myTimerBase.width/2;
//            height: 30;
//            color: "yellow";
//            anchors.top: myTimerBase.bottom;
//            anchors.left: myTimerBase.left;
//            anchors.right: myTimerBase.right;
//            anchors.leftMargin: myTimerBase.width/3;
//            anchors.rightMargin: myTimerBase.width/3;
//            radius: myTimerBase.radius;
//            anchors.topMargin: 5;
//            clip: true;
////            smooth:  buttonMouseArea.containsMouse ? console.log("+ + + mousehovered on button updateTimer") : console.log("- - - mouse leave the button updateTimer")
//            Text
//            {
//                id: buttonUpdateTimer;
//                text: "Update timer";
//                color:"black";
//                anchors.centerIn: buttonUpdateTimerBase;
//                font.pointSize: 10;
//            }
//            MouseArea
//            {
//                id:buttonMouseArea;
//                anchors.fill: parent;
//                onClicked:
//                {
//                    console.log("button updateTimer clicked");
//                    myTimerText.text = UT.updateTimer(theHour,theMinute);
//                }
//                hoverEnabled: true

//            }
//        }
    }
}
