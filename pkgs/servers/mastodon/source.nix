# This file was generated by pkgs.mastodon.updateScript.
{ fetchFromGitHub, applyPatches }: let
  src = fetchFromGitHub {
    owner = "mastodon";
    repo = "mastodon";
    rev = "v4.1.8";
    hash = "sha256-L4ikr270hXpTgh9DAyN9c5wzj/93urulcG9bTxwNOFw=";
  };
in applyPatches {
  inherit src;
  patches = [];
}
