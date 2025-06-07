import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sismoney/integrations/openai/completions/create_default_chat_completion.dart';
import 'package:sismoney/integrations/requests/contracts/api_contract.dart';
import 'package:sismoney/integrations/requests/http_request.dart';

void main() {
  test('Should be create a default Chat Completion', () async {
    await dotenv.load(fileName: ".env");

    final ApiContract http = HttpRequest();
    final createDefaultChatCompletion = CreateDefaultChatCompletion(http);

    final response = await createDefaultChatCompletion.execute(
      instructions: 'You are a helpful assistant.', 
      message: 'Hello'
    );

    expect(response.statusCode, equals(200));
  });
}
