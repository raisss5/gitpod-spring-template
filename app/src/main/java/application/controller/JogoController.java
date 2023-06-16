package application.controller;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

public class JogoController {
    
}

@Controller
@RequestMapping("/jogo")
public class JogoController {
    private JogoRepository jogoRepo;

@RequestMapping("/list")
public Spring list(Model model) {
    model.addAttribute("jogos", jogoRepo.findAll());
    return "/livro/list";
}

@RequestMapping("/insert")
public String insert (){
    return "/livro/insert";
}

@RequestMapping(value = "/insert", method = RequestMethod.POST)
public String insert(
    @RequestParam("titulo") String titulo,
    @RequestParam("isbn") String isbn) {
    Jogo jogo= new Jogo();
    jogo.setTitulo(titulo);
    jogo.setIsbn(isbn);

    livroRepo.save(jogo);
    return "redirect:/jogo/list";
}

@RequestMapping("/update")
public String update(Model model, @RequestParam("id") int id) {
    Optional<Jogo> jogo = jogoRepo.findById(id);

    if(livro.isPresent()) {
        model.addAttribute("jogo", jogo.get());
        return "/jogo/update";
    }

    return "redirect://list";
}




























}
