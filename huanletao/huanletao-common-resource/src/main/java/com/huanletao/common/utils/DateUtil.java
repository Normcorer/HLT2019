package com.huanletao.common.utils;

import java.util.Calendar;
import java.util.Date;

public class DateUtil {

	public static Date addDays(Date date,int i) //获取当前日期前几天或后几天
	{
	      
		   Calendar calendar = Calendar.getInstance();  
		     calendar.setTime(date);  
		     calendar.add(Calendar.DAY_OF_MONTH, i);  
		     date = calendar.getTime();  
		     return date;
		     
	}
	
}
