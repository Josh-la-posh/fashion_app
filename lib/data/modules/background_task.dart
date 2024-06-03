import 'package:flutter/material.dart';

import '../provider/auth_provider.dart';
import 'interceptor.dart';

final _apiService = AppInterceptor(showLoader: false).dio;

getUserProfileDetails(AuthProvider authProvider) {
  Future userProfileDetails(){
    return _apiService.get('');
  }
}

handleBackgroundAppRequest()  {
}
