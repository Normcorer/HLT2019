package cn.huanletao.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huanletao.common.pojo.User;


public interface UserMapper {

	public int selectUserCountByUserName(String userName);

	public void insertRegisterUser(User user);

	public User selectUserCountByUsernameAndPassword(@Param("userName")String userName, @Param("userPassword")String userPassword);

	public User selectUserByPhone(String userPhone);

	public int selectUserCountByUserPhone(String userPhone);

	public List<User> getUserByIDS(List a);

	public int selectUserCounts();

	public List<User> selectUserList(@Param("start")int start,@Param("rows")Integer rows);

	public void setLastLoginTime(@Param("userId")String userId, @Param("lastLoginTime")Date lastLoginTime);




}
