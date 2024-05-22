package uno.dos.tres.dao.impl;

import uno.dos.tres.bean.AuthInfo;
import uno.dos.tres.bean.RegInfo;
import uno.dos.tres.bean.User;
import uno.dos.tres.bean.UserRoles;
import uno.dos.tres.dao.AuthDao;
import uno.dos.tres.dao.DaoException;

public class SQLAuthDao implements AuthDao {
    @Override
    public User checkToken(String token) throws DaoException {
        /*
		try {

		}catch(SQLException e) {
			throw new DaoException(e);
		}
		*/
        return new User("Dany", UserRoles.ADMIN);
    }

    @Override
    public User signIn(AuthInfo info) throws DaoException {
        if ("user@mail.ru".equals(info.getLogin())) {
            return new User("Dany", UserRoles.USER);
        } else if ("admin@mail.ru".equals(info.getLogin())) {
            return new User("Justin", UserRoles.ADMIN);
        } else {
            return null;
        }

    }

    @Override
    public void signUp(RegInfo regInfo) throws DaoException {
//запись данных в бд
    }
}
