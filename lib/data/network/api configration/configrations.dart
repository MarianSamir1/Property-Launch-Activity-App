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
    tenant: '99f8b32c-f61b-4f4d-b17a-54fe7e07d3c5',
    clientId: '44649c96-c709-4f0b-8931-6c6c9a1f52e5',
    scope:
        'openid profile offline_access https://initium.api.crm4.dynamics.com/.default',
    redirectUri: 'https://bluemotive.it/assets/img/complete.png',
    clientSecret: '6oZ8Q~m_zkJWECeizr7XgnAgo2dgfDLQaINO.azh',
    navigatorKey: navKey,
  );
}
