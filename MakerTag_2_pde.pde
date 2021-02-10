import controlP5.*;
ControlP5 cp5;
PGraphics pg;
String textValue = "";
PFont font ;
PFont fuentePlaca ;
PFont fuenteDos ;
PShape fondo;
int left = 0;
int right = 0;
int x = 0;
int y = 0;
int tSize = 80;
color c = color(255, 200, 100);
color btn_svg_active = color(179, 9, 42);
color btn_svg = color(255, 23, 68);
color btn_svg_hover = color(218, 30, 66);
int btn_x = 30;
int btn_y = 30;
int btn_width = 100 ;
int btn_height = 50 ;
int [] btn_area = {btn_x , btn_y , btn_height , btn_width , btn_height};
String fondoSvg = "fondoHuesos.svg";
color textoColor = color(255, 23, 68);
int sY = 500;
int sX = 50;
String georgia = "Georgia" ;
boolean navFuente = false;
DropdownList d1, d2;
int numFuente = 0;
Textarea myTextarea;
String[] fontList = PFont.list();
String textoFuentes = "";
ColorPicker cp;





String Nombre  = "Nombre"; 
void setup() {
    size(600, 600);
    
    font = createFont("Georgia",20);   
    fuentePlaca = createFont(georgia , 20);
    fuenteDos = createFont("Georgia" , 20); 
    y = height/2;
    x = width/2;
    cp5 = new ControlP5(this);
    botones();
    formulario();
    dropdown();
    colorPicker();
    
}

void draw() {
    fondo = loadShape(fondoSvg);  

   
            principal();
  
      
    
   
}

void keyPressed() {
   
    if (keyCode == 8) {
    Nombre = Nombre.substring(0, Nombre.length()-1);
    }else {
        if( keyCode == 37 || keyCode == 39 || keyCode == 40 || keyCode == 38 || keyCode == 521 || keyCode == 45){
        }else{
            Nombre += key;
        }

        
    }

    
    switch (keyCode) {
        case 39 :
            x += 5;
        break;
        case 37 :
            x -= 5;
        break;
        case 40 :
            y += 5;
        break;
        case 38 :
            y -= 5;
        break;
        case 521 :
            tSize += 1;
        break;
        case '-' :
            tSize -= 1;
        break;            
    }


}



void fileSelected(File selection) {
    if (selection == null) {
    println("Window was closed or the user hit cancel.");
        } else {
    println("User selected " + selection.getAbsolutePath());
    fondoSvg = selection.getAbsolutePath();
    }
}



void mousePressed() {


}


void controlEvent(ControlEvent theEvent) {
    if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
    }

      if (theEvent.isGroup()) {
            println(theEvent.getGroup().getValue());
    } 
    else if (theEvent.isController()) {
        println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
        
        numFuente = Math.round(theEvent.getController().getValue()) ;

        println( theEvent.getController().getName() ) ;

        println( fontList[numFuente] ) ;
        if ( theEvent.getController().getName() == "myList-d1") {
                fuentePlaca = createFont(fontList[numFuente+1] , 20);

        }

    }

  
}




public void input(String theText) {
    println("a textfield event for controller 'input' : "+theText);
}


// color information from ColorPicker 'picker' are forwarded to the picker(int) function
void picker(int col) {
  println("picker\talpha:"+int(alpha(col))+"\tred:"+int(red(col))+"\tgreen:"+int(green(col))+"\tblue:"+int(blue(col))+"\tcol"+col);
}