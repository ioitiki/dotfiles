# /etc/nixos/chat-openai.nix
{ config, lib, pkgs, ... }:

let
   # Create a shell script that launches Chromium
   openaiChatScriptPath = pkgs.writeShellScriptBin "openai-chat" ''
      org.chromium.Chromium "https://chat.openai.com"
   '';

   # Create a symbolic link to the script in the user's home directory
   openaiChatScriptLink = pkgs.writeShellScriptBin "create-link" ''
      ln -sf ${openaiChatScriptPath}/bin/openai-chat ~/.local/bin/openai-chat.sh
   '';
in
{
   # Ensure the script link is created
   system.activationScripts.createLink = openaiChatScriptLink;

   # Create a `.desktop` entry in the user's local applications directory
   home.file.".local/share/applications/openai-chat.desktop".text = ''
      [Desktop Entry]
      Name=OpenAI Chat
      Exec=~/.local/bin/openai-chat.sh
      Type=Application
      Terminal=false
   '';
}
