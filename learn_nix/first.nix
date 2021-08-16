with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "file-5.38";

  src = fetchurl {
    url = "ftp://ftp.astron.com/pub/file/file-5.38.tar.gz";
    sha256 = "0d7s376b4xqymnrsjxi3nsv3f5v89pzfspzml2pcajdk5by2yg2r";
  };

  buildInputs = [ zlib ];

  meta = {
    homepage = https://darwinsys.com/file;
    description = "A program that shows the type of files";
  };
}
