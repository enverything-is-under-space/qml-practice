import QtQuick 2.15
import QtQuick.Window 2.15
import QtMultimedia

Window
{
    id: mainWindow;
    width: Screen.width;
    height: Screen.height;
    visible: true;
    title: qsTr("Timer 1");


    Rectangle
    {
        id:root;
        anchors.fill: parent;
        color:"gray";
    }


    property int iconWidthAndHeight: mainWindow.width<700? 40:50; //for button iconBackToHome &  iconSettings
    property string fileIcon_Settings: "icon-settings.png";
    property string fileIcon_backToHome: "icon-back.png";
    property string directory_Icons: "thePictures/";
    property int fontSizeTitles: mainWindow.width<700 ? 45:65;

    property color colorLines: "black";
    property color colorTitles: "black";
    property color colorBackgroundIcons: "transparent";
    property color colorBackgrounds: "white";

    //button go to settings starts
    Rectangle
    {
        id:iconSettings;
        width:iconWidthAndHeight;
        height:iconWidthAndHeight;
        visible: true;
        color:colorBackgroundIcons;
        anchors
        {
            left:root.left;
            top:root.top;
            topMargin: mainWindow.height/50;
            leftMargin:mainWindow.width/50;
        }

        Image
        {
            anchors.fill: parent;
            source: directory_Icons + fileIcon_Settings;
        }
        MouseArea
        {
            anchors.fill: iconSettings;
            onPressed:
            {
                startPage.visible = false;
                stopPage.visible = false;
                settingsPage.visible = true;
                iconBackToHome.visible = true;
            }
        }
    }
    //button go to settings ends



    Settings
    {
        id:settingsPage;
        visible: false;
        fontSize: fontSizeTitles;
        cBG: colorBackgrounds;
        cTitle: colorTitles;
        cLine: colorLines;
    }


    Stop
    {
        id:stopPage;
        visible: false;
    }


    Start
    {
        id:startPage;
        visible: false;
    }




    //button back to home starts
    Rectangle
    {
        id:iconBackToHome;
        width: iconWidthAndHeight;
        height: iconWidthAndHeight;
        visible:false;
        color: colorBackgroundIcons;
        anchors
        {
            left:root.left;
            top:root.top;
            topMargin: mainWindow.height/50;
            leftMargin:mainWindow.width/50;
        }

        Image
        {
            anchors.fill: parent;
            source: directory_Icons+fileIcon_backToHome;
        }
        MouseArea
        {
            anchors.fill: iconBackToHome;
            onPressed:
            {
                startPage.visible = false;
                stopPage.visible = false;
                settingsPage.visible = false;
                iconBackToHome.visible = false;
            }
        }
    }
    //button back to home ends







}
