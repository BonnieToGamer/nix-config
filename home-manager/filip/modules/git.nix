{
  programs.git = {
    enable = true;
    userName = "BonnieToGamer";
    userEmail = "68508540+BonnieToGamer@users.noreply.github.com";

    extraConfig.core.sshCommand = "ssh -i ~/.ssh/id_ed25519_bonnie";
  };
}
