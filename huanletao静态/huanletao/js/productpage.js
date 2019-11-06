
        window.onload=function(){
            var localUrl=decodeURI(window.location.href);
            var queryPageParam=localUrl.substr(localUrl.lastIndexOf("?")+1);
            if(!queryPageParam.match("^page=[0-9]*&rows=[0-9]*$")){
                alert("长点心，参数不对，是page=&row=吗,按照默认1,5来查吧");
                queryPages("page=1&rows=5");
                return;
            }
            queryPages(queryPageParam);
          }
        function queryPages(param){
           
            $.ajax({
                url:"http://www.easymall.com/products/pageManage?"+param,
                dataType:"json",
                type:"POST",
                success:function(data){
                    // alert("好啊3");
                    if(data.rows.length>0){

                        $.each(data.rows,function(index, product){
                            var product_html="product-info.html?productId="+product.productId;
                            var productId=product.productId;
                            $("#prod_content").append("<div id='prod_div'><a href="+product_html+"><img src='"+product.productImgurl+"'width=\"200px\" height=\"200px\"></img> </a><div id='prod_name_div'><a href="+product_html+">"+product.productName+"</a></div><div id='prod_price_div'>￥"+product.productPrice+"元</div><div><div id='gotocart_div'><a href='javascript:void(0)' onclick='addCartOne(\""+productId+"\",\""+userId+"\")'>加入购物车</a></div><div id='say_div'>库存"+product.productNum+"件</div></div></div>");
                        })
                    }
                },
                error : function(){
                    alert("请求失败");
                }
            });
        }
        function sleep(delay) {
            var start = (new Date()).getTime();
            while ((new Date()).getTime() - start < delay) {
                continue;
            }
        }
