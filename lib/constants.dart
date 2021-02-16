const String kApiBaseUrl = 'https://tm.cruisetech.xyz';

const String kTokenKey = '__token';
const String kCookieKey = '__token';

String proxiedJson(String path) => "$kApiBaseUrl/$path";

String ajaxUrl(String path) => path.startsWith("http")
    ? path
    : "https://trophymanager.com/ajax/$path.ajax.php";

String httpUrl(String path) =>
    path.startsWith("http") ? path : 'https://trophymanager.com/$path';

class Strings {
  static const appName = 'TopCoder';
}

class Images {
  static const String logo = 'assets/images/tc-logo.png';
}
