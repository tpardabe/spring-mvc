package technodom.service;

import technodom.util.User;

import java.util.List;

/**
 * Created by talgatpardabekov on 8/6/17.
 */
public interface UserService {

    String createUser(User user);

    User getUser(String userID);

    String changeStatus(String userID, String oldStatus);

    List<User> getUsersByStatus(String status);

}
