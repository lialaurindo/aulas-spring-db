package com.helloworld.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello-world")

public class HelloWorldController {
	
    @GetMapping
    public String helloworld() {
        return "Olá, Mundo!<br>Este é o primeiro exercício sobre Spring Boot :)";
    }

    @GetMapping("/bsm")
    public String bsm() {
        return "<br>Estudo sobre BSMs:<br/>"+
                "<br>- Persistência<br/>" +
                "<br>- Mentalidade de Crescimento<br/>" +
                "<br>- Orientação ao Futuro<br/>" +
                "<br>- Responsabilidade Pessoal<br/>" +
                "<br>- Trabalho em Equipe<br/>" +
                "<br>- Comunicação<br/>" +
                "<br>- Comunicação Não Violenta<br/>" +
                "<br>- Atenção aos Detalhes<br/>" +
                "<br>- Proatividade<br/>";
    }

    @GetMapping("/objetivo")
    public String objetivo() {
        return "<br>Objetivos de Aprendizagem da semana:<br/>" +
                "<br>Spring Boot<br/>" +
                "<br>Estudo de Caso 2: Entregável Urgente<br/>"+
                "<br>Exercícios e Projeto integrador<br/>";
    }

}
