import QtQuick 2.15
import QtQuick.Window 2.15

Window
{
    id:mainWindow;
    width: 640;
    height: 480;
    visible: true;
    title: qsTr("Hello World");

    Rectangle
    {
        id:root;
        anchors.fill:parent;
    }

    property int iconX: (root.width/100)*7;
    property int iconY: (root.height/100)*10;
    Rectangle
    {
        id:iconSettings
        width:iconX;
        height:iconY;
        color:"red";
        anchors.left:  root.left;
        anchors.leftMargin: root.width-iconX;
    }


}
