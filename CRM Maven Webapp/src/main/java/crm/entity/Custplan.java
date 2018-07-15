package crm.entity;

import java.util.Date;

public class Custplan {
	private int planid;
	private String gongsi;
	private String gaiyao;
	private String lianxiren;
	private String miaoshu;
	private Users chuangjianren ;
	private String laiyuan;
	private String jilv;
	private Date zhixingshijian;
	private Users zhixingren;
	private String dianhua;
	private Date chuangjianshijian;
	private String zhaungtai;
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public String getGongsi() {
		return gongsi;
	}
	public void setGongsi(String gongsi) {
		this.gongsi = gongsi;
	}
	public String getGaiyao() {
		return gaiyao;
	}
	public void setGaiyao(String gaiyao) {
		this.gaiyao = gaiyao;
	}
	public String getLianxiren() {
		return lianxiren;
	}
	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}
	public String getDianhua() {
		return dianhua;
	}
	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	public String getZhaungtai() {
		return zhaungtai;
	}
	public void setZhaungtai(String zhaungtai) {
		this.zhaungtai = zhaungtai;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public Users getChuangjianren() {
		return chuangjianren;
	}
	public void setChuangjianren(Users chuangjianren) {
		this.chuangjianren = chuangjianren;
	}
	public String getLaiyuan() {
		return laiyuan;
	}
	public void setLaiyuan(String laiyuan) {
		this.laiyuan = laiyuan;
	}
	public String getJilv() {
		return jilv;
	}
	public void setJilv(String jilv) {
		this.jilv = jilv;
	}
	public Date getZhixingshijian() {
		return zhixingshijian;
	}
	public void setZhixingshijian(Date zhixingshijian) {
		this.zhixingshijian = zhixingshijian;
	}
	public Users getZhixingren() {
		return zhixingren;
	}
	public void setZhixingren(Users zhixingren) {
		this.zhixingren = zhixingren;
	}
	public Date getChuangjianshijian() {
		return chuangjianshijian;
	}
	public void setChuangjianshijian(Date chuangjianshijian) {
		this.chuangjianshijian = chuangjianshijian;
	}
	
}
