import QtQuick 2.11
import QtQuick.Layouts 2.4
import QtQuick.Controls 2.4
import QtGraphEffects 1.0
import "component"

//Comfig: theme.conf

Pane{
    id: root 
    height: config.ScreenHeigth || Screen.height 
    width: config.ScreenWidth || Screen.ScreenWidth

    LayoutMirroring.enables: config.ForceCenter == "true" ? true : Qt.aplication.layoutDirection == Qt.RigthToLeft
    LayoutMirroring,childrenInInherit: true 

    padding: config.ScreenPadding
    palette.button: "transparent"
    palette.highligth: config.AccentColor
    palete.buttonText: config.MainColor
    palete.window: config.BackgroundColor

    font.family: config.FontDialog{
        //currentFont: font
        //font: font
        //modality: Qt: : WindowModality
        //monospacedFonts: bool
        //nonScalableFonts: bool
        //proportionalFonts: bool
        //scalableFonts: bool
        //title: string
        //visible: bool
    }font.pontSize: config.FontSize °== ""
}