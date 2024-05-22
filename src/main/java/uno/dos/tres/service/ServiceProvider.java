package uno.dos.tres.service;

import uno.dos.tres.service.cookies.WordEncryptionImpl;
import uno.dos.tres.service.impl.NewsServiceImpl;
import uno.dos.tres.service.impl.UserServiceImpl;

public class ServiceProvider {

    private static final ServiceProvider instance = new ServiceProvider();

    private UserService userService = new UserServiceImpl();
    private NewsService newsService = new NewsServiceImpl();
    private WordEncryptionImpl wordEncryption = new WordEncryptionImpl();

    private ServiceProvider() {
    }

    public static ServiceProvider getInstance() {
        return instance;
    }

    public UserService getUserService() {
        return userService;
    }

    public NewsService getNewsService() {
        return newsService;
    }

    public WordEncryptionImpl getWordEncryption() {
        return wordEncryption;
    }
}
