package technodom.dao;

import technodom.util.User;

/**
 * Created by talgatpardabekov on 8/6/17.
 */
public interface UserDao {
    String createUser(User user);
    User getUser();
}
