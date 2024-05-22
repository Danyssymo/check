package uno.dos.tres.service.impl;

import uno.dos.tres.bean.AuthInfo;
import uno.dos.tres.bean.RegInfo;
import uno.dos.tres.bean.User;
import uno.dos.tres.bean.UserRoles;
import uno.dos.tres.dao.AuthDao;
import uno.dos.tres.dao.DaoException;
import uno.dos.tres.dao.DaoProvider;
import uno.dos.tres.service.ServiceException;
import uno.dos.tres.service.UserService;

public class UserServiceImpl implements UserService {

    private AuthDao authDao = DaoProvider.getInstance().getAuthDao();

    @Override
    public User signIn(AuthInfo authInfo) throws ServiceException {
        try {
            return authDao.signIn(authInfo);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

    @Override
    public void signUp(RegInfo regInfo) throws ServiceException {
        try {
            authDao.signUp(regInfo);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

    @Override
    public User rememberMe(String token) throws ServiceException {
        try {
            User user = authDao.checkToken(token);
            return user;
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

}
