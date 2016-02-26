package cn.spring.util;

import java.io.InputStream;
import java.util.Properties;


public class DBUtil {
   InputStream  proper=DBUtil.class.getClassLoader().getResourceAsStream("resources/jdbc.properties");

}
