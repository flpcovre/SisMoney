import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sismoney/integrations/requests/contracts/api_contract.dart';

abstract class Openai {
  final String baseUri = "https://api.openai.com/v1/chat";
  late final ApiContract request;

  Openai(this.request) {
    request.setBaseUri(baseUri: baseUri);
    request.setHeaders(
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${dotenv.get('OPENAI_KEY')}",
      },
    );
  }
}
