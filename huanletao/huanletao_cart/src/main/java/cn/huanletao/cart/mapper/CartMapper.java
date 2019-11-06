package cn.huanletao.cart.mapper;

import java.util.List;

import com.huanletao.common.pojo.Cart;
import com.huanletao.common.vo.SysResult;



public interface CartMapper {

	List<Cart> selectCartsByUserId(String userId);

	Cart selectExistByUserIdAndProductId(Cart cart);

	void updateCartNumByUserIdAndProductId(Cart cart);

	void insertCart(Cart cart);

	void deleteCartByUserIdAndProductId(Cart cart);

	void deleteAllCart();



}
