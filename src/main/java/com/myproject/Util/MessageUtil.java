package com.myproject.Util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class MessageUtil {

	public Map<String, String> getMessage(String message) {
		Map<String, String> result = new HashMap<>();
		if (message.equals("update_success")) {
			result.put("message", "Update success");
			result.put("alert", "success");
		} else if (message.equals("insert_success")) {
			result.put("message", "Insert success");
			result.put("alert", "success");
		} else if (message.equals("delete_success")) {
			result.put("message", "Delete success");
			result.put("alert", "success");
		} else if (message.equals("order_success")) {
			result.put("message", "Ä�áº·t hÃ ng thÃ nh cÃ´ng <br> Cáº£m Æ¡n báº¡n Ä‘Ã£ sá»­ dá»¥ng dá»‹ch vá»¥ cá»§a chÃºng tÃ´i");
			result.put("alert", "success");
		}else if (message.equals("error_system")) {
			result.put("message", "Error system");
			result.put("alert", "danger");
		}else if (message.equals("regist-faill")) {
			result.put("message", "Tài khoản hoặc email đã tồn tại!");
			result.put("alert", "warning");
		}else if (message.equals("regist-success")) {
			result.put("message", "Đăng ký thành công!");
			result.put("alert", "success");
		}
		
		return result;
	}
}
