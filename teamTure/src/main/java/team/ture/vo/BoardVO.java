package team.ture.vo;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {

	private int bidx;
	private String bsubject;
	private String bcontent;
	private String bwriter;
	private String bwdate;
	private String filename;
	private MultipartFile newfile;
	
	
	
	
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public MultipartFile getNewfile() {
		return newfile;
	}
	public void setNewfile(MultipartFile newfile) {
		this.newfile = newfile;
	}
	public int getBidx() {
		return bidx;
	}
	public void setBidx(int bidx) {
		this.bidx = bidx;
	}
	public String getbsubject() {
		return bsubject;
	}
	public void setbsubject(String bsubject) {
		this.bsubject = bsubject;
	}
	public String getbcontent() {
		return bcontent;
	}
	public void setbcontent(String bcontent) {
		this.bcontent = bcontent;
	}	
	public String getbwriter() {
		return bwriter;
	}
	public void setbwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getbwdate() {
		return bwdate;
	}
	public void setbwdate(String bwdate) {
		this.bwdate = bwdate;
	}
	
	
	
		
}
