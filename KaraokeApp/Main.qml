import QtQuick

Window {
    id: root
    width: 360
    height: 640
    visible: true
    title: qsTr("Karaoke App")
    property real dp: width / 360

    Halaman_Utama {
        anchors.fill: parent
    }
}