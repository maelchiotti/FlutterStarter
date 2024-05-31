enum Asset {
  flutter('icons/icon.png'),
  ;

  final _basePath = 'assets';

  final String filePath;

  const Asset(this.filePath);

  String get path => '$_basePath/$filePath';
}
