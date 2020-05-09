import 'package:api_url_with_env/util/env_util.dart';
import 'package:flutter/material.dart';

import 'widgets/app.dart';

void main() async {
  Map<String, String> env = await loadEnvFile("assets/env/.env_production");
  runApp(MyApp(env["API_URL"]));
}
