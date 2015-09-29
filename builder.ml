open Printf

let target_folder = "target"
let source_folder = "source"
let indent_size = 2

let indent_line (ind : int) (text : string) : string =
    String.concat "" [(String.make (ind*indent_size) ' ') ; text]

let main =
    let file = open_out (String.concat "/" [target_folder ; "index.html"]) in
    let echo (s : string) : unit =
        fprintf file "%s" s
    in
    let echon (s: string) :unit =
        fprintf file "%s\n" s

    let write_head () : unit =
        echon "<head lang = \"fr\">";
        echon (indent_line 1 "<meta charset=\"UTF-8\">");
        echon (indent_line 1 "<title>Dessins de Stephane Zimmermann</title>");
        echon "</head>"
    in
    let write_body () : unit =
        echon "<body>";
        echon "Hello world !";
        echon "</body>"
    in

    echon "<DOCTYPE html>";
    echon "<html>";
    write_head ();
    write_body ();
    echon "</html>"
