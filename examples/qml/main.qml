import QtQuick 2.0


Rectangle {

    x: 0
    y: 0
    width: 400
    height: 400

    Rectangle {
        id: rotatingBox
        x: 150
        y: 100
        width: 100
        height: 100
        color: "lightsteelblue"
        rotation: 50
        NumberAnimation on rotation {
        //RotationAnimation {
            target: rotatingBox;
            from: 0;
            to: 360;
            duration: 1000
            running: true
            loops: Animation.Infinite
        }
    }

    function map_to_parent(item, p) {
        //console.log(item.transform.column(0))
        return {x:0, y:0}
    }

    function map_to_item(source, target, p) {
        //console.log( source.parent, target.parent )
        map_to_parent(source, p)
        var q = source.mapToItem( target, 0, 0 )
        return {x:0, y:0}
    }

    Rectangle {
        id: dot
        width: 10
        height: 10
        radius: 5
        color: "#000"

        //x: rotatingBox.mapToItem( dot, 0, 0 ).x
        //y: rotatingBox.mapToItem( dot, 0, 0 ).y
        x: map_to_item(rotatingBox, dot, {x:0, y:0} ).x
        y: map_to_item(rotatingBox, dot, {x:0, y:0} ).y

    }

}

/*
Rectangle {
   id: rect
   x: 0
   y: 0
   width: 100
   height: 100
   color: '#aaaab0'
   Text {
      anchors.centerIn: parent
      text: "Area:\n" + Math.floor(rect.width * rect.height)
      font.pointSize: 20
   }

   Behavior on width {
      NumberAnimation {
         duration: 1000
         easing.type: Easing.InOutSine
      }
   }

   Timer {
      interval: 1000
      running: true
      repeat: true
      onTriggered: rect.width = (rect.width == 100) ? 50 : 100
   }
}
*/

/*
Rectangle {
   color: "lightgray"
   width: 400
   height: 400

   Text {
       text: "Hello, world!"
       anchors.centerIn: parent
       font.pointSize: 24
       font.bold: true
   }
}
*/