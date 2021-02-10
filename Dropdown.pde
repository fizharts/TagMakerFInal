void dropdown () {
    d1 = cp5.addDropdownList("myList-d1")
          .setPosition(500, 0)
          .setFont(createFont("arial",12))
          .setOpen(false)  
          ;
          
  customize(d1); // customize the first list
  
 
}


void customize(DropdownList ddl) {
  // a convenience function to customize a DropdownList
  ddl.setBackgroundColor(btn_svg);
  ddl.setItemHeight(12);
  ddl.setBarHeight(50);
  ddl.getCaptionLabel().set("Fuente");
  for (int i=0;i<fontList.length;i++) {
    ddl.addItem(fontList[i],"item "+ i);
  }
  //ddl.scroll(0);
  ddl.setColorBackground(btn_svg);
  ddl.setColorActive(color(255, 128));
}






