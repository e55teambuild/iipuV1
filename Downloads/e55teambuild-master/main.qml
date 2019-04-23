import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import Rikardo_Milos 1.0

Item{
    Window {
        id: w1
        visible: true
        width: 640
        height: 480
        x: (Screen.width - width) / 2
        y: (Screen.height - height) / 2


        Timer {
            interval: 1500
            repeat: true
            running: true

            onTriggered: {
                w1.hide()
                w2.show()
            }
        }



        MouseArea {
            anchors.fill: parent


            Image {
                id: image1
                x: 0
                y: 0
                width: 640
                height: 480
                clip: true
                anchors.fill: parent
                source: "p.jpg"
            }
        }

        Text {
            color: "#e8e5e5"
            text: qsTr("PenAppleTechnologies....................present")
            font.pointSize: 14
            font.bold: true
            font.italic: true
            font.family: "Tahoma"
            anchors.verticalCenterOffset: 207
            anchors.horizontalCenterOffset: -77
            anchors.centerIn: parent
        }
     }

Window{
     id: w2
    visible: false
    width: 1024
    height: 768
      x: (Screen.width - width) / 2
      y: (Screen.height - height) / 2


    MouseArea {
        anchors.fill: parent

        SuperStar {
            id: lab1
            source: "dmesg.txt"
            onError: console.log(msg)
        }

        SuperStar{
            id: lab2z1
            source: "devices.txt"
            onError: console.log(msg)
        }

        SuperStar{
            id: caps
            source: "devices.txt"
            onError: console.log(msg)
        }

        Image {
            anchors.fill: parent
            id: image2
            x: 0
            y: 0
            width: 1024
            height: 768
            visible: true
            clip: true
            source: "desk.jpg"

            Button {
                id: button1
                x: 924
                y: 8
                width: 92
                height: 91
                text: qsTr("")
                clip: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "exit.png" :
                                                  (control.hovered ? "exitactiv.png" : "exit.png")
                    }
                }

                onClicked: w3.show()
            }

            Button {
                id: button2
                x: 884
                y: 105
                width: 190
                height: 134
                text: qsTr("")
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "par3.png" :
                                                  (control.hovered ? "par4.png" : "par3.png")
                    }

                }
                onClicked:{
                    if(button3.visible == false){
                        text2.visible = true
                        button3.visible = true
                        button4.visible = true
                        button5.visible = true
                        button6.visible = true }
                    else{
                        text2.visible = false
                        button3.visible = false
                        button4.visible = false
                        button5.visible = false
                        button6.visible = false
                    }
                }
            }


            Text {
                id: text2
                x: 761
                y: 245
                width: 235
                height: 69
                color: "#efecec"
                text: qsTr("Выберите стиль")
                clip: true
                visible: false
                font.underline: true
                horizontalAlignment: Text.AlignHCenter
                style: Text.Raised
                font.italic: true
                font.bold: true
                font.pixelSize: 23
            }

            Button {
                id: button3
                x: 828
                y: 309
                width: 85
                height: 71
                text: qsTr("Стандарт")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "p.jpg" :
                                                  (control.hovered ? "p.jpg" : "fon.jpg")
                    }

                }
                onClicked: image2.source = "p.jpg"
            }

            Button {
                id: button4
                x: 924
                y: 309
                width: 85
                height: 71
                text: qsTr("Космос")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "fon.jpg" :
                                                  (control.hovered ? "galaxy.jpg" : "fon.jpg")
                    }

                }
                onClicked: image2.source = "galaxy.jpg"
            }

            Button {
                id: button5
                x: 828
                y: 392
                width: 85
                height: 71
                text: qsTr("Дерево")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "fon.jpg" :
                                                  (control.hovered ? "desk.jpg" : "fon.jpg")
                    }

                }
                onClicked: image2.source = "desk.jpg"
            }

            Button {
                id: button6
                x: 924
                y: 392
                width: 85
                height: 72
                text: qsTr("Кофе")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "fon.jpg" :
                                                  (control.hovered ? "coffee.jpg" : "fon.jpg")
                    }

                }
                onClicked: image2.source = "coffee.jpg"
            }

            Text {
                id: text1
                x: 69
                y: 8
                width: 659
                height: 117
                color: "#f3f1f1"
                text: qsTr("Умная надпись")
                font.bold: true
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.underline: true
                font.italic: true
                font.pixelSize: 42
            }

            Button {
                id: button7
                x: 78
                y: 131
                width: 131
                height: 57
                text: qsTr("Лаб 1")
                checkable: true
                onClicked: {
                    if(button7.checked == true){
                         image3.visible = false
                        textArea1.visible = true
                        textArea3.visible = false
                        textArea2.visible = false
                        button9.checked = false
                        button10.checked = false
                        button11.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        textArea1.text = lab1.read();
                    }
                        else textArea1.visible = false


                }
            }

            Button {
                id: button8
                x: 69
                y: 692
                width: 58
                height: 52
                text: qsTr("")
                clip: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: "p.jpg"
                    }
                }
                onClicked:
                { if(image3.visible == false){
                        image3.visible = true
                        button7.checked = false
                        textArea1.visible = false
                        textArea3.visible = false
                        textArea2.visible = false
                        button9.checked = false
                        button10.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        button11.checked = false}
                    else image3.visible = false
                }
            }

            Image {
                id: image3
                x: 159
                y: 270
                width: 569
                height: 315
                opacity: 1
                source: "fon2.jpg"
                visible: false


                TextEdit {
                    id: textEdit1
                    x: 35
                    y: 15
                    width: 470
                    height: 396
                    text: qsTr("Приложение разрабатываетсявается  студентами третьего курса: \n \n  Тарасюком Дмитрием Александровичем \n  Стрехой Андреем Васильевичем \n  И третьим парнем хз как его зовут \n\
\n \nПо заказу БрГТУ; специально для лабораторных работ по предмету 'ИиПУ' \n\n\n\n\n\n\n\n\n\n\n\n                                   ©PenAppleTechnologies   2019")
                    font.pixelSize: 12
                }
            }

            Button {
                id: button9
                x: 204
                y: 131
                width: 131
                height: 57
                text: qsTr("Лаб 2")
                checkable: true
                onClicked: {
                    if(button9.checked == true){
                         image3.visible = false
                        textArea2.visible = true
                        textArea3.visible = false
                        textArea1.visible = false
                        button7.checked = false
                        button10.checked = false
                        button12.visible = true
                        button13.visible = true
                        button14.visible = true
                        button11.checked = false}
                        else textArea2.visible = false


                }
            }

            Button {
                id: button10
                x: 333
                y: 131
                width: 131
                height: 57
                text: qsTr("Лаб 3")
                checkable: true
                onClicked: {
                    if(button10.checked == true){
                         image3.visible = false
                        textArea3.visible = true
                        textArea2.visible = false
                        textArea1.visible = false
                        button7.checked = false
                        button9.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        button11.checked = false}
                        else textArea3.visible = false


                }
            }

            Button {
                id: button11
                x: 462
                y: 131
                width: 131
                height: 57
                text: qsTr("Лаб 4")
                checkable: true
                onClicked: {
                    if(button11.checked == true){
                         image3.visible = false
                        textArea3.visible = false
                        textArea2.visible = false
                        textArea1.visible = false
                        button7.checked = false
                        button9.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        button10.checked = false}

                }
            }

            TextArea {
                id: textArea1
                x: 69
                y: 228
                width: 659
                height: 458
                text: ""
                font.pixelSize: 10
                visible: false
                clip: true
            }

            TextArea {
                id: textArea2
                x: 67
                y: 226
                width: 655
                height: 458
                visible: false
            }

            TextArea {
                id: textArea3
                x: 69
                y: 230
                width: 659
                height: 461
                visible: false
                Keys.onPressed: {
                     text = event.key
                    if(text == "16777235"){
                        text = "Нажмите  клавишу  включения  любого  индикатора
клавиатуры  "
                      indikator.checked = true

                    }

                 if(text == "16777252"  && indikator.checked == true)
                        text = caps.lab3zd2()

                 else if(text == "16777253"  && indikator.checked == true)
                        text = caps.lab3zd22()


                   else if(text == "16777265"){
                        text = "Посмотрите на индикаторы"
                        text = caps.lab3zd3() }
                   else if(text == "49")
                   {text = "okey"; text = caps.lab3zd1()
                   }
                // else
                // {text = " - Это не та клавиша"
                //}
                }
            }

            Button {
                id: button12
                x: 166
                y: 692
                width: 120
                height: 27
                text: qsTr("страница 1")
                visible: false
                checkable: true
                onClicked: {
                    if(button12.checked == true){
                        button13.checked = false
                         button14.checked = false
                        textArea2.text = lab2z1.lab2zd1();

                    }
                }
            }

            Button {
                id: button13
                x: 284
                y: 692
                width: 120
                height: 27
                text: qsTr("страница 2")
                visible: false
                checkable: true
                onClicked: {
                    if(button13.checked == true){
                        button12.checked = false
                         button14.checked = false
                        textArea2.text = lab2z1.lab2zd2();

                    }
                }
            }

            Button {
                id: button14
                x: 400
                y: 692
                width: 120
                height: 27
                text: qsTr("страница 3")
                visible: false
                checkable: true
                onClicked: {
                    if(button14.checked == true){
                        button13.checked = false
                         button12.checked = false
                        textArea2.text = lab2z1.lab2zd3();

                    }
                }
            }

            Button {
                id: indikator
                x: 796
                y: 636
                width: 15
                height: 17
                text: qsTr("Button")
                visible: false
                checkable: true
            }



        }
    }

}
   Window {
        id: w3
        visible: false
        width: 540
        height: 100
        color: "beige"
        x: (Screen.width - width) / 2
        y: (Screen.height - height) / 2

        MouseArea {
            anchors.fill: parent

            Text {
                id: textw3
                x: -15
                y: 27
                width: 519
                height: 26
                text: qsTr("               Вы действительно хотите выйти?")
                font.pixelSize: 21
            }

            Button {
                id: buttonw3
                x: 99
                y: 65
                width: 128
                height: 27
                text: qsTr("Нет")
                onClicked: w3.hide()

            }

            Button {
                id: button2w3
                x: 317
                y: 65
                width: 124
                height: 27

                text: qsTr("Да")
                onClicked: Qt.quit()
            }
        }
    }

}
