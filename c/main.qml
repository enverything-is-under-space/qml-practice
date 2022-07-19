import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello Sound Effect")

    Centernal
    {
        id:redRectangle
    }

    SoundEffect
    {
        id: soundDingIdea;
//        source: "../../../../Downloads/ding-idea-40142.wav";
        source: "../../../../Downloads/voice.wav";

    }



    LoginUserForm
    {
        id:loginUserFormB;
    }
    Button
    {
        text:"play song and change visible an element"
        onClicked:
        {
            soundDingIdea.play();

            if(!redRectangle.visible)
                redRectangle.visible  = false;
            else
                redRectangle.visible  = true;



            if(loginUserFormB.visible)
                loginUserFormB.visible  = false;
            else
                loginUserFormB.visible  = true;



        }
//        onPressed: soundDingIdea.play();
    }
    Button
    {
        id:buttonStop;
        x:400;
        text:"stop";
        onPressed: soundDingIdea.stop();
    }

}
