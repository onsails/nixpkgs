{ lib, rustPlatform, fetchFromGitHub }:

with rustPlatform;
buildRustPackage rec {
  pname = "atuin";
  version = "0.6.4";

  src = fetchFromGitHub {
    owner = "ellie";
    repo = "atuin";
    rev = "v${version}";
    sha256 = "sha256-JmSnOQJ2rQQZaenn8FWM5LYtSDsOkBGloX8PoX9nT70=";
  };

  cargoSha256 = "0j65njw67737w4f3l8d8yiq370qlczrjhnli3z1kfsjpdh5yhw11";

  meta = with lib; {
    description = "Magical shell history";
    homepage = "https://github.com/ellie/atuin";
    license = licenses.mit;
    maintainers = [ maintainers.onsails ];
  };
}
