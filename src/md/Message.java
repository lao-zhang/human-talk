package md;

public class Message {
	private String date;
	private String time;
	private String id;
	private String type;
	private String content;
	public Message() {
		
	}
	public Message(String date,String time,String id,String type,String content) {
		this.date = date;
		this.time = time;
		this.id = id;
		this.type = type;
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
	 
}
