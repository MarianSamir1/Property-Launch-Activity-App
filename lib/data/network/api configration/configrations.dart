import 'package:aad_oauth/model/config.dart';
import 'package:property_launch_app/my_app.dart';

class ApiConfigration {
  //===================== production configration =============================
  //production baseUrl
  // static String baseUrl = "https://ini-hrmax.crm4.dynamics.com/api/data/v9.2";

  // //production Config
  // static final Config config = Config(
  //   tenant: 'd7be1e00-bf67-40de-a606-1a75a207d413',
  //   clientId: '9e6ce760-266a-485e-ba93-7966b96f6b1c',
  //   scope:
  //       'openid profile offline_access https://initium.api.crm4.dynamics.com/.default',
  //   redirectUri: 'https://bluemotive.it/assets/img/complete.png',
  //   clientSecret: 'zNr7Q~rqW2dnxBApmYCuZZUFBFumgw3ODOMxA',
  //   navigatorKey: navKey,
  // );

  //===================== test configration =============================
  // test baseUrl
  static String baseUrl =
      "https://initiumsolutionsdefault.crm4.dynamics.com/api/data/v9.2";

  // test Config
  static final Config config = Config(
    tenant: 'd7be1e00-bf67-40de-a606-1a75a207d413',
    clientId: '1c73c495-f296-479b-ae65-e640aea665b2',
    scope:
        'openid profile offline_access https://initium.api.crm4.dynamics.com/.default',
    redirectUri: 'https://bluemotive.it/assets/img/complete.png',
    clientSecret: 'fEP8Q~TwrQD5SjDyBZ2DX.Y~rBFl8sDAuO3D1cyB',
    navigatorKey: navKey,
  );
}
