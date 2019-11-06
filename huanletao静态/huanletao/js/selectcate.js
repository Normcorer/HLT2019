//			    var forms = $("#cate"); //获取forms表单节点
//			   var cate = new Array();
//            cate[0] = ['家用电器','手机数码','电脑办公'];
//            //创建城市数组
//            cate["0_1"] = ['大家电','生活电器','厨房电器']
//            cate["0_2"] = ['智能设备','数码配件','手机通讯']
//            cate["0_3"] = ['服务产品','电脑整机','电脑配件']
//            cate["0_1_1"] = ['平板电视','空调','冰箱']
//            cate["0_1_2"] = ['电风扇','冷风扇','净化器']
//            cate["0_1_3"] = ['电饭煲','电压力锅','豆浆机']
//            //创建区县数组
//            cate["0_2_1"] = ['智能手环','智能手表','智能眼镜']
//            cate["0_2_2"] = ['存储卡','读卡器','滤镜']
//            cate["0_2_3"] = ['手机','对讲机','ddd']
//            cate["0_3_1"] = ['上门服务','远程服务','电脑软件']
//            cate["0_3_2"] = ['笔记本','超极本','游戏本']
//            cate["0_3_3"] = ['cpu','主板','显卡']
//
//            //循环遍历 下标【0】的省份数组
//            for( i = 0 ; i <cate[0].length; i++){
//              var opt = document.createElement("option");//创建节点
//              opt.innerHTML = cate[0][i];//添加内容
//              forms.fCatelog.append("option value='1'>家用电器</option>")
//            }
//            //省份节点发生改变的时候触发的方法
//            forms.fCatelog.onchange = function(){
//              if (forms.fCatelog.selectedIndex !=0){//判断selectedIndex下标是否为0
//                  forms.sCatelog.innerHTML = "<option>请选择城市</option>"
//                  forms.tCatelog.innerHTML = "<option>请选择区县</option>"
//                  forms.sCatelog.disabled = false;// 不为0的情况下，解除城市选项的锁定
//                  fCatelogNum = forms.fCatelog.selectedIndex;
//                  for(var i = 0 ; i<cate["0_"+fCatelogNum].length;i++){
//                      var opt = document.createElement("option")
//                      opt.innerHTML = cate["0_"+fCatelogNum][i];
//                      forms.sCatelog.appendChild(opt)
//                  }
//              }else{
//                  forms.sCatelog.disabled = true;
//                  forms.tCatelog.disabled = true;
//                  forms.sCatelog.innerHTML = "<option>请选择城市</option>"
//                  forms.tCatelog.innerHTML = "<option>请选择区县</option>"
//              }
//            }
//              forms.sCatelog.onchange = function(){
//                  if (forms.sCatelog.selectedIndex !=0){
//                      forms.tCatelog.innerHTML = "<option>请选择区县</option>"
//                      forms.tCatelog.disabled = false;
//                      fCatelogNum = forms.fCatelog.selectedIndex;
//                      var numum = forms.sCatelog.selectedIndex;
//                      for(var i = 0 ; i<cate["0_" + fCatelogNum+"_"+numum].length;i++){
//                          var opt = document.createElement("option");
//                          opt.innerHTML = cate["0_"+fCatelogNum+"_"+numum][i];
//                          forms.tCatelog.appendChild(opt);
//                      }
//                  }else{
//                      forms.tCatelog.disabled = true;
//                      forms.tCatelog.innerHTML = "<option>请选择区县</option>"
//                  }
//
//              }
