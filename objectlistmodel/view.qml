/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.5
import QtQuick.Window 2.0
import QtQuick.Controls 1.4

Window {
    visible: true;
    width: 200;
    height: 200;

//    ListView {
//        width: 100; height: 100

//        model: myModel
//        delegate: Rectangle {
//            height: 25
//            width: 100
//            color: model.modelData.color
//            Text { text: name }
//        }
//    }
    TableView {
        id: stockTable;
        anchors.fill: parent
        model: myModel;

        TableViewColumn {
            role: "str_name";
            title: "项目名";
            width: 60;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn {
            role: "itm_color";
            title: "颜色";
            width: 60;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        itemDelegate: Text {
            text: styleData.value;
            verticalAlignment: Text.AlignVCenter;
            horizontalAlignment: Text.AlignRight;
            font.pointSize: 13;
            elide: styleData.elideMode;
            onTextChanged: {
                switch(styleData.column){
                case 1:
                    color = stockTable.colorOf(styleData.row);
                    break;
                }
            }
        }

        function colorOf(row){
            switch(model.stateOf(row)){
            case 0:
                return "black";
            case 1:
                return "red";
            case -1:
                return "green";
            }
        }

    }
}



