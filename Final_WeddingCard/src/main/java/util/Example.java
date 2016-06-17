package util;

import com.twilio.sdk.Twilio;
import com.twilio.sdk.type.PhoneNumber;
import com.twilio.sdk.resource.api.v2010.account.Message;
import com.twilio.sdk.creator.api.v2010.account.MessageCreator;

public class Example {

  // Find your Account Sid and Token at twilio.com/console
  public static final String ACCOUNT_SID = "ACf84881ad7f37a293390330eb5a56af1c";
  public static final String AUTH_TOKEN = "ac343d805e1e1fc5005e0ab73fe7c304";

  public static void main(String[] args) {
    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

    Message message = new MessageCreator(
      ACCOUNT_SID,
      new PhoneNumber("+821065356597"), // TO number
      new PhoneNumber("+13105043223"), // From Twilio number
      "주말 잘보내세요"
    ).execute();

    System.out.println(message.getSid());
  }
}