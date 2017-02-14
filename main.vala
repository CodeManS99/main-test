int main (string[] args) {
    Gtk.init (ref args);
    var window = new Gtk.Window ();
    window.title = "Main"; 
    window .set_border_width (12);
    window.set_position (Gtk.WindowPosition.CENTER);
    window.set_default_size (350, 70);
    window.destroy.connect (Gtk.main_quit);
        
    var button_hello = new Gtk.Button.with_label ("Button here!");
    button_hello.clicked.connect (() => {
        button_hello.label = "Hello!";
        button_hello.set_sensitive (false);
});
   
  
window.add (button_hello);
window.show_all (); 
  
      
    Gtk.main();    
    return 0;
}

