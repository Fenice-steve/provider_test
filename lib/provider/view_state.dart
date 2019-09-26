enum ViewState {idle, busy, empty, error, unAuthorized}

/// 用于未登陆等权限不够，需要跳转授权页面
class UnAuthorizedException implements Exception{
  const UnAuthorizedException();

  @override
  String toString() => 'UnAuthorizedException';
}