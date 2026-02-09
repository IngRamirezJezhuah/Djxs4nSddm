import QtQuick 2.15
import QtWebEngine 1.10
import QtQuick.Window 2.15

Window {
    id: container
    width: 1920
    height: 1080
    visible: true
    title: "DJ-Web-Interface"

    WebEngineView {
        id: webView
        anchors.fill: parent
        url: "file:/usr/share/sddm/themes/Djxs4nSddm/index.html"
        settings.javascriptEnabled: true
        settings.localContentCanAccessRemoteUrls: true
        settings.allowRunningInsecureContent: true
        
        userScripts: [
            WebEngineScript {
                injectionPoint: WebEngineScript.DocumentCreation
                worldId: WebEngineScript.MainWorld
                sourceCode: "window.sddm = sddm;"
            }
        ]
    }
}