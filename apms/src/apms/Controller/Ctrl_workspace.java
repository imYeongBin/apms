package apms.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/workspace.do")
public class Ctrl_workspace {

	@RequestMapping(params = "method=list")
	public String list(Model d) {
		return "main/main";
	}
	
}
