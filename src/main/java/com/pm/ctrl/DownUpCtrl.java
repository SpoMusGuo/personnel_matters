package com.pm.ctrl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/file")
@Controller
public class DownUpCtrl {

	// 跳转到下载Excel模板界面
	@RequestMapping("/gotodown")
	public String goToDown() {
		return "down";
	}

	// 跳转到上传Excel模板界面
	@RequestMapping("/gotoup")
	public String goToUp() {
		return "up";
	}

	// 下载文件
	@RequestMapping("/down")
	public void down(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		String filepath = null;
		if (type.equals("one")) {
			filepath = request.getServletContext().getRealPath("/excel") + File.separator + "保险信息表.xls";
		}

		if (type.equals("two")) {
			filepath = request.getServletContext().getRealPath("/excel") + File.separator + "保险类型表.xls";
		}

		if (type.equals("three")) {
			filepath = request.getServletContext().getRealPath("/excel") + File.separator + "个人所得税设置.xls";
		}

		if (type.equals("four")) {
			filepath = request.getServletContext().getRealPath("/excel") + File.separator + "计件产品设置.xls";
		}

		InputStream is = null;
		OutputStream os = null;
		try {
			is = new BufferedInputStream(new FileInputStream(filepath));
			String excel = UUID.randomUUID().toString() + ".xls";
			// 设置文件下载头
			response.addHeader("Content-Disposition", "attachment;filename=" + excel);
			// 设置文件ContentType类型,这样设置,会自动判断下载文件类型
			response.setContentType("multipart/form-data");
			os = new BufferedOutputStream(response.getOutputStream());

			while (true) {
				int len = is.read();
				if (len == -1) {
					break;
				}
				os.write(len);
				os.flush();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				is.close();
				os.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	}

}
