package com.myproject.Util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class MessageUtil {

	public Map<String, String> getMessage(String message) {
		Map<String, String> result = new HashMap<>();
		if (message.equals("update_success")) {
			result.put("message", "Cập nhật thành công");
			result.put("alert", "success");
		} else if (message.equals("insert_success")) {
			result.put("message", "Thêm thành công");
			result.put("alert", "success");
		} else if (message.equals("delete_success")) {
			result.put("message", "Xóa thành công");
			result.put("alert", "success");
		} else if (message.equals("order_success")) {
			result.put("message", "Đặt hàng thành công <br> Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi");
			result.put("alert", "success");
		}else if (message.equals("error_system")) {
			result.put("message", "Lỗi!");
			result.put("alert", "danger");
		}
		return result;
	}
}
