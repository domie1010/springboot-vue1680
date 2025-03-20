package com.entity;

public class Xuexijilu {
    private Integer id;
	private String jieduan;	private String nianji;	private String kemu;	private String shipinmingcheng;	private String xuexishichang;	private String xuexijindu;	private String xuexiren;	
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
    }	public String getXuexishichang() {
        return xuexishichang;
    }
    public void setXuexishichang(String xuexishichang) {
        this.xuexishichang = xuexishichang == null ? null : xuexishichang.trim();
    }	public String getXuexijindu() {
        return xuexijindu;
    }
    public void setXuexijindu(String xuexijindu) {
        this.xuexijindu = xuexijindu == null ? null : xuexijindu.trim();
    }	public String getXuexiren() {
        return xuexiren;
    }
    public void setXuexiren(String xuexiren) {
        this.xuexiren = xuexiren == null ? null : xuexiren.trim();
    }	
	
	
    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }
}
//   设置字段信息
