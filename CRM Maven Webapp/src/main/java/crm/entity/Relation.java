package crm.entity;

import java.util.List;

public class Relation {
	
	private List<Authority> aulist;
	private Role role;

	public List<Authority> getAulist() {
		return aulist;
	}
	public void setAulist(List<Authority> aulist) {
		this.aulist = aulist;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
}
