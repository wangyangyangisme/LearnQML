import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    property int n_tool_space_width: 35
    property int n_tool_space_height: 5
    anchors.top: parent.top;
    anchors.topMargin: n_tool_space_height
    anchors.right: parent.right
    anchors.rightMargin: n_tool_space_width
    width: 220
    height: 55
    z: 2
    radius: 8
    border.width: 1
    border.color: "white"
    opacity: 0.6

    property int n_spacing: 10
    property int n_btn_width: (width-n_spacing*2)/4
    property int n_btn_height: height -n_spacing

    Row {
        anchors.left: parent.left
        anchors.leftMargin: n_spacing
        anchors.top: parent.top
        anchors.topMargin: 5

        Button {
            id: btn_near
            width: n_btn_width
            height: n_btn_height
            text: "拉近"
        }

        Button {
            id: btn_far
            width: n_btn_width
            height: n_btn_height
            text: "拉远"
        }
        Button {
            id: btn_photo
            width: n_btn_width
            height: n_btn_height
            text: "抓拍"
        }
        Button {
            id: btn_fullscreen
            width: n_btn_width
            height: n_btn_height
            text: "全屏"
        }
    }

    onWidthChanged: {
        n_btn_width = (width-n_spacing*2)/4;
    }

    onHeightChanged: {
        n_btn_height = height -n_spacing;
    }
}

