package com.geois.mvc.data.services;

import com.geois.mvc.data.entities.Camera;
import java.util.LinkedList;
import java.util.List;


public class CameraServise {
    private List<Camera> cameras = new LinkedList<>();

    public CameraServise(){
        this.cameras.add(new Camera(1L,"176.192.43.238:80"));
        this.cameras.add(new Camera(2L, "87.185.98.178:8001"));
        this.cameras.add(new Camera(3L,"95.215.176.83:8084"));
        this.cameras.add(new Camera("<img width=\"300\" height=\"300\"class=\"img-rounded\"src=\"http://95.215.176.83:8084/mjpg/video.mjpg?COUNTER\"/>"));
    }

    public String getIp(Integer id){
        String IP = cameras.get(id).getCamera_IP();
        return IP;
    }
}
