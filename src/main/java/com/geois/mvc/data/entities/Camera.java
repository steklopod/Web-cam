package com.geois.mvc.data.entities;


public class Camera {
    private Long cameraId;
    private String camera_IP;

    public Camera(String camera_IP) {
        this.camera_IP = camera_IP;
    }

    public Camera() {
    }

    public Camera(Long cameraId, String camera_IP) {
        this.cameraId = cameraId;
        this.camera_IP = camera_IP;
    }

    public Long getCameraId() {
        return cameraId;
    }

    public void setCameraId(Long cameraId) {
        this.cameraId = cameraId;
    }

    public String getCamera_IP() {
        return camera_IP;
    }

    public void setCamera_IP(String camera_IP) {
        this.camera_IP = camera_IP;
    }

    @Override
    public String toString() {
        return "Camera{" +
                "camera_IP='" + camera_IP + '\'' +
                '}';
    }
}
