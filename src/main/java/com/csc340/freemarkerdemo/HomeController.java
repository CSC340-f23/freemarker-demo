package com.csc340.freemarkerdemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author sunny
 */
@Controller
public class HomeController {

    @GetMapping({"", "/home", "/", "checkoff"})
    public String home() {
        return "redirect:/goal/all";
    }
}
