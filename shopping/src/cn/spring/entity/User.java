package cn.spring.entity;

import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class User {

    private int uid;

    private String uname;

    private String password;

    private int delflag;

    private int manager;

    private Date registtime;

    private Date birth;
    
    private String umail;

    /*
     * * 0代表女，1 代表男
     * */
    private int sex;
    
    private String telphone;

    private String idcard;
    
    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public User() {
        super();
    }

    public User(String uname, String password) {
        super();
        this.uname = uname;
        this.password = password;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getDelflag() {
        return delflag;
    }

    public void setDelflag(int delflag) {
        this.delflag = delflag;
    }

    public int getManager() {
        return manager;
    }

    public void setManager(int manager) {
        this.manager = manager;
    }

   
    public String getUmail() {
        return umail;
    }

    public void setUmail(String umail) {
        this.umail = umail;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User [uid=" + uid + ", uname=" + uname + ", password=" + password + ", delflag=" + delflag + ", manager=" + manager + ", registtime=" + registtime + ", birth=" + birth + ", umail="
                + umail + ", sex=" + sex + ", telphone=" + telphone + ", idcard=" + idcard + "]";
    }

    public Date getRegisttime() {
        return registtime;
    }

    public void setRegisttime(Date registtime) {
        this.registtime = registtime;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public User(String uname, String password, Date registtime, Date birth, String umail, int sex, String telphone) {
        super();
        this.uname = uname;
        this.password = password;
        this.registtime = registtime;
        this.birth = birth;
        this.umail = umail;
        this.sex = sex;
        this.telphone = telphone;
    }

}
