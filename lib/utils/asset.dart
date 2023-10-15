enum Asset {
  flutter('logos/flutter_logo.png'),
  ;

  final _basePath = 'assets';

  final String filePath;

  const Asset(this.filePath);

  String get path => '$_basePath/$filePath';
}
