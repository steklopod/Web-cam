package com.geois.mvc.controllers;

import com.geois.mvc.data.services.CameraServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    CameraServise cameraServise;

    @RequestMapping("/")
    public String goHome(Model model) {
        model.addAttribute("camera1", cameraServise.getIp(0));
        model.addAttribute("camera2", cameraServise.getIp(1));
        model.addAttribute("camera3", cameraServise.getIp(3));
        return "video";
    }

}
