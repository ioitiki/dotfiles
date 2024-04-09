{ ... }:

{
  users.users.andy = {
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHjQcb4n7WN/L0udhZTpGXZFLylgYCGM+8cRIbGTMmHD/OMV/d96uH+XE9mRMR3NtqBm51ZnUf5EBVLG8F9ZW9X3ADcT6yH2OyIqiLjdo0i5TxqFWYzxGR4dcjZz8ot3/jC1kNb2JUctZjivZFe6uyvan8HA6lst4RXY+eFwWDRAxGKS+Rm7pEoUs6UmGw+rHEfhzHhPU/7/lu0tPuyS3INg55Ag70X160uL6+TDlgaWHMkgCQYr/zP/JHkff+qUU4yBLMZ9MHpj2IvaKckgSBG7ZsbyloEPs9SE9Kl7HzdzqFy+ULVHLBwtG1klkn1sUmbG88K2EveqiySV32VxKV andy"
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsPRUW9VJOn85lOtxfyZIuNeHSSxoXBuxQTGdZzKNrIdsUpaDTeZvLgmFfDFc4IAVI7IGy/20w2YRXodjlVFVu63TaexAmAbX1VccZJerNGFmlHD6nrlNgIDzXJClmjOylGSXagtdW/KogXb35ll4+8qt6UtFJH6YvXjPNrtpGEsCAgFMiBHuVY2pDIrRLmFwOtpB+J8DHxjk+eBFGfxoObih03p2flsvZ3o5s3CEGtqjmq/b1+D0/+xUzj88C3WcoLQUeTkZEeovZ3iQ+1K2LbohNpwOKDIgAB+6ge/6OOwyShEajGqHbn3Mm9cI+wSuijqI2jk/C+23cXkKdIF42O0SrXNZHPdWH2Tap6m20YZF/0M0UtKUIVQjr/Tm4GsJ8MUDJjXF2NKxGkvViLwx4hfZFWIk1hkcvcFTVE6TzYnZnbPVI9KRrgizXJdo/6ftG5mDo4fqMgf3v13j1JozidZPZUz//Y03zHhGPTxFj0IUX4MQXRFv9jPS8MEGtJNOldZdH7If2qbvCWDHEFIyuIDCfBHaJuVx7YF7+3c2qKam8nQqoR8r74Mu0ozdvBbODB3lxVsMEa2EPjrZGDsgyEoMkeDKkXXu98L8eNIj5Aqiit8gp7b0Csg+pXe+0BnclnQ7f7S0Ayd+tn8dPrm4qJrJOhL6MvLjKBdkSNO/3Lw== miMacBook"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGwE1G4XbK4wY7dDtc3BvVGHEWu6ZcyoTUJnb56Y97fd nixos-opi5"
    ];
    isNormalUser = true;
    description = "Andy Malkin";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };
}
