import 'package:http/http.dart';
import 'package:sismoney/integrations/openai/openai.dart';

class CreateDefaultChatCompletion extends Openai {
  CreateDefaultChatCompletion(super.request);

  Future<Response> execute({
    required String instructions,
    required String message,
  }) async {
    final response = await request.post(
      url: '/completions',
      body: {
        "model": "gpt-4.1",
        "messages": [
          {"role": "developer", "content": instructions},
          {"role": "user", "content": message},
        ],
      },
    );

    return response;
  }
}
