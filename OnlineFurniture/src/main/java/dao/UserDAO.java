package dao;



import model.UserModel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class UserDAO {

    Map<Integer, UserModel> usersDB = new HashMap<>();

    {
        usersDB.put(1, new UserModel("krysngabi", "krysley2012"));
        usersDB.put(2, new UserModel("zena", "munyaga"));
        usersDB.put(3, new UserModel("abenezer", "mekonnen"));
        usersDB.put(4, new UserModel("abeba", "ibrahim"));
    }

    public void addUser(UserModel user){
        usersDB.put(getId(), user);
    }

    public List<UserModel> getAllUsers(){
        return new ArrayList<>(usersDB.values());
    }
    public int getId() {
        return usersDB.size()+1;
    }
}
