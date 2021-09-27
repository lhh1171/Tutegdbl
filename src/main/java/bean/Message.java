package bean;
public class Message {
    //存储留言标题
    private String title;

    private String content;					//存储留言内容

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

}
