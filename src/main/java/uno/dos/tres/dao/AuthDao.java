package uno.dos.tres.dao;

import uno.dos.tres.bean.AuthInfo;
import uno.dos.tres.bean.RegInfo;
import uno.dos.tres.bean.User;

public interface AuthDao {

    User checkToken(String token) throws DaoException;
    User signIn(AuthInfo info) throws DaoException;
    void signUp(RegInfo regInfo) throws DaoException;

}
