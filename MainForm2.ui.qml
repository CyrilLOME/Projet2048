import QtQuick 2.6

Rectangle {
    id: rectFond

    width: 360
    height: 360
    color: "#f9abab"

    Rectangle {
        id: rectPlateau
        x: 73
        y: 85
        width: 225
        height: 225
        color: "#f45d5d"
        radius: 1
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 1
        border.color: "#f45d5d"
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: rectCase1_1
            width: 50
            height: 50
            color: "#ed4949"
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            border.color: "#ed4949"

            Text {
                id: valeurCase1
                color: "#f9c7c7"
                text: qsTr(" 2")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
                font.bold: true
                anchors.fill: parent
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectCase1_2
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.left: parent.left
            anchors.leftMargin: 60
            anchors.top: parent.top
            anchors.topMargin: 5
            border.color: "#f68080"

            Text {
                id: valeurCase2
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase1_3
            x: 114
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 60
            anchors.top: parent.top
            anchors.topMargin: 5
            border.color: "#f68080"

            Text {
                id: valeurCase1_3
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase1_4
            x: 162
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5
            border.color: "#f68080"

            Text {
                id: valeurCase1_4
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase2_1
            x: -9
            y: -7
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.top: parent.top
            anchors.topMargin: 60
            anchors.left: parent.left
            border.color: "#f68080"
            anchors.leftMargin: 5

            Text {
                id: valeurCase2_1
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase2_2
            x: -18
            y: -16
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.top: parent.top
            anchors.topMargin: 60
            anchors.left: parent.left
            border.color: "#f68080"
            anchors.leftMargin: 60

            Text {
                id: valeurCase2_2
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase2_3
            x: -17
            y: -15
            width: 50
            height: 51
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 60
            anchors.top: parent.top
            anchors.topMargin: 60
            border.color: "#f68080"

            Text {
                id: valeurCase2_3
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase2_4
            x: -7
            y: -5
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 60
            border.color: "#f68080"

            Text {
                id: valeurCase2_4
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase3_1
            x: -3
            y: -8
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            anchors.left: parent.left
            border.color: "#f68080"
            anchors.leftMargin: 5

            Text {
                id: valeurCase3_1
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase3_2
            x: -12
            y: 116
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.bottomMargin: 60
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            border.color: "#f68080"
            anchors.leftMargin: 60

            Text {
                id: valeurCase3_2
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase3_3
            x: -11
            y: 115
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 60
            anchors.bottomMargin: 60
            anchors.bottom: parent.bottom
            border.color: "#f68080"

            Text {
                id: valeurCase3_3
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase3_4
            x: -1
            y: 116
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.bottomMargin: 60
            anchors.bottom: parent.bottom
            border.color: "#f68080"

            Text {
                id: valeurCase3_4
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase4_1
            x: 8
            y: -2
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: parent.left
            border.color: "#f68080"
            anchors.leftMargin: 5

            Text {
                id: valeurCase4_1
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase4_2
            x: -1
            y: 171
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.bottomMargin: 5
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            border.color: "#f68080"
            anchors.leftMargin: 60

            Text {
                id: valeurCase4_2
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase4_3
            x: 0
            y: 170
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 60
            anchors.bottomMargin: 5
            anchors.bottom: parent.bottom
            border.color: "#f68080"

            Text {
                id: valeurCase4_3
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }

        Rectangle {
            id: rectCase4_4
            x: 10
            y: 171
            width: 50
            height: 50
            color: "#f27b7b"
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.bottomMargin: 5
            anchors.bottom: parent.bottom
            border.color: "#f68080"

            Text {
                id: valeurCase4_4
                color: "#f9c7c7"
                text: qsTr(" ")
                anchors.fill: parent
                font.pixelSize: 12
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }
        }
    }

    Text {
        id: titre
        text: qsTr("Jeu du 2048")
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.topMargin: 25
        font.pixelSize: 17
    }

    Rectangle {
        id: rectNew
        x: 8
        y: 302
        width: 100
        height: 50
        color: "#c12222"
        radius: 5

        Text {
            id: textNew
            text: qsTr("Nouvelle Partie !")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 11
        }
    }

    Rectangle {
        id: rectScore
        x: 200
        y: 11
        width: 100
        height: 50
        color: "#c12222"
        radius: 5
        Text {
            id: textScore
            text: qsTr("Score :")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            font.pixelSize: 11
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: valeurScore
            x: 0
            y: -5
            text: qsTr("0")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pixelSize: 11
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectDebug
        x: 294
        y: 318
        width: 58
        height: 34
        color: "#c12222"
        radius: 5
        Text {
            id: textDebug
            text: qsTr("None")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pixelSize: 11
            horizontalAlignment: Text.AlignHCenter
            anchors.top: parent.top
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 10
        }
    }

    Rectangle {
        id: rectGauche
        x: 122
        y: 328
        width: 46
        height: 24
        color: "#c12222"
        radius: 5

        MouseArea {
            id: mouseAreaGauche
            anchors.fill: parent

            Text {
                id: textGauche
                text: qsTr("Gauche")
                font.italic: false
                font.bold: false
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 10
            }
        }
    }

    Rectangle {
        id: rectBas
        x: 174
        y: 328
        width: 46
        height: 24
        color: "#c12222"
        radius: 5
        MouseArea {
            id: mouseAreaBas
            anchors.fill: parent

            Text {
                id: textBas
                text: qsTr("Bas")
                font.pixelSize: 10
                font.italic: false
                horizontalAlignment: Text.AlignHCenter
                font.bold: false
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Rectangle {
        id: rectDroite
        x: 227
        y: 328
        width: 46
        height: 24
        color: "#c12222"
        radius: 5
        MouseArea {
            id: mouseAreaDroite
            anchors.fill: parent

            Text {
                id: textDroite
                text: qsTr("Droite")
                font.pixelSize: 10
                font.italic: false
                horizontalAlignment: Text.AlignHCenter
                font.bold: false
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Rectangle {
        id: rectHaut
        x: 174
        y: 302
        width: 46
        height: 24
        color: "#c12222"
        radius: 5
        MouseArea {
            id: mouseAreaHaut
            anchors.fill: parent

            Text {
                id: textHaut
                text: qsTr("Haut")
                font.pixelSize: 10
                font.italic: false
                horizontalAlignment: Text.AlignHCenter
                font.bold: false
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
