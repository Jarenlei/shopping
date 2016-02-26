package cn.spring.entity;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class Commority {

    private int cid;
    
    private String brand;
    
	private String cname;
	
	private double price;

	private String intro;
	
	private String type;
	
	private String image;

	private List<String> funs;
	
	

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<String> getFuns() {
        return funs;
    }

    public void setFuns(List<String> funs) {
        this.funs = funs;
    }

    /* typeId表示的是某品牌的某种型号或机种 */
	private String typeId;

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Commority() {
		super();
	}
	
    public Commority(int cid, String brand, String cname, double price, String intro, String type) {
        super();
        this.cid = cid;
        this.brand = brand;
        this.cname = cname;
        this.price = price;
        this.intro = intro;
        this.type = type;
    }

    public Commority(String cname,String typeId) {
        super();
        this.cname = cname;
        this.typeId = typeId;
    }

    public Commority(String cname,String image,String intro) {
        super();
        this.cname = cname;
        this.intro = intro;
        this.image = image;
    }
}
