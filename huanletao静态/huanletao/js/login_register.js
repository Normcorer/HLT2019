$(function() {
	//注册的js
	//验证用户名存不存在
	$("input[name=username]").blur(
		function() {
			var userName = $(this).val();

			if(!formObj.checkNull("username", "用户名不能为空")) {
				setMsg("username", "用户名不能为空");
			} else {

				$.ajax({
					url: "http://www.huanletao.com/user/checkUserName",
					type: "post",
					data: {
						"userName": userName
					},
					dataType: "json",
					success: function(result) {
						if(result.status != 200) {
							$("input[name=username]").next("span").text(result.msg).css("color", "red");
					
						} else {

							$("input[name=username]").next("span").text("用户名可用").css("color", "green");
							
						}
					},
					error: function() {
						alert("请求失败！");
					}
				});
			}
		});
	$("input[name=phone]").blur(
		function() {
				var userPhone = $(this).val();

				if(!formObj.checkNull("phone", "手机号不能为空")) {
					formObj.setMsg("phone", "手机号不能为空");
				} else {

					$.ajax({
						url: "http://www.huanletao.com/user/checkUserPhone",
						type: "post",
						data: {
							"userPhone": userPhone
						},
						dataType: "json",
						success: function(result) {
							if(result.status != 200) {
								$("input[name=phone]").next("span").text(result.msg).css("color", "red");
							} else {

								$("input[name=phone]").next("span").text("手机号可用").css("color", "green");
							}
						},
						error: function() {
							alert("请求失败！");
						}
					});
				}
			}
	);
	//给注册表单注册submit事件
	$("#register_gr").click(function() {
		return register();
	});
	//注册点击的获取验证码按钮
	$('#register_get_yanzhengma').click(function() {
		formObj.checkNull("phone", "请输入手机号"); //保证获取验证码的手机号不为空
		var userPhone = $("form input[name=phone]").val();
		//访问后台获取验证码的方法
		$.ajax({

			url: "http://www.huanletao.com/user/getPhoneYANzhengma",
			type: "post",
			data: {
				"userPhone": userPhone
			},
			dataType: "json",
			success: function(result) {
				alert(result.msg);
			},
			error: function() {
				alert("请求失败！");
			}
		});

	});
	//登录点击获取验证码按钮
	$('#login_get_yanzhengma_1').click(function() {
	formObj.checkNull("login_phone", "请输入手机号"); //保证获取验证码的手机号不为空
		var userPhone = $("#login_phone").val();
		//访问后台获取验证码的方法
		$.ajax({

			url: "http://www.huanletao.com/user/getPhoneYANzhengma",
			type: "post",
			data: {
				"userPhone": userPhone
			},
			dataType: "json",
			success: function(result) {
                 alert(result.msg);
			},
			error: function() {
				alert("请求失败！");
			}
		});

	});
	//登录的js 手机号登录
	$("#toIndex_phone_1").click(function() {

		var userPhone = $("#login_phone").val();
		var yanzhengma = $("#login_phone_yanzhengma").val();
		//提交账户登录表单
		$.ajax({
			url: "http://www.huanletao.com/user/userPhoneLogin",
			type: "post",
			data: {
				"userPhone": userPhone,
				"yanzhengma": yanzhengma,
			},
			dataType: "json",
			success: function(result) {
				if(result.status == 200) {
					//跳转会首页
					window.location.href = "./index.html";

				} else {
					//验证码错误,号码不存在等错误
					alert(result.msg);
				}

			},
			error: function() {
				alert("请求失败！");
			}
		});

	});
	
});
//用户登录在style_xwq.js里面
     //登出按钮
		function logout(){
			$.ajax({
			   url:"http://www.huanletao.com/user/logout",
			   data:{"ticket":$.cookie("EASYBUY_TICKET")},
			   dataType:"json",
			   type:"POST",
			   success:function (data) {
				   if(data.status==200){
					   window.location.href="http://www.huanletao.com/";
					   return;
				   }else{
					   alert("登出失败");
					   return;
				   }
			   },
			   erro:function () {
				   alert("登出请求发送失败");
			   }
			});
		}
function register() {
	var userName = $("form input[name=username]").val();
	var userPassword = $("form input[name=password]").val();
	var userPassword2 = $("form input[name=password2]").val();
	var userEmail = $("form input[name=email]").val();
	var userPhone = $("form input[name=phone]").val();
	var yanzhengma = $("form input[name=register_yanzhengma]").val();
	var flag = formObj.checkForm();
		
	if(flag) {
		$.ajax({
			url: "http://www.huanletao.com/user/register",
			type: "post",
			data: {
				"userName": userName,
				"userPassword": userPassword,
				"userEmail": userEmail,
				"userPhone": userPhone,
				"yanzhengma": yanzhengma,
			},
			dataType: "json",
			success: function(result) {
				if(result.status == 200) {
					alert("注册成功,转向登录页面")
					window.location.href = "./login.html";
				} else {
					alert(result.msg);
				}
			},
			error: function() {
				alert("请求失败！");
			}
		});
	}

	return false;
}
var formObj = {
	//这是个人注册时页面js的校验
	"checkForm": function() {
		var canSub = true;
		//1.获取参数
		//2.作出校验
		//非空校验
		canSub = this.checkNull("username", "用户名不能为空") && canSub;
		canSub = this.checkNull("password", "密码不能为空") && canSub;
		canSub = this.checkNull("password2", "确认密码不能为空") && canSub;
		canSub = this.checkNull("email", "邮箱不能为空") && canSub;
		canSub = this.checkNull("phone", "手机号不能为空") && canSub;
		canSub = this.checkNull("register_yanzhengma", "验证码不能为空") && canSub;
		//密码一致性校验
		canSub = this.checkPassword() && canSub;
		//邮箱格式校验
		canSub = this.checkEmail() && canSub;
		return canSub;
	},

	"checkNull": function(name, msg) {
		//非空校验
		var tag = $("input[name='" + name + "']").val();
		//清空操作
		//$("input[name='"+name+"']").nextAll("span").text("");
		this.setMsg(name, "");
		if(tag == "") {
			//$("input[name='"+name+"']").nextAll("span").text(msg).css("color","red");
			this.setMsg(name, msg);
			return false;
		}
		return true;
	},
	"checkPassword": function() {
		//密码一致性校验
		var password = $("input[name='password']").val();
		var password2 = $("input[name='password2']").val();
		if(password != "" && password2 != "" && password != password2) {
			this.setMsg("password2", "两次密码不一致");
			return false;
		}
		return true;
	},
	"checkEmail": function() {
		//lishuai@tedu.com
		var reg = /\w+@\w+(\.\w+)+/;
		var email = $("input[name='email']").val();
		if(email != "" && !reg.test(email)) {
			this.setMsg("email", "邮箱格式不正确");
			return false;
		}
		return true;
	},
	"setMsg": function(name, msg) {
		//消息提示 span
		$("input[name='" + name + "']").next("span").text(msg).css("color", "red");
		if("register_yanzhengma" == name)
			$("input[name='" + name + "']").nextAll("span").text(msg).css("color", "red");
	}

};
