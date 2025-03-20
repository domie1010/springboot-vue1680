package com.entity;

public class Kechengxinxi {
    private Integer id;
	private String jieduan;	private String nianji;	private String kemu;	private String shipinmingcheng;	private String xuexishipin;	private String lancishu;	
    private String addtime;

    

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
	
	public String getJieduan() {
        return jieduan;
    }
    public void setJieduan(String jieduan) {
        this.jieduan = jieduan == null ? null : jieduan.trim();
    }	public String getNianji() {
        return nianji;
    }
    public void setNianji(String nianji) {
        this.nianji = nianji == null ? null : nianji.trim();
    }	public String getKemu() {
        return kemu;
    }
    public void setKemu(String kemu) {
        this.kemu = kemu == null ? null : kemu.trim();
    }	public String getShipinmingcheng() {
        return shipinmingcheng;
    }
    public void setShipinmingcheng(String shipinmingcheng) {
        this.shipinmingcheng = shipinmingcheng == null ? null : shipinmingcheng.trim();
    }	public String getXuexishipin() {
        return xuexishipin;
    }
    public void setXuexishipin(String xuexishipin) {
        this.xuexishipin = xuexishipin == null ? null : xuexishipin.trim();
    }	public String getLancishu() {
        return lancishu;
    }
    public void setLancishu(String lancishu) {
        this.lancishu = lancishu == null ? null : lancishu.trim();
    }	
	
	
    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }
}
//   设置字段信息
