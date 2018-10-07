import QtQuick 2.2

Qrezi {

   Column {
      Rectangle {
         color: 'red'
         width: 200
         height: 100
      }


      Slide {
         id: slide1
         //Heading { text: "Hello Qrezi"}
         Rectangle { anchors.fill: parent; color: "#889922" }
         /*
         Paragraph {
            text: "You can navigate using the left & right arrow key or space."
         }
         Paragraph { text: "Hit 'space' now." }
         */
      }
/*
      Slide {
         Heading { text: "Where am I"}
         Paragraph {
            text: "Slides are in a spatial relationship to each other. "
                + "That's why we need a Column around them because using "
                + "a Column or a Row is the easiest way to put them side "
                + "by side automatically."
         }
         Paragraph {
            text: "Of course you can put the slides where ever you want. "
                + "But then you have to layout them yourself or use other "
                + "layout items."
         }
         Rectangle {
            property bool add_to_qrezi: true
            width: 150
            height: 50
            color: '#223'
            Text {
               anchors.centerIn: parent
               text: "Some custom slide."
               color: '#fff'
            }
         }
      }

      Slide {
         id: slide3
         Heading { text: "Code"}
         Paragraph { text: "You can easily add color highlighted code blocks:" }
         Code {
            text: 'int main(){\n'+
                  '   printf("Hello qrezi!");\n'+
                  '}'
            height: 150
         }
      }

      Slide {
         Heading { text: "Conclusions"}
         Paragraph { text: "This is just aweseome."}
         Paragraph { text: "It's really great."}
      }
      */
   }
}
