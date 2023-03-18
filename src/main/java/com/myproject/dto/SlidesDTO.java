package com.myproject.dto;

public class SlidesDTO extends AbstractDTO<SlidesDTO> {
	private String img;
	private String caption;
	private String content;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
