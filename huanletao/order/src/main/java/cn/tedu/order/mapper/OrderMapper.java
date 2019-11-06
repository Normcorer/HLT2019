package cn.tedu.order.mapper;

import java.util.List;

import com.huanletao.common.pojo.Order;
import com.huanletao.common.pojo.OrderItem;


public interface OrderMapper {

	List<Order> selectOrdersByUserId(String userId);

	void insertOrder(Order order);

	void deleteOrderByOrderId(String orderId);

	void updatePaystate(String orderId);

	List<OrderItem> queryItemsById(String orderId);

	List<Order> selectOrdersByUserId1(String userId);

}
