package com.iisquare.jees.framework.util;

import java.io.IOException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 操作系统工具类
 */
public class OSUtil {
	static Log log = LogFactory.getLog(OSUtil.class);
	
	/**
	 * 操作系统类型
	 */
	public enum OSType {
		Windows, Linux
	}
	
	public static OSType getCurrentOS() {
		String osName = System.getProperty("os.name");
		if(-1 != osName.lastIndexOf("Win")) {
			return OSType.Windows;
		}if(-1 != osName.lastIndexOf("Linux")) {
			return OSType.Linux;
		}
		return null;
	}
	
	public static boolean exec(String command) {
		return exec(command, getCurrentOS());
	}
	
	public static boolean exec(String command, OSType osType) {
		try {
			Runtime rt = Runtime.getRuntime();
			if(osType.equals(OSType.Windows)) {
				command = "cmd /c " + command;
				rt.exec(command);
			} else if(osType.equals(OSType.Linux)){
				rt.exec(new String[]{"sh", "-c", command});
			} else {
				return false;
			}
			return true;
		} catch (IOException e) {
			log.error(e.getMessage());
			return false;
		}
	}
}
