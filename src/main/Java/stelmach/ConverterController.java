package stelmach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConverterController {


    @RequestMapping("/length")
    public String length() {
        return "length";
    }

    @RequestMapping("/weight")
    public String weight() {
        return "weight";
    }

    @RequestMapping("/volume")
    public String volume() {
        return "volume";
    }

    @RequestMapping("/energy")
    public String energy() {
        return "energy";
    }



}
