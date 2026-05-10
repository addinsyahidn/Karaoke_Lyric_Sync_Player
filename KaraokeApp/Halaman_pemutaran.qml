import QtQuick
import QtQuick.Shapes

Rectangle {
    id: halaman_pemutaran

    height: 812
    width: 375

    clip: true
    color: "#ffffff"

    Rectangle {
        id: map

        y: 93

        height: 272
        width: 376

        clip: true
        color: "#fafcff"
        visible: false

        Image {
            id: map_1

            clip: true
            source: Qt.resolvedUrl("assets/map.png")
        }
        Image {
            id: chip

            x: 151.50
            y: 33

            source: Qt.resolvedUrl("assets/chip.png")
        }
        Image {
            id: chip_1

            x: 32.50
            y: 59

            source: Qt.resolvedUrl("assets/chip_1.png")
        }
        Image {
            id: chip_2

            x: 22.50
            y: 146

            source: Qt.resolvedUrl("assets/chip_2.png")
        }
        Image {
            id: chip_3

            x: 99.50
            y: 184

            source: Qt.resolvedUrl("assets/chip_3.png")
        }
        Image {
            id: chip_4

            x: 292
            y: 60

            source: Qt.resolvedUrl("assets/chip_4.png")
        }
        Image {
            id: chip_5

            x: 271
            y: 153

            source: Qt.resolvedUrl("assets/chip_5.png")
        }
    }
    Image {
        id: image

        x: 5
        y: 93

        clip: true
        source: Qt.resolvedUrl("assets/image_11.png")

        Rectangle {
            id: chip_6

            x: 100
            y: 88

            height: 28
            width: 170

            color: "#00000000"
            radius: 24

            Image {
                id: price

                x: -59.50

                source: Qt.resolvedUrl("assets/price.png")
            }
        }
    }
    Image {
        id: header

        x: -5
        y: 44

        clip: true
        source: Qt.resolvedUrl("assets/header.png")

        Rectangle {
            id: icon_Chevron_Left

            x: 16
            y: 9

            height: 24
            width: 24

            color: "transparent"

            Shape {
                id: chevron_left_thin

                x: 6.94
                y: 3.57

                height: 16.86
                width: 9.49

                ShapePath {
                    id: chevron_left_thin_ShapePath0

                    fillColor: "#000000"
                    fillRule: ShapePath.WindingFill
                    joinStyle: ShapePath.MiterJoin
                    strokeColor: "#00000000"
                    strokeStyle: ShapePath.SolidLine
                    strokeWidth: 0.50

                    PathSvg {
                        id: chevron_left_thin_ShapePath0_PathSvg0

                        path: "M 2.338477373123169 8.429289817810059 L 9.348527908325195 1.4192390441894531 C 9.543790072202682 1.2239768654108047 9.543790131807327 0.9073939919471741 9.348527908325195 0.7121318578720093 L 8.782841682434082 0.14644651114940643 C 8.587579518556595 -0.048815563321113586 8.27099721133709 -0.04881548881530762 8.075735092163086 0.14644664525985718 L 0.1464465856552124 8.075736045837402 C -0.0488155335187912 8.270998179912567 -0.0488155335187912 8.587580502033234 0.1464465856552124 8.782842636108398 L 8.075735092163086 16.712133407592773 C 8.270997241139412 16.90739557147026 8.587580487132072 16.907393649220467 8.782842636108398 16.71213150024414 L 9.348527908325195 16.146446228027344 C 9.543790057301521 15.951184079051018 9.543790072202682 15.634601786732674 9.348527908325195 15.439339637756348 L 2.338477373123169 8.429289817810059 Z"
                    }
                }
            }
        }
    }
    Rectangle {
        id: _list

        y: 463

        height: 320
        width: 376

        clip: true
        color: "#ffffff"
        topLeftRadius: 24
        topRightRadius: 24

        Rectangle {
            id: handle

            height: 24
            width: 375

            color: "transparent"

            Rectangle {
                id: handle_1

                x: 164
                y: 8

                height: 4
                width: 48

                color: "#33000000"
                radius: 100
            }
        }
        Rectangle {
            id: listing

            x: 16
            y: 24

            height: 640
            width: 344

            color: "transparent"

            Rectangle {
                id: checkout_Info

                height: 640
                width: 344

                color: "transparent"

                Image {
                    id: items

                    clip: true
                    source: Qt.resolvedUrl("assets/items.png")

                    Rectangle {
                        id: _item

                        x: 16
                        y: 25

                        height: 84
                        width: 324

                        clip: true
                        color: "transparent"

                        Image {
                            id: image_1

                            clip: true
                            source: Qt.resolvedUrl("assets/image_12.png")
                        }
                        Rectangle {
                            id: info

                            x: 112

                            height: 62
                            width: 148

                            color: "transparent"

                            Text {
                                id: nama_musik

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Nama musik "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: band

                                y: 22

                                height: 18
                                width: 149

                                color: "#80000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 12
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 18
                                lineHeightMode: Text.FixedHeight
                                text: "Band "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: favorit

                                y: 42

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Favorit"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                    Rectangle {
                        id: _item_1

                        x: 16
                        y: 227

                        height: 84
                        width: 324

                        clip: true
                        color: "transparent"

                        Image {
                            id: image_2

                            clip: true
                            source: Qt.resolvedUrl("assets/image_13.png")
                        }
                        Rectangle {
                            id: info_1

                            x: 112

                            height: 62
                            width: 148

                            color: "transparent"

                            Text {
                                id: nama_musik_1

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Nama musik "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: band_1

                                y: 22

                                height: 18
                                width: 149

                                color: "#80000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 12
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 18
                                lineHeightMode: Text.FixedHeight
                                text: "Band "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: favorit_1

                                y: 42

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Favorit"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                    Rectangle {
                        id: _item_2

                        x: 16
                        y: 126

                        height: 84
                        width: 324

                        clip: true
                        color: "transparent"

                        Image {
                            id: image_3

                            clip: true
                            source: Qt.resolvedUrl("assets/image_14.png")
                        }
                        Rectangle {
                            id: info_2

                            x: 112

                            height: 62
                            width: 148

                            color: "transparent"

                            Text {
                                id: nama_musik_2

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Nama musik "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: band_2

                                y: 22

                                height: 18
                                width: 149

                                color: "#80000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 12
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 18
                                lineHeightMode: Text.FixedHeight
                                text: "Band "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: favorit_2

                                y: 42

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Favorit"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                    Rectangle {
                        id: _item_3

                        x: 16
                        y: 328

                        height: 84
                        width: 343

                        clip: true
                        color: "transparent"

                        Image {
                            id: image_4

                            clip: true
                            source: Qt.resolvedUrl("assets/image_15.png")
                        }
                        Rectangle {
                            id: info_3

                            x: 112

                            height: 40
                            width: 148

                            color: "transparent"

                            Text {
                                id: nama_musik_3

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Nama musik "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: band_3

                                y: 22

                                height: 18
                                width: 149

                                color: "#80000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 12
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 18
                                lineHeightMode: Text.FixedHeight
                                text: "Band "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                    Rectangle {
                        id: _item_4

                        x: 16
                        y: 530

                        height: 84
                        width: 343

                        clip: true
                        color: "transparent"

                        Image {
                            id: image_5

                            clip: true
                            source: Qt.resolvedUrl("assets/image_16.png")
                        }
                        Rectangle {
                            id: info_4

                            x: 112

                            height: 40
                            width: 148

                            color: "transparent"

                            Text {
                                id: nama_musik_4

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Nama musik "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: band_4

                                y: 22

                                height: 18
                                width: 149

                                color: "#80000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 12
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 18
                                lineHeightMode: Text.FixedHeight
                                text: "Band "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                    Rectangle {
                        id: _item_5

                        x: 16
                        y: 429

                        height: 84
                        width: 343

                        clip: true
                        color: "transparent"

                        Image {
                            id: image_6

                            clip: true
                            source: Qt.resolvedUrl("assets/image_17.png")
                        }
                        Rectangle {
                            id: info_5

                            x: 112

                            height: 40
                            width: 148

                            color: "transparent"

                            Text {
                                id: nama_musik_5

                                height: 20
                                width: 149

                                color: "#000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 14
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 19.60
                                lineHeightMode: Text.FixedHeight
                                text: "Nama musik "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: band_5

                                y: 22

                                height: 18
                                width: 149

                                color: "#80000000"
                                elide: Text.ElideRight
                                font.family: "Inter"
                                font.pixelSize: 12
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                lineHeight: 18
                                lineHeightMode: Text.FixedHeight
                                text: "Band "
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                    Image {
                        id: header_1

                        clip: true
                        source: Qt.resolvedUrl("assets/header_1.png")

                        Text {
                            id: akan_Diputar

                            x: 118
                            y: 9

                            height: 24
                            width: 105

                            color: "#000000"
                            font.family: "Inter"
                            font.letterSpacing: -0.34
                            font.pixelSize: 17
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignHCenter
                            lineHeight: 23.80
                            lineHeightMode: Text.FixedHeight
                            text: "Akan Diputar"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
        }
    }
    Rectangle {
        id: info_6

        x: 18
        y: 365

        height: 60
        width: 148

        color: "transparent"

        Text {
            id: nama_musik_6

            height: 40
            width: 149

            color: "#000000"
            elide: Text.ElideRight
            font.family: "Inter"
            font.pixelSize: 14
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignLeft
            lineHeight: 19.60
            lineHeightMode: Text.FixedHeight
            text: "Nama musik "
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
        }
        Text {
            id: band_6

            y: 42

            height: 18
            width: 149

            color: "#80000000"
            elide: Text.ElideRight
            font.family: "Inter"
            font.pixelSize: 12
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignLeft
            lineHeight: 18
            lineHeightMode: Text.FixedHeight
            text: "Band "
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
        }
    }
    Image {
        id: tab_Bar

        y: 733

        source: Qt.resolvedUrl("assets/tab_Bar_1.png")
    }
    Text {
        id: favorit_3

        x: 298
        y: 375

        height: 20
        width: 149

        color: "#000000"
        elide: Text.ElideRight
        font.family: "Inter"
        font.pixelSize: 14
        font.weight: Font.Normal
        horizontalAlignment: Text.AlignLeft
        lineHeight: 19.60
        lineHeightMode: Text.FixedHeight
        text: "Favorit"
        textFormat: Text.PlainText
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
    }
}