package de.qaware.playground.god;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GodController {
    @RequestMapping("/")
    public String index() {
        return "<b>Oh my god!!! Whattttt? Haa!<b/>";
    }
}