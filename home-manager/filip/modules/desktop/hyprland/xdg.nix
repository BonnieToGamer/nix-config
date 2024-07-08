{
  xdg = {
    mimeApps.defaultApplications = {
      "text/plain" = [ "NotepadNext.desktop" ];
      "application/pdf" = [ "zathura.desktop" ];
      "image/*" = [ "sxiv.desktop" ];
      "video/*" = [ "mpv.desktop" "vlc.desktop" ];
      "application/vnd.rar" = "org.gnome.FileRoller.desktop";
      "application/x-matroska" = "mpv.desktop";
      "application/x-xpinstall" = "org.gnome.FileRoller.desktop";
      "application/zip" = "org.gnome.FileRoller.desktop";
      "text/*" = [ "NotepadNext.desktop" "code.desktop" ];
      "x-scheme-handler/http" = "firefox.desktop";
      "x-scheme-handler/https" = "firefox.desktop";
      "x-scheme-handler/mailto" = "firefox.desktop";
      "inode/directory" = "nemo.desktop";
    };
  };
}