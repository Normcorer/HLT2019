package com.hlt.service;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.huanletao.common.utils.UploadUtil;
import com.huanletao.common.vo.PicUploadResult;



@Service
public class hltImageService {
	@Value("${diskpath}")
	private String path;
	@Value("${urlPath}")
	private String urlPath;
	public PicUploadResult picUpload(MultipartFile pic) {
		// TODO Auto-generated method stub
				//准备一个返回的对象
				PicUploadResult result = new PicUploadResult();
				try{
					//文件名称的校验，拿到原名称
					String oldName = pic.getOriginalFilename();
					String extName = oldName.substring(oldName.lastIndexOf("."));
					//判断后缀是否合法
					if (!extName.matches(".(png|jpg|gif)$")) {
						result.setError(1);
						return result;
					}
					//使用工具类，生成一个多级路径地址，以upload开始
					String dir = "/"+UploadUtil.getUploadPath(oldName, "upload")+"/";
					//创建文件夹，文件夹可能存在可能不存在
					File _dir = new File(path+dir);
					if (!_dir.exists()) {//文件夹不存在
						_dir.mkdirs();
					}
					//重命名文件
					String fileName = UUID.randomUUID().toString()+extName;
					//可以将文件输出，将这个名称作为文件存储图片数据
					pic.transferTo(new File(path+dir+fileName));
					//result封装url地址
					String url = urlPath+dir+fileName;
					result.setUrl(url);
					return result;
				}
				catch (Exception e) {
					// TODO: 出现异常
					e.printStackTrace();
					result.setError(1);
					return result;
				}

	}

}
