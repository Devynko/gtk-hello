public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.Devynko.gtk-hello" ,
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        //Defining The Button 
        var button_hello = new Gtk.Button.with_label ("Click Me!");
        button_hello.margin = 30;
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World";
            button_hello.sensitive = false;
        });

        //Creates the window and its content
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }

}