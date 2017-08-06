package technodom.dao;

import org.springframework.beans.factory.annotation.Autowired;
import technodom.util.User;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * Created by talgatpardabekov on 8/6/17.
 */
public class UserDaoImpl implements UserDao {
    @Autowired
    DataSource datasource;


    @Autowired
    JdbcTemplate jdbcTemplate;

    public String createUser(User user) {
        return null;
    }
    public User getUser(){
        return null;
    }
}
