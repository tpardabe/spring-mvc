package technodom.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import technodom.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import technodom.util.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

/**
 * Created by talgatpardabekov on 8/6/17.
 */
public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    private final String STATUS_ONLINE = "ONLINE";
    private final String STATUS_OFFLINE = "OFFLINE";

    @Autowired
    JdbcTemplate jdbcTemplate;

    public String createUser(User user) {
        String sql = "insert into users values(?,?,?,?,?, ?)";
        Random rand = new Random();
        //TODO: use different random number generator
        int userId = rand.nextInt(100000);
        jdbcTemplate.update(sql, new Object[] { userId, user.getFirstname(),
                user.getLastname(), user.getEmail(), user.getURI(), STATUS_ONLINE});
        return String.valueOf(userId);
    }

    public User getUser(String userID) {
        String sql = "select * from users where id=" + userID;
        List<User> users = jdbcTemplate.query(sql, new UserMapper());
        return users.size() > 0 ? users.get(0) : null;
    }

    public String changeStatus(String userID, String oldStatus){
        String newStatus = oldStatus.equals(STATUS_ONLINE) ? STATUS_OFFLINE : STATUS_ONLINE;
        jdbcTemplate.update(
                "update users set status = ? where id = ?",
                newStatus, userID);
        return  newStatus;

    }
    public List<User> getUsersByStatus(String status){
        String sql = "select * from users where status='" + status+"'";
        return jdbcTemplate.query(sql, new UserMapper());
    }
    class UserMapper implements RowMapper<User> {
        public User mapRow(ResultSet rs, int arg1) throws SQLException {
            User user = new User();
            user.setID(rs.getInt("id"));
            user.setFirstname(rs.getString("firstname"));
            user.setLastname(rs.getString("lastname"));
            user.setEmail(rs.getString("email"));
            user.setURI(rs.getString("URI"));
            user.setStatus(rs.getString("status"));
            return user;
        }
    }
}
