//每个页面加载前先访问
$(function(){
	//获取客户端是否有EASYBUY_TICKET
	var ticket=$.cookie("EASYBUY_TICKET");
	if(!ticket){
		return ;//这个cookie不存在结束方法
	}
	$.ajax({
		                
						url:"http://www.huanletao.com/user/query/"+ticket,
						type:"GET",
						dataType:"json",
						success:function(result){
							                
						if(data.status == 200){
						var _data = JSON.parse(data.data);//jackson
						var html =_data.userName+"，欢迎来到欢乐淘！<a href=\"javascript:void(0)\" class=\"link-login\" onclick='logout()'>[退出]</a>  \|<a href=\"http://www.easymall.com/manage.html\" class=\"link-logout\">[后台]</a>";
						userId=_data.userId;
						$("#ECS_MEMBERZONE").html(html);
						}
						
					} ,
						   error:function(){
							alert("请求失败！");
						}
	         
	
	
});
});

