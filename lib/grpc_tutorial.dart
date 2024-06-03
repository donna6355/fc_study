
//grpc
//https://towardsdev.com/flutter-grpc-9c6029662dcc
/*

Step 1: Activate Proto plugin
flutter pub global activate protoc_plugin

==========================================================================================
Warning: Pub installs executables into $HOME/.pub-cache/bin, which is not on your path.
You can fix that by adding this to your shell's config file (.bashrc, .bash_profile, etc.):

  export PATH="$PATH":"$HOME/.pub-cache/bin"

==========================================================================================


Step 2: Generate proto files IN THE SERVER then move dart files
protoc --proto_path=proto --proto_path=third_party --dart_out=grpc:proto service.proto


Step 3: Flutter client implementation
install packages such as grpc and protobuf
 */