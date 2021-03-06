package com.niit.jewellcart.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {
private static final Logger logger = LoggerFactory
.getLogger(FileUploadController.class);

@RequestMapping("/Upload")
public String upload()
{
	return "Upload";
}
@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
public @ResponseBody
String uploadFileHandler(@RequestParam("name") String name,
@RequestParam("file") MultipartFile file) {

if (!file.isEmpty()) {
try {
	byte[] bytes = file.getBytes();

	// Creating the directory to store file
	File files=new File("C:\\Users\\NANDHINI SELVARAJAN\\Desktop\\jewellcart\\src\\main\\webapp\\WEB-INF\\resource\\image");
	

	// Create the file on server
	File serverFile = new File(files.getAbsolutePath()
			+ File.separator + name);
	BufferedOutputStream stream = new BufferedOutputStream(
			new FileOutputStream(serverFile));
	stream.write(bytes);
	stream.close();

	logger.info("Server File Location="
			+"C:\\Users\\NANDHINI SELVARAJAN\\Desktop\\jewellcart\\src\\main\\webapp\\WEB-INF\\resource\\image");

	return "You successfully uploaded file=" +serverFile.getAbsolutePath();
} catch (Exception e) {
	return "You failed to upload " + name + " => " + e.getMessage();
}
} else {
return "You failed to upload " + name
		+ " because the file was empty.";
}
}

}