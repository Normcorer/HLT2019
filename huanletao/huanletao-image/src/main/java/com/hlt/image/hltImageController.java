package com.hlt.image;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


import com.hlt.service.hltImageService;
import com.huanletao.common.vo.PicUploadResult;



@RestController

public class hltImageController {
@Autowired
private hltImageService hltImageService;
		@RequestMapping("pic/upload")
		public PicUploadResult picUpload(MultipartFile pic){

			return hltImageService.picUpload(pic);
		}
}
