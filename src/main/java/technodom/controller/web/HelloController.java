package technodom.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import technodom.service.UserService;
import technodom.util.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HelloController {

    @Autowired
    public UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		return "homePage";

	}

    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
    public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
								@ModelAttribute("user") User user) {
        String userId = userService.createUser(user);
		return new ModelAndView("userCreated", "userID", userId);
    }
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView getUser(@RequestParam(value = "userID", required = false) String userID) {
        User user = userService.getUser(userID);
        return new ModelAndView("foundUser", "user", user);
    }
    @RequestMapping(value = "/user/{userId}/{oldStatus}", method = RequestMethod.POST)
    public ModelAndView addUser(@ModelAttribute("user") User user, @PathVariable(value = "userId") String userId, @PathVariable(value = "oldStatus") String oldStatus) {
        String newStatus = userService.changeStatus(userId, oldStatus);
        Map<String, Object> userModel = new HashMap<String, Object>();
        userModel.put("userID", userId);
        userModel.put("oldStatus", oldStatus);
        userModel.put("newStatus", newStatus);
        return new ModelAndView("userUpdated", "userModel", userModel);
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public ModelAndView getUsers(@RequestParam(value = "status") String status, ModelMap map) {
        List<User>  userList= userService.getUsersByStatus(status);
        map.addAttribute("userList", userList);
        return new ModelAndView("userStatistics", map);
    }

}