package apms.Chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_ChatCtrl {
	// http://172.30.1.37:8080/apms/chat.do
	@RequestMapping("/chat.do")
	public String chat() {
		return "chat/a01_chatForm";
	}

}
