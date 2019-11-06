package com.huanletao.common.utils;

public class StringUtils {
//字符串转二进制
public static String StringToBarry(String str)
{
	if(str==null)
	{
		return null;
	}
    char[] strChar=str.toCharArray();
    String result="";
    for(int i=0;i<strChar.length;i++){

        String str2="00000000"+Integer.toBinaryString(strChar[i]);
        result+=str2.substring(str2.length()-8,str2.length());
    }
    return result;
}
}
