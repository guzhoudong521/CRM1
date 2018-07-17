package crm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import crm.entity.AuthorDetail;
import crm.entity.Authority;
import crm.entity.Relation;

@Controller
@RequestMapping("/au")
public class AuthorityAction {

	@RequestMapping("/t")
	public String test(Relation rn){
		System.out.println("________123123________");
		System.out.println("____2142141244124124214124________");
		for(Authority au:rn.getAulist())
		{
			System.out.println("___________________");
			System.out.println("___________________");
			System.out.println("___________________");
			System.out.println("___________________");
			System.out.println(au.getAid());
			for(AuthorDetail ad:au.getList()){
				System.out.println("\t"+ad.getAuid());
			}
		}
		
		return "crm_sale/opp/editx";
	}
}
