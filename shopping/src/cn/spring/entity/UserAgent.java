package cn.spring.entity;


public enum UserAgent { 
    
    NULL("0"),
    
    MANAGER("3"),
    
    SELLER("2"),
    
    USER("1");
    
    private String index;

    private UserAgent(String index){
        this.index=index;
    }
    
    public String toCode(){
        return this.index;
    }
    
}
