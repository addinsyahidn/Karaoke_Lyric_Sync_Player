import QtQuick
import QtQuick.Shapes
import QtQuick.Layouts

Rectangle {
    id: halaman_Utama

    height: parent.height
    width: parent.width

    clip: true
    color: "#ffffff"
    Column {
        id: mainContent
        width: parent.width
        spacing: 20 * root.dp

        Item { width: 1; height: 30 * root.dp }

        Rectangle {
            id: searchContainer
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 16 * root.dp
            anchors.rightMargin: 16 * root.dp

            height: 40 * root.dp
            color: "#f5f5f5"
            radius: 8 * root.dp

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 12 * root.dp
                anchors.rightMargin: 12 * root.dp
                spacing: 8 * root.dp

                Item {
                    Layout.preferredWidth: 24 * root.dp
                    Layout.preferredHeight: 24 * root.dp
                    Layout.alignment: Qt.AlignVCenter

                    Shape {
                        id: searchIcon
                        anchors.centerIn: parent
                        width: 16 * root.dp
                        height: 16 * root.dp

                        ShapePath {
                            strokeColor: "#828282"
                            strokeWidth: 2
                            fillColor: "transparent"
                            capStyle: ShapePath.RoundCap

                            PathSvg { path: "M 16 8 C 16 12.4183 12.4183 16 8 16 C 3.5817 16 0 12.4183 0 8 C 0 3.5817 3.5817 0 8 0 C 12.4183 0 16 3.5817 16 8 Z" }
                        }
                        ShapePath {
                            strokeColor: "#828282"
                            strokeWidth: 2
                            fillColor: "transparent"
                            capStyle: ShapePath.RoundCap
                            PathSvg { path: "M 14 14 L 18 18" }
                        }
                    }
                }

                TextInput {
                    id: searchInput
                    Layout.fillWidth: true
                    height: parent.height
                    font.family: "Inter"
                    font.pixelSize: 14 * root.dp
                    color: "#000000"
                    verticalAlignment: TextInput.AlignVCenter
                    clip: true

                    Text {
                        text: "Cari lagu atau artis..."
                        color: "#828282"
                        visible: !searchInput.text && !searchInput.activeFocus
                        font: searchInput.font
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    onAccepted: {
                        console.log("Mencari: " + text)
                        searchInput.focus = false
                    }
                }
            }
        }
        Rectangle {
            id: pillsContainer

            anchors.left: parent.left
            anchors.leftMargin: 16 * root.dp
            anchors.right: parent.right
            anchors.rightMargin: 16 * root.dp

            height: 32 * root.dp // Tinggi pill ikut menyesuaikan layar
            color: "transparent"

            Row {
                id: layoutRow
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 8 * root.dp

                Repeater {
                    model: [
                        { name: "Favorit", icon: "Icon_Like.qml" },
                        { name: "Riwayat", icon: "Icon_Watch_History.qml" },
                        { name: "Diikuti", icon: "Icon_Person_Tick.qml" },
                        { name: "Playlist", icon: "Icon_Lines_Horizontal_Decrease_Rectangle_LTR.qml" }
                    ]

                    delegate: Rectangle {
                        id: pillDelegate
                        width: contentLayout.implicitWidth + (18 * root.dp)
                        height: 28 * root.dp
                        radius: 6 * root.dp

                        border.width: 1
                        border.color: pillTouch.pressed ? "#999999" : "#cccccc"

                        color: pillTouch.pressed ? "#08000000" : "transparent"

                        Row {
                            id: contentLayout
                            anchors.centerIn: parent
                            spacing: 4 * root.dp

                            Loader {
                                source: modelData.icon
                                anchors.verticalCenter: parent.verticalCenter
                                scale: 0.75 * root.dp
                            }

                            Text {
                                text: modelData.name
                                font.pixelSize: 12 * root.dp
                                font.family: "Inter"
                                color: "#1a1a1a"
                                anchors.verticalCenter: parent.verticalCenter
                            }
                        }

                        MouseArea {
                            id: pillTouch
                            anchors.fill: parent
                            onClicked: {
                                console.log("Klik: " + modelData.name)
                            }
                        }
                    }
                }
            }
        }
        Image {
            id: banner
            x: 16; y: 148
            width: 343; height: 150
            clip: true
            source: Qt.resolvedUrl("assets/banner.png")

            ListView {
                id: bannerList
                anchors.fill: parent
                orientation: ListView.Horizontal
                snapMode: ListView.SnapOneItem
                highlightRangeMode: ListView.StrictlyEnforceRange
                boundsBehavior: ListView.StopAtBounds

                model: [
                    "assets/banner.png",
                    "assets/banner.png",
                    "assets/banner.png",
                    "assets/banner.png",
                    "assets/banner.png"
                ]
                delegate: Image {
                    width: 328
                    height: 150
                    source: Qt.resolvedUrl(modelData)
                }
            }

            Text {
                id: rilis_Terbaru
                x: 20; y: 54
                text: "Rilis Terbaru"
                color: "#000000"
                font.pixelSize: 20
                font.weight: Font.DemiBold
                font.family: "Inter"
                font.letterSpacing: -0.40
                horizontalAlignment: Text.AlignLeft
                lineHeight: 28
                lineHeightMode: Text.FixedHeight
                textFormat: Text.PlainText
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
            }

            Rectangle {
                id: pagination
                x: 149; y: 123
                height: 5; width: 45
                color: "transparent"

                Row {
                    spacing: 5
                    Repeater {
                        model: 5
                        Image { source: Qt.resolvedUrl("assets/_default.png") }
                    }
                }

                Image {
                    id: selected
                    source: Qt.resolvedUrl("assets/selected.png")
                    x: bannerList.currentIndex * 10

                    Behavior on x {
                        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
                    }
                }
            }
        }
        Item {
            id: seringDiputarSection
            width: parent.width
            height: 120 * root.dp

            Rectangle {
                id: titleBar
                width: parent.width
                height: 38 * root.dp
                color: "transparent"

                Row {
                    anchors.left: parent.left
                    anchors.leftMargin: 16 * root.dp
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 8 * root.dp

                    Text {
                        text: "Sering Diputar"
                        font.family: "Inter"
                        font.pixelSize: 16 * root.dp
                        font.weight: Font.DemiBold
                        color: "#000000"
                    }

                    Icon_Chevron_Right_Slim_LTR {
                        width: 14 * root.dp
                        height: 14 * root.dp
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            ListView {
                id: carousel
                y: 38 * root.dp
                width: parent.width
                height: 140 * root.dp
                orientation: ListView.Horizontal
                spacing: 12 * root.dp
                leftMargin: 16 * root.dp
                rightMargin: 16 * root.dp
                clip: true

                snapMode: ListView.NoSnap

                model: [
                    { name: "Alan Runner", img: "assets/image.png" },
                    { name: "Bruno Earth", img: "assets/image_1.png" },
                    { name: "Justin Bibir", img: "assets/image_2.png" },
                    { name: "Blue Day", img: "assets/image_3.png" },
                    { name: "Lagu Lain", img: "assets/image.png" }
                ]

                delegate: Item {
                    width: 74 * root.dp
                    height: 124 * root.dp

                    Image {
                        id: albumArt
                        width: 74 * root.dp
                        height: 74 * root.dp
                        source: Qt.resolvedUrl(modelData.img)
                        fillMode: Image.PreserveAspectCrop
                        anchors.horizontalCenter: parent.horizontalCenter

                        opacity: albumTouch.pressed ? 0.7 : 1.0

                        Behavior on opacity {
                            NumberAnimation { duration: 100 }
                        }
                    }

                    Text {
                        id: songText

                        anchors.top: albumArt.bottom
                        anchors.topMargin: 8 * root.dp
                        anchors.horizontalCenter: albumArt.horizontalCenter
                        width: parent.width
                        text: modelData.name
                        color: "#161823"
                        font.family: "Inter"
                        font.pixelSize: 12 * root.dp
                        font.weight: Font.Medium
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.Wrap
                        maximumLineCount: 2
                    }

                    MouseArea {
                        id: albumTouch
                        anchors.fill: parent
                        onClicked: console.log("Play: " + modelData.name)
                    }
                }
            }
        }
        Item {
            id: genreSection
            width: parent.width
            height: 180 * root.dp

            Rectangle {
                id: genreHeader
                width: parent.width
                height: 38 * root.dp
                color: "transparent"

                Row {
                    anchors.left: parent.left
                    anchors.leftMargin: 16 * root.dp
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 8 * root.dp

                    Text {
                        text: "Genre"
                        font.family: "Inter"
                        font.pixelSize: 16 * root.dp
                        font.weight: Font.DemiBold
                        color: "#000000"
                    }

                    Icon_Chevron_Right_Slim_LTR {
                        width: 14 * root.dp
                        height: 14 * root.dp
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            ListView {
                id: genreList

                anchors.top: genreHeader.bottom
                anchors.topMargin: 8 * root.dp

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 16 * root.dp
                anchors.rightMargin: 16 * root.dp
                height: 180 * root.dp
                orientation: ListView.Horizontal
                spacing: 12 * root.dp
                leftMargin: 16 * root.dp
                rightMargin: 16 * root.dp
                clip: true
                snapMode: ListView.NoSnap

                model: [
                    { name: "Pop", img: "assets/image_4.png" },
                    { name: "Rock", img: "assets/image_5.png" },
                    { name: "R&B", img: "assets/image_6.png" }
                ]

                delegate: Item {
                    width: 148 * root.dp
                    height: 148 * root.dp

                    Image {
                        id: genreImage
                        width: 148 * root.dp
                        height: 148 * root.dp
                        source: Qt.resolvedUrl(modelData.img)
                        fillMode: Image.PreserveAspectCrop

                        opacity: genreTouch.pressed ? 0.7 : 1.0
                        Behavior on opacity { NumberAnimation { duration: 100 } }
                    }

                    Text {
                        anchors.top: genreImage.bottom
                        width: parent.width
                        text: modelData.name
                        color: "#000000"
                        font.family: "Inter"
                        font.pixelSize: 14 * root.dp
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                    }

                    MouseArea {
                        id: genreTouch
                        anchors.fill: parent
                        onClicked: console.log("Buka Genre: " + modelData.name)
                    }
                }
            }
        }
    }
    Rectangle {
        id: navigationBar
        width: parent.width
        height: 60 * root.dp // Tinggi standar navigasi bawah
        color: "#ffffff" // Background putih bersih

        // INI KUNCINYA: Selalu tempel di dasar layar HP apa pun
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30 * root.dp

        // Garis abu-abu sangat tipis di atasnya (pemanis)
        Rectangle {
            width: parent.width
            height: 1
            color: "#f0f0f0"
            anchors.top: parent.top
        }

        // Tempat menaruh Icon-icon kamu
        Row {
            anchors.fill: parent

            // Tab 1: Home
            Item {
                width: parent.width / 4 // Bagi 4 karena ada 4 icon di gambarmu
                height: parent.height
                Icon_Tab_Discover { // Ganti dengan nama file icon Home kamu
                    anchors.centerIn: parent
                    scale: root.dp
                }
                MouseArea { anchors.fill: parent; onClicked: console.log("Home") }
            }

            // Tab 2: Compass/Discover
            Item {
                width: parent.width / 4
                height: parent.height
                Icon_Tab_Discover {
                    anchors.centerIn: parent
                    scale: root.dp
                }
                MouseArea { anchors.fill: parent; onClicked: console.log("Discover") }
            }

            // Tab 3: Bell/Notif
            Item {
                width: parent.width / 4
                height: parent.height
                Icon_3pt_Bell {
                    anchors.centerIn: parent
                    scale: root.dp
                }
                MouseArea { anchors.fill: parent; onClicked: console.log("Notif") }
            }

            // Tab 4: Profile
            Item {
                width: parent.width / 4
                height: parent.height
                Icon_Person {
                    anchors.centerIn: parent
                    scale: root.dp
                }
                MouseArea { anchors.fill: parent; onClicked: console.log("Profile") }
            }
        }
    }
}