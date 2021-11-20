package websiteEnglishCenter.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomepageController {
	@RequestMapping(value = { "/homepagen2t" }, method = RequestMethod.GET)
	public String home(final ModelMap model
			, final HttpServletRequest request
			, final HttpServletResponse response) throws IOException {
		
			
		return "user/homepagen2t";

	}
}
