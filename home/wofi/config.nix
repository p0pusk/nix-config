{
  programs.wofi = {
    settings = {
      width = 600;
      height = 350;
      location = "center";
      show = "drun";
      prompt = "Search...";
      filter_rate = 100;
      allow_markup = true;
      # no_actions = true;
      halign = "fill";
      orientation = "vertical";
      content_halign = "fill";
      insensitive = true;
      allow_images = true;
      image_size = 40;
      gtk_dark = true;
      key_up = "Control_L-p";
      key_down = "Control_L-n";
    };
    style = builtins.readFile (./style.css);
  };
}
