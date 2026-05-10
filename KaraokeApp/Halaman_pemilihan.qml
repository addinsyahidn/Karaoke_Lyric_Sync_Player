import QtQuick
import QtQuick.Shapes

Rectangle {
    id: halaman_pemilihan

    height: 812
    width: 375

    clip: true
    color: "#ffffff"

    Image {
        id: bottom_button

        y: 714

        clip: true
        source: Qt.resolvedUrl("assets/bottom_button.png")

        Rectangle {
            id: home_Indicator

            y: 64

            height: 34
            width: 375

            color: "transparent"

            Rectangle {
                id: home_Indicator_1

                x: 121
                y: 21

                height: 5
                width: 134

                color: "#000000"
                radius: 100
            }
        }
    }
    Rectangle {
        id: checkout_Info

        x: 1
        y: 127

        height: 640
        width: 375

        color: "transparent"

        Image {
            id: items

            clip: true
            source: Qt.resolvedUrl("assets/items_1.png")

            Rectangle {
                id: _item

                x: 16
                y: 25

                height: 84
                width: 343

                clip: true
                color: "transparent"

                Image {
                    id: image

                    clip: true
                    source: Qt.resolvedUrl("assets/image_18.png")
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
                width: 343

                clip: true
                color: "transparent"

                Image {
                    id: image_1

                    clip: true
                    source: Qt.resolvedUrl("assets/image_19.png")
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
                width: 343

                clip: true
                color: "transparent"

                Image {
                    id: image_2

                    clip: true
                    source: Qt.resolvedUrl("assets/image_20.png")
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
                    id: image_3

                    clip: true
                    source: Qt.resolvedUrl("assets/image_21.png")
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
                    id: image_4

                    clip: true
                    source: Qt.resolvedUrl("assets/image_22.png")
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
                    id: image_5

                    clip: true
                    source: Qt.resolvedUrl("assets/image_23.png")
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
        }
    }
    Image {
        id: header

        y: 44

        clip: true
        source: Qt.resolvedUrl("assets/header_2.png")

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
        Text {
            id: rock

            x: 168
            y: 9

            height: 24
            width: 41

            color: "#000000"
            font.family: "Inter"
            font.letterSpacing: -0.34
            font.pixelSize: 17
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignHCenter
            lineHeight: 23.80
            lineHeightMode: Text.FixedHeight
            text: "Rock"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
    Rectangle {
        id: search

        x: 16
        y: 94

        height: 40
        width: 343

        color: "#f5f5f5"
        radius: 8

        Rectangle {
            id: search_1

            x: 12
            y: 8

            height: 24
            width: 24

            clip: true
            color: "transparent"

            Shape {
                id: _vector

                x: 3
                y: 3

                height: 16
                width: 16

                ShapePath {
                    id: _vector_ShapePath0

                    fillColor: "#00000000"
                    strokeColor: "#828282"
                    strokeWidth: 2

                    PathSvg {
                        id: _vector_ShapePath0_PathSvg0

                        path: "M 16 8 C 16 12.418278217315674 12.418278217315674 16 8 16 C 3.581721782684326 16 0 12.418278217315674 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 C 12.418278217315674 0 16 3.581721782684326 16 8 Z"
                    }
                }
            }
            Shape {
                id: _vector_1

                x: 16.65
                y: 16.65

                height: 4.35
                width: 4.35

                ShapePath {
                    id: _vector_1_ShapePath0

                    fillColor: "#00000000"
                    strokeColor: "#828282"
                    strokeWidth: 2

                    PathSvg {
                        id: _vector_1_ShapePath0_PathSvg0

                        path: "M 4.350000381469727 4.350000381469727 L 0 0"
                    }
                }
            }
        }
        Text {
            id: label

            x: 48
            y: 8

            height: 24
            width: 280

            color: "#828282"
            elide: Text.ElideRight
            font.family: "Inter"
            font.pixelSize: 16
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignLeft
            lineHeight: 24
            lineHeightMode: Text.FixedHeight
            text: "Search"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
        }
    }
}