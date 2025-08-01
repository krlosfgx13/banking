package com.project.banking.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
@RequestMapping("/api/host")
public class HostInfoController {

    @GetMapping("/info")
    public String allAccess() throws UnknownHostException {
        return "Host: " + InetAddress.getLocalHost().getHostName();
    }
}
