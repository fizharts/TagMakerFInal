void principal ( ) {
    shape(fondo, 0, 0, 600, 600);
    fill(255);
 
    
    fill(textoColor);
    textFont(fuentePlaca, tSize);
    text(cp5.get(Textfield.class," ").getText(), x, y);
    
    textFont(fuentePlaca, tSize+2);

    fill(cp.getColorValue());
    text(cp5.get(Textfield.class," ").getText(), x+1, y+1);
 
}