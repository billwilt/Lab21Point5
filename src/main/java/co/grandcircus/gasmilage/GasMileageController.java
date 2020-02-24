package co.grandcircus.gasmilage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GasMileageController {
	
	@RequestMapping("/")
	public ModelAndView showHome() {
		//System.out.println("hello");
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	@RequestMapping("/mileage-form")
	public ModelAndView showMileageForm() {
		return new ModelAndView("mileage-form");
	}
	
	@RequestMapping("/mileage-result")
	public ModelAndView showMileageResult(
			@RequestParam("mpg") int mpg,
			@RequestParam("distance") int distance,
			@RequestParam("gallons") int gallons) {
		
		//System.out.println("hello");
		int result = mpg * gallons;
		int resultDistance = result - distance;
		String canMakeTheTrip="";
		String textColor="";
		
		if (resultDistance <= 0 ) {
			canMakeTheTrip = "No you can not make the trip unless you get more gas.";
			textColor = "red";
		} else {
			canMakeTheTrip = "Yes you can make the trip.";
			textColor = "green";
		}
		
		ModelAndView mav = new ModelAndView("mileage-result");
		mav.addObject("mpg", mpg);
		mav.addObject("gallons", gallons);
		mav.addObject("distance", distance);
		mav.addObject("result", result);
		mav.addObject("textColor", textColor);
		mav.addObject("canMakeTheTrip", canMakeTheTrip);
		return mav;
	}


	
}
